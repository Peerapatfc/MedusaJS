FROM node:18

WORKDIR /app/medusa

COPY package.json .

# RUN apt-get update

# RUN apt-get install -y python

RUN npm install -g npm@8.11.0

RUN npm install -g @medusajs/medusa-cli@latest

RUN npm install --loglevel=error

COPY . .

EXPOSE 9000

EXPOSE 8000

ENTRYPOINT ["./develop.sh", "develop"]
