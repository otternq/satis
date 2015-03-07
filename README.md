# Satis

Prepares a default [satis](https://github.com/composer/satis) installation.
You can customize with your own satis.json file.

## Setup

### Basic

To see a very basic satis installation, just run:

```bash
$ docker pull otternq/satis
$ docker run -d -P --name satis-container otternq/satis
```

### Custom

To use your own satis.json file:

```bash
$ docker run -d -P -v ./satis.json:/opt/satis.json --name satis-container otternq/satis
```
