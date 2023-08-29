FROM node:latest as builder

WORKDIR /app/

COPY package*.json webpack.config.js ./

RUN ["npm", "install"]

COPY . .

RUN ["npm", "run", "webpack-build"]

# CMD ["npm", "run", "webpack-serve"]

FROM nginx:latest

COPY --from=builder /app/dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]




