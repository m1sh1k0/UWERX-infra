FROM nginx:alpine

COPY public.crt /etc/nginx/ssl/public.crt
COPY private.key /etc/nginx/ssl/private.key

EXPOSE 80 443

COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]