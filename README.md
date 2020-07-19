# Tournament

[Tournament](https://github.com/ghifari160/tournament) is a simple tournament management app. This
[Docker](https://docker.com) image is custom built for use by GHIFARI160.

## Installation

``` shell
docker run -d --name tournament -p 8080:8080 -v /path/to/persistent/storage:/var/www/tournament ghifari160/tournament
```

## Volumes

| Container Storage     | Description                                                |
|-----------------------|------------------------------------------------------------|
| `/var/www/tournament` | Persistent storage for tournament installation and content |
