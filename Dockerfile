# # Use the official Besu image as the base
# FROM hyperledger/besu:latest

# # Copy a custom script into the container
# COPY custom-script.sh /besu/custom-script.sh

# # Make the script executable
# RUN chmod +x /besu/custom-script.sh

# # Set the script to run when the container starts
# ENTRYPOINT ["/besu/custom-script.sh"]