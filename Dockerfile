FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY app.js ./

EXPOSE 3000

CMD ["node", "-e", "const h=require('http'); h.createServer((req,res)=>{res.writeHead(200);res.end('App is running!')}).listen(3000,()=>console.log('Server running on port 3000'))"]
