# Use Hyperledger Besu official image
FROM hyperledger/besu:latest

# Set working directory inside the container
WORKDIR /opt/besu

# Copy configuration files into the container
COPY ./config /opt/besu/config
COPY ./networkFiles /opt/besu/networkFiles

# Expose shifted ports (since another QBFT is running on default ports)
EXPOSE 8549 8550 30308 30308/udp 9549

# Command to start the Besu node
ENTRYPOINT ["besu"]
CMD ["--config-file=/opt/besu/config/config.toml"]
