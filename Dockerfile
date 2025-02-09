FROM ubuntu:latest
WORKDIR /
RUN apt-get update && apt-get install -y \
    libssl-dev \
    libudev-dev \
    pkg-config \
    zlib1g-dev \
    llvm \
    clang \
    make \
    curl \
    && rm -rf /var/lib/apt/lists/*
# Copies the trainer code to the docker image.
COPY point /point
#port setup
EXPOSE 80
CMD ["python", "-m", "point.point"]
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "point.point"]
