FROM klokantech/tileserver-gl

RUN mkdir tileserver
COPY config.json /tileserver/config.json
COPY map.mbtiles /tileserver/map.mbtiles

# Expose port 80 for the server
EXPOSE 8080

# Start TileServer-GL
CMD tileserver-gl --file /tileserver/map.mbtiles