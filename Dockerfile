FROM node:alpine

RUN mkdir ~/app

WORKDIR ~/app

COPY . .

COPY kubernetes.sh /usr/local/bin/kubernetes.sh

RUN chmod +x /usr/local/bin/kubernetes.sh

RUN npm install

CMD node app.js

ENTRYPOINT ["/usr/local/bin/kubernetes.sh"]