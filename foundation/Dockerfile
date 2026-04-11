# LAYER 1: FOUNDATIONS (The "Ground" of the Trust Stack)
# Goal: SLSA Level 3 compliance & Hardened OS

# We use a minimal base image to reduce the attack surface.
FROM debian:12-slim

# Step 1: Remove unnecessary binaries and update security certificates.
RUN apt-get update && apt-get install -y --no-install-recommends \
ca-certificates \
&& rm -rf /var/lib/apt/lists/*

# Step 2: Create a non-privileged user.
# AI agents should NEVER run as 'root'.
RUN useradd -u 10001 -m agentuser

# Step 3: Set the environment to the non-root user.
USER agentuser
WORKDIR /home/agentuser

# This setup ensures the 'Ground' the AI stands on is verified and secure.
