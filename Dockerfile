FROM node:lts-buster

RUN git clone https://github.com/Temitopeareo/abrobot1/ /root/Phoenix-MD

WORKDIR /root/Phoenix-MD

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install


CMD ["npm", "start"]
