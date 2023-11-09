# GCP_Batch_Cromwell
sample Cromwell usage with GCP Batch

jar file - we are using a self-compiled version of jar which has the Google Batch fix and GPU support which is not yet in the main branch. 
date: Nov 9, 2023

After installing java and download the jar file. These command can be executed: 

Hello world example:
```
java -Dconfig.file=gcpbatch.conf -jar cromwell-87-cc50a1f-SNAP.jar run hello.wdl -i hello.inputs
```
deepVariant_WGS wdl example:
```
java -Dconfig.file=gcpbatchillumina.conf -jar cromwell-87-cc50a1f-SNAP.jar run deepVariant_WGS.wdl
```

GPU example - L4:
l4 GPUs is associated with specific machine type: g2. Users do not need to specific the machine type in WDL file. 
```
java -Dconfig.file=gcpbatch.conf -jar cromwell-87-cc50a1f-SNAP.jar run hello-gpu-l4.wdl
```

GPU example - A100:
a100 GPUs is associated with specific machine type: a2. Users do not need to specific the machine type in WDL file. 
```
java -Dconfig.file=gcpbatch.conf -jar cromwell-87-cc50a1f-SNAP.jar run hello-gpu-a100.wdl
```
