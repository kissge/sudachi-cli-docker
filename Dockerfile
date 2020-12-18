FROM openjdk:16-alpine

RUN wget https://github.com/WorksApplications/Sudachi/releases/download/v0.5.1/sudachi-0.5.1-executable.zip
RUN wget http://sudachi.s3-website-ap-northeast-1.amazonaws.com/sudachidict/sudachi-dictionary-20200722-core.zip
RUN unzip sudachi-0.5.1-executable.zip
RUN unzip sudachi-dictionary-20200722-core.zip

WORKDIR /workdir

ENTRYPOINT ["java", "-jar", "/sudachi-0.5.1/sudachi-0.5.1.jar", "-s", "{\"systemDict\": \"/sudachi-dictionary-20200722/system_core.dic\"}"]"
