FROM node:15.4 as build

WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . . 
RUN npm run prod

FROM nginx:1.19

COPY ./nginx/nginx.conf/ /etc/nginx/nginx.conf
COPY --from=build /app/dist/app-angular-demo/ /usr/share/nginx/html
