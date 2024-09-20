# qtalr-rstudio image

This repo contains the Dockerfile for the image to set up an environment to be used with the [Introduction to Quantitative Text Analysis for Linguistics textbook](https://qtalr.com) with RStudio.

Properties:

- Based on the francojc/qtalr-r image
- Installs RStudio (2024.04.2+7640)
- Exposes 8787 for RStudio Server access

## Usage

The image can be found on Docker Hub at [francojc/qtalr-rstudio](https://hub.docker.com/r/francojc/qtalr-rstudio). To use it, you will need to map the port 8787 to 8787 on your host machine and set a password for the RStudio user `ruser`.

You can run:

```bash
docker run -d -p 8787:8787 -e PASSWORD=yourpassword francojc/qtalr-rstudio:latest
```

Then you can access RStudio Server at `http://localhost:8787` and log in with the username `ruser` and the password you set.

You can also use the Desktop version of Docker to run the image and connect it to a host directory.
