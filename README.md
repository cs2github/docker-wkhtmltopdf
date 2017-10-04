# wkhtmltopdf Docker container

A Docker container with wkhtmltopdf on top of Debian:jessie

# wkhtmltopdf Docker container

> Debian 8 (Jessie)

> wkhtmltopdf 0.12.4 (with patched qt)


## Usage

```
docker run -d \
  --volume /tmp/wkhtmltopdf:/tmp/wkhtmltopdf
  --name cs2wkhtmltopdf \
  cs2ag/wkhtmltopdf
```

## Generate PDF

To generate a PDF, exec wkhtmltopdf inside docker container. 

```
docker container exec cs2wkhtmltopdf wkhtmltopdf "https://www.google.com/" /tmp/wkhtmltopdf/file.pdf
```

### Volumes

Mount a host directory into the container. The generated PDF files will be saved into this directory


## Author

* Stefan Preissner (<github@cs2.ch>)  

---
