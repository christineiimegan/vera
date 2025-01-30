FROM python:3.9-slim
WORKDIR /
RUN apt update && apt -y install curl wget && apt-get install -y libssl-dev && cd /usr/lib ls -l libssl*
# Copies the trainer code to the docker image.
COPY point /point
#port setup
EXPOSE 80
CMD ["python", "-m", "point.point"]
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "point.point"]
