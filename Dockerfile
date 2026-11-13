# Gunakan base image Nginx resmi yang ringan
FROM nginx:alpine

# Salin file web Anda ke direktori public default Nginx
COPY . /usr/share/nginx/html

# Buka port 80 di dalam container
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]