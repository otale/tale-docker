# tale-docker
tale docker

# Usage

Expose port 9000 from the image. You can then access the web service directly from a browser.

# Example

```
git clone https://github.com/otale/tale-docker
cd tale-docker
docker build -t tale .
docker run -d -p 80:9000 tale
```

You can now open tale-docker on your machine via 80 and 443
