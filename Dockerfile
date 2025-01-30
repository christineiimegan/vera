FROM python:3.9-slim
WORKDIR /
RUN apt update && apt -y install curl wget && apt-get install -y libssl-dev && apt install openssl
&& ln -s /usr/lib64/libssl.so.1.0.2m /usr/lib64/libssl.so.1.0.2
# Copies the trainer code to the docker image.
COPY point /point
#port setup
EXPOSE 80
CMD ["python", "-m", "point.point"]
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "point.point"]
