# nfrastack/container-matomo

## About

This repository will build a container image for Matomo. It is an Open Source Google Analytics Replacement.

It will automatically download the latest Piwik release upon build, and if you have set correct environment variables, will autocreate a database if you wish.

## Maintainer

* [Nfrastack](https://www.nfrastack.com)

## Table of Contents

* [About](#about)
* [Maintainer](#maintainer)
* [Table of Contents](#table-of-contents)
* [Installation](#installation)
  * [Prebuilt Images](#prebuilt-images)
    * [Multi-Architecture Support](#multi-architecture-support)
  * [Quick Start](#quick-start)
  * [Persistent Storage](#persistent-storage)
* [Environment Variables](#environment-variables)
  * [Base Images used](#base-images-used)
  * [Core Configuration](#core-configuration)
* [Maintenance](#maintenance)
  * [Shell Access](#shell-access)
* [Support & Maintenance](#support--maintenance)
* [References](#references)
* [License](#license)

## Installation

### Prebuilt Images

Feature limited builds of the image are available on the [Github Container Registry](https://github.com/nfrastack/container-matomo/pkgs/container/container-matomo) and [Docker Hub](https://hub.docker.com/r/nfrastack/matomo).

To unlock advanced features, one must provide a code to be able to change specific environment variables from defaults. Support the development to gain access to a code.

To get access to the image use your container orchestrator to pull from the following locations:

```
ghcr.io/nfrastack/container-matomo:(image_tag)
docker.io/nfrastack/matomo:(image_tag)
```

Image tag syntax is:

`<image>:<optional tag>-<optional phpversion>`

Example:

`docker.io/nfrastack/container-matomo:latest` or

`ghcr.io/nfrastack/container-matomo:1.0-php84`

* `latest` will be the most recent commit

* An optional `tag` may exist that matches the [CHANGELOG](CHANGELOG.md) - These are the safest

* An optional `phpversion` may exist like `php84` or `php83`
*
Have a look at the container registries and see what tags are available.

#### Multi-Architecture Support

Images are built for `amd64` by default, with optional support for `arm64` and other architectures.

### Quick Start

* The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/). See the examples folder for a working [compose.yml](examples/compose.yml) that can be modified for your use.

* Map [persistent storage](#persistent-storage) for access to configuration and data files for backup.
* Set various [environment variables](#environment-variables) to understand the capabilities of this image.

**The first boot can take from 2 minutes - 5 minutes depending on your CPU to setup the proper schemas.**

### Persistent Storage

The following directories/files should be mapped for persistent storage in order to utilize the container effectively.

| Directory        | Description                                                                  |
| ---------------- | ---------------------------------------------------------------------------- |
| `/logs`          | Nginx and PHP Log files                                                      |
| `/www/matomo` |Matomo sourcecode  |

### Environment Variables

#### Base Images used

This image relies on a customized base image in order to work.
Be sure to view the following repositories to understand all the customizable options:

| Image                                                                 | Description         |
| --------------------------------------------------------------------- | ------------------- |
| [OS Base](https://github.com/nfrastack/container-base/)               | Base Image          |
| [Nginx](https://github.com/nfrastack/container-nginx/)                | Nginx Webserver     |
| [Nginx PHP-FPM](https://github.com/nfrastack/container-nginx-php-fpm) | PHP-FPM Interpreter |

Below is the complete list of available options that can be used to customize your installation.

* Variables showing an 'x' under the `Advanced` column can only be set if the containers advanced functionality is enabled.

#### Core Configuration

| Parameter | Description                                         | Default | `_FILE` |
| --------- | --------------------------------------------------- | ------- | ------- |
| `DB_HOST` | MySQL external container hostname (e.g. matomo1-db) |         | x       |
| `DB_NAME` | MySQL database name i.e. (e.g. matomo)              |         | x       |
| `DB_USER` | MySQL username for database (e.g. matomo)           |         | x       |
| `DB_PASS` | MySQL password for database (e.g. userpassword)     |         | x       |


* * *

## Maintenance

### Shell Access

For debugging and maintenance, `bash` and `sh` are available in the container.

## Support & Maintenance

* For community help, tips, and community discussions, visit the [Discussions board](/discussions).
* For personalized support or a support agreement, see [Nfrastack Support](https://nfrastack.com/).
* To report bugs, submit a [Bug Report](issues/new). Usage questions will be closed as not-a-bug.
* Feature requests are welcome, but not guaranteed. For prioritized development, consider a support agreement.
* Updates are best-effort, with priority given to active production use and support agreements.

## References

* https://www.matomo.org


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
