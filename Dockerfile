FROM node:lts-buster-slim
COPY . .

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
