FROM ruby:2.4.3

ADD ./ /asciidoc
WORKDIR /asciidoc

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev default-jdk graphviz doxygen locales fonts-vlgothic fonts-horai-umefont fonts-umeplus
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.utf8
RUN locale
RUN bundle install
