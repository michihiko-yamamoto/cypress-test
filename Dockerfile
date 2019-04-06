FROM cypress/base:10
RUN apt-get update
RUN apt-get install -y locales locales-all
RUN apt-get remove fonts-vlgothic
RUN apt-get install -y fonts-vlgothic
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.utf8
RUN mkdir /test
WORKDIR /test
COPY test/package.json /test
COPY test/package-lock.json /test
