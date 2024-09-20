# Dockerfile
# RStudio

FROM francojc/qtalr-r:latest

# Set env variables
ENV S6_VERSION="v2.1.0.2"
ENV RSTUDIO_VERSION="2024.04.2+764"
ENV DEFAULT_USER="ruser"

# Use root user to install software
USER root

# Install Pandoc, Quarto, and RStudio
# from /rocker_scripts/
RUN /rocker_scripts/install_rstudio.sh
RUN /rocker_scripts/install_pandoc.sh
RUN /rocker_scripts/install_quarto.sh

EXPOSE 8787
CMD ["/init"]

