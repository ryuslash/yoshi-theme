FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y xvfb emacs scrot fonts-fantasque-sans

COPY entrypoint.sh make-screenshot make-screenshot.el emacs-lisp.el /

ENTRYPOINT ["/entrypoint.sh"]
