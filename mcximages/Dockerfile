FROM nvidia/cuda:8.0-devel-ubuntu16.04

RUN apt update

# Development Tools
RUN apt install -y curl
RUN apt install -y wget
RUN apt install -y tree

RUN apt install -y git

RUN apt install -y vim
RUN apt install -y tmux
RUN apt install -y make
# Setup some convenient tools/functionalities
WORKDIR /root
RUN git clone https://github.com/agostini01/dotfiles.git && \
    \
    ln -sf dotfiles/.gitignore_global .gitignore_global && \
    \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    \
    ln -sf dotfiles/.vimrc            .vimrc && \
    ln -sf dotfiles/.ctags            .ctags && \
    ln -sf dotfiles/.inputrc          .inputrc && \
    \
    git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm && \
    ln -sf dotfiles/.tmux.conf        .tmux.conf

RUN echo "PS1='\[\033[01;31m\][\[\033[01;30m\]\u@\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '" >> .bashrc

# Clonning the interesting projects
RUN git clone https://github.com/fangq/mcx.git

RUN echo "echo 'Hello Yuhui'" >> ~/.bashrc && \
    echo "echo ' '" >> ~/.bashrc && \
    echo "echo 'You are awesome'" >> ~/.bashrc && \
    echo "echo ' '" >> ~/.bashrc 
    
# Change to the correct directory
WORKDIR  ./mcx/src

RUN make
WORKDIR /data
ENV PATH "${PATH}:/root/mcx/bin/"
#WORKDIR ../example/benchmark
#CMD mcx -A -f benchmark1.json -b 0
