FROM klokantech/tileserver-gl

# Copy the config.json and .mbtiles file to the /data directory
COPY ./config.json /data/config.json
COPY ./map.mbtiles /data/yourmap.mbtiles

# Expose port 80 for the server
EXPOSE 80

# Start TileServer-GL
CMD ["tileserver-gl", "config.json"]