FROM ubuntu
RUN apt-get update && \
    apt-get install -y software-properties-common apt-transport-https wget && \
    apt-get install -y wget && \
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && \
    apt-get install -y code

CMD ["google-chrome", "--no-sandbox"] 