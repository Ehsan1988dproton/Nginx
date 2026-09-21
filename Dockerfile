FROM nginx:alpine

# حذف کانفیگ پیش‌فرض و جایگزینی با کانفیگ ما
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# قرار دادن فایل قالب
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
