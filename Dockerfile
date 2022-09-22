FROM      node:12.18.1
RUN       mkdir /app
RUN       mkdir /app/public 
WORKDIR   /app/public
COPY      public/ . 
WORKDIR   /app 
COPY      index.js  .
COPY      package.json .
RUN       npm install 
EXPOSE    3000
ENTRYPOINT       ["node", "index.js"]