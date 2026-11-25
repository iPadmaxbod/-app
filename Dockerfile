FROM nginx:alpine

# 复制自定义 Nginx 配置（含 COOP/COEP 头）
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 复制 Godot 导出产物到 Nginx 默认站点目录
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]