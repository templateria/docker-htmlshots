# docker-htmlshots
Run HTMLShots in a Docker container.

## Introduction

This Docker image provides an instance of [HTMLShots](https://github.com/templateria/htmlshots) based on PhantomJS 2.0.0 running on port 8080.

```bash
docker run templateria/htmlshots
```

Daemonized:

```
docker run -d templateria/htmlshots
```

Mapping container port 8080 to a local 9999 port:

```
docker run -d -p 9999:8080 templateria/htmlshots
````

**Disclaimer:** This Docker image includes a prebuilt PhantomJS 2.0.0 binary.