FROM amazoncorretto:19-alpine

RUN wget https://github.com/WorksApplications/Sudachi/releases/download/v0.7.0/sudachi-0.7.0-executable.zip
RUN wget http://sudachi.s3-website-ap-northeast-1.amazonaws.com/sudachidict/sudachi-dictionary-20220729-core.zip
RUN unzip sudachi-0.7.0-executable.zip
RUN unzip sudachi-dictionary-20220729-core.zip

WORKDIR /workdir

ENTRYPOINT ["java", "-jar", "/sudachi-0.7.0.jar", "-s", "{\"systemDict\": \"/sudachi-dictionary-20220729/system_core.dic\"}"]
