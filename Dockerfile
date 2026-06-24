# nginx-based image to serve the static TaskFlow HTML pages
FROM nginx:alpine

# Remove the default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy all the TaskFlow site files into nginx's web root
COPY index.html add-task.html task-list.html task-detail.html about.html style.css /usr/share/nginx/html/

# Expose the default HTTP port
EXPOSE 80

# nginx runs in the foreground by default in this base image
CMD ["nginx", "-g", "daemon off;"]
