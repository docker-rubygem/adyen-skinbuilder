FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.1

RUN gem install adyen-skinbuilder --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["adyen-skinbuilder"]
CMD ["--help"]
