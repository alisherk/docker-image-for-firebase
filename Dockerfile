FROM node:erbium

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install dos2unix
RUN npm i -g firebase-tools
ADD firebase.bash /usr/bin
RUN chmod +x /usr/bin/firebase.bash
RUN dos2unix /usr/bin/firebase.bash

ENTRYPOINT [ "/usr/bin/firebase.bash" ]
