FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy files into nginx directory
COPY html/ /usr/share/nginx/html/
