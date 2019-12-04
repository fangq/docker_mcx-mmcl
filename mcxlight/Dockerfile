FROM nvidia/cuda:9.0-base

RUN apt update

# Development Tools
RUN apt install -y curl
RUN apt install -y zip

# Setup some convenient tools/functionalities
RUN curl -fLo /mcx-linux.zip \
	http://mcx.space/nightly/linux64/mcx-linux-x86_64-nightlybuild.zip && \
    unzip /mcx-linux.zip -d /code


    
WORKDIR /data
ENV PATH "${PATH}:/code/mcx/bin/"
#WORKDIR ../example/benchmark
#CMD mcx -A -f benchmark1.json -b 0
