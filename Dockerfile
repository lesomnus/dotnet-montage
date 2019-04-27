FROM mcr.microsoft.com/dotnet/core/sdk:3.0

WORKDIR /usr/montage/

COPY . .

RUN apt-get update && \
    apt-get install make && \
    apt-get -y install gcc  && \
    apt-get -y install build-essential && \
    make

ENV PATH="/usr/montage/bin:${PATH}"
