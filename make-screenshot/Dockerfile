FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y xvfb emacs scrot fonts-fantasque-sans
RUN mkdir /screenshot /src

VOLUME /screenshot
VOLUME /src

COPY make-screenshot make-screenshot.el emacs-lisp.el /

CMD ["/screenshot"]

ENTRYPOINT ["/make-screenshot"]
