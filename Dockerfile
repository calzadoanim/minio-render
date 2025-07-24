FROM minio/minio:latest

# Mount persistent storage (if needed, handled by your deploy platform)
VOLUME /data

# Expose the API port (optional, your deploy platform defines ports)
EXPOSE 9000

# Start MinIO server without console listener
CMD ["minio", "server", "/data"]
