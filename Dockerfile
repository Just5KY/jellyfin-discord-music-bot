FROM node:12.18.3-alpine
RUN apk add ffmpeg python3 make 

COPY . /app
WORKDIR /app
RUN npm install --only=production
RUN npm run postinstall

CMD node parseENV.js && npm run start
