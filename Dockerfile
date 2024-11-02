# Dockerfile
# RStudio

FROM francojc/qtalr-r:latest

# Set env variables
ENV S6_VERSION="v2.1.0.2"
ENV RSTUDIO_VERSION="2024.04.2+764"
ENV DEFAULT_USER="ruser"

# Use root user to install software
USER root

# Install RStudio from /rocker_scripts/
RUN /rocker_scripts/install_rstudio.sh

EXPOSE 8787
CMD ["/init"]
