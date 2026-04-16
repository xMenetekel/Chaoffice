# build stage
FROM docker.io/barichello/godot-ci:4.6.1 AS build
WORKDIR /app

COPY . .

# export
RUN mkdir dist
RUN godot --headless --export-release "Web"

# production stage
# https://hub.docker.com/r/bitnami/nginx -> always runs as non-root user
FROM docker.io/bitnami/nginx:latest AS prod

# Copy built files from the build stage
COPY --from=build /app/dist /app

# Copy nginx configuration
COPY nginx.conf /opt/bitnami/nginx/conf/nginx.conf

# Expose port 8080
EXPOSE 8080
