# Utilisez une image légère basée sur Nginx
FROM nginx:alpine

# Supprimez la configuration par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiez les fichiers de l'application dans le conteneur
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Exposez le port 80 pour accéder au site web
EXPOSE 80

# Commande pour démarrer Nginx en mode daemon
CMD ["nginx", "-g", "daemon off;"]
