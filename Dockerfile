FROM nvidia/cuda:9.0-base
RUN apt-get update && apt-get -y upgrade && apt-get install -y wget bzip2
RUN wget https://repo.continuum.io/miniconda/Miniconda3-3.7.0-Linux-x86_64.sh -O ~/miniconda.sh && bash ~/miniconda.sh -b -p $HOME/miniconda
RUN $HOME/miniconda/bin/conda install accelerate
ENTRYPOINT find .
ENTRYPOINT export PATH="$HOME/miniconda/bin:$PATH" && \
  export NUMBAPRO_NVVM=$HOME/miniconda/pkgs/libnvvm-1.0-p0/lib/libnvvm.so && \
  export NUMBAPRO_LIBDEVICE=$
  ./root/miniconda/bin/python3
