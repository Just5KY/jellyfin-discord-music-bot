FROM node:alpine
RUN apk add ffmpeg python3

COPY . /app
WORKDIR /app
RUN npm install --only=production
RUN npm run postinstall

CMD node parseENV.js && npm run start
