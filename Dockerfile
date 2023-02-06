FROM node:lts-buster-slim
COPY package.json .
COPY . .

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
