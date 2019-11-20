FROM codercom/coder-ser:v2

RUN sudo apt-get update && sudo apt-get -y install python-pip
RUN sudo pip install -U PlatformIO

ENTRYPOINT ["dumb-init", "code-server", "--host", "0.0.0.0"]


