FROM gitpod/workspace-full

RUN sudo apt-get update && \
    sudo apt-get remove -y libssl-dev
RUN sudo bash -lc "rvm install 2.6.8 && rvm use 2.6.8 --default"
