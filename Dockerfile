FROM nginx:latest

# 將 HTML 和 CSS 檔案複製到 Nginx 預設的網頁目錄
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 80

# 啟動 Nginx
CMD ["nginx", "-g", "daemon off;"]