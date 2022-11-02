# wkhtmltopdf Docker container

A Docker container with wkhtmltopdf on top of Debian:bullseye

> Debian 11 (Bullseye)

> wkhtmltopdf 0.12.6.1 (with patched qt)


## Usage

```
docker run -d \
  --volume /tmp/wkhtmltopdf:/tmp/wkhtmltopdf
  --name cs2wkhtmltopdf \
  cs2ag/wkhtmltopdf
```

## Generate PDF

To generate a PDF, execute wkhtmltopdf inside docker container. 

```
docker container exec cs2wkhtmltopdf wkhtmltopdf "https://www.google.com/" /tmp/wkhtmltopdf/file.pdf
```

### Volumes

Mount a host directory into the container. The generated PDF files will be saved into this directory


## Author

* Peter Misinsky (<github@cs2.ch>)  

---
