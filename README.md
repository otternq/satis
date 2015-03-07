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

####  satis.json

To use your own satis.json file:

```bash
$ docker run -d -P -v ./satis.json:/opt/satis.json --name satis-container otternq/satis
```

#### GitHub token

Satis tends to end up making a large number of requests to GitHub.
This can take you over your unauthorized request limit. To bypass
the limit, provide a GitHub application token.

```bash
$ docker run -d -P -e "GITHUB_TOKEN=yourgithubtoken" --name satis-container otternq/satis
```
