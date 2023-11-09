task hello {
  command {
            echo "Hello Bacth!  Welcome to Cromwell . . . on Google Cloud!"
            nvidia-smi
  }
  output {
    File testout = stdout()
  }
  runtime {
    docker: "nvidia/cuda:11.3.1-devel-ubuntu20.04"
    gpuType: "nvidia-l4"
    gpuCount: 2
    zones: ["us-central1-a"]
  }
}
workflow wf_hello {
  call hello
}
