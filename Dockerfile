FROM nginx:alpine

# کپی تنظیمات روت‌ها و پروکسی
COPY default.conf /etc/nginx/conf.d/default.conf

# کپی قالب پاسارگاد
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
