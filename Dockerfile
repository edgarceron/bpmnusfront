# Dockerfile
FROM node:buster
RUN apt-get update && apt-get install git -y
RUN git clone https://github.com/edgarceron/bpmnusfront
WORKDIR /bpmnusfront

RUN npm i

CMD ["npm", "run", "start"]

EXPOSE 3000