FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# ================================
# Install required tools
# ================================
RUN apt-get update && \
    apt-get install -y \
    openjdk-11-jdk \
    python3 \
    curl \
    wget \
    vim \
    tar \
    bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# ================================
# Set working directory
# ================================
WORKDIR /BDMG

# ================================
# Copy your script into container
# ================================
COPY script.sh /BDMG/script.sh
COPY Jars /BDMG/Jars
RUN chmod +x /BDMG/script.sh

# ================================
# Expose Storm UI port
# ================================
#EXPOSE 8080

# ================================
# Default command (run script)
# ================================
CMD ["/bin/bash"]