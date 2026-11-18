FROM nginx:alpine
# Render fournit le port dans $PORT (10000 par défaut)
ENV PORT=10000
COPY templates/default.conf.template /etc/nginx/templates/default.conf.template
COPY index.html actu.json /usr/share/nginx/html/
EXPOSE 10000
