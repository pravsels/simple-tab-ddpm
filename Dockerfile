# runtime version since no compilation 
FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime

ENV WORKDIR=/root/workspace/techniques/simple-tab-ddpm

ARG DEBIAN_FRONTEND=noninteractive

# nvidia-container-runtime
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

WORKDIR $WORKDIR

COPY ./requirements.txt . 

RUN pip install -r requirements.txt

# RUN useradd -u 1000 username

# USER username

WORKDIR $WORKDIR

CMD ["bash"]

# solving torch unable to find CUDA error
# https://necromuralist.github.io/posts/pytorch-and-the-unknown-cuda-error/