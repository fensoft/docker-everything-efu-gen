FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3 python3-pip cron && apt clean
RUN pip install everything-efu-gen
ADD boot.sh /.boot

ENTRYPOINT ["/.boot"]
