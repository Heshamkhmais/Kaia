FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils https-proxy-agent socks-proxy-agent crypto-js 

COPY . .

RUN chmod +x run.sh

EXPOSE 3000

CMD ["node", "meomundep"]
