## 5.1.0pre 2025-07-12 <code at nfrastack dot com>

   ### Added
      - Switch to nfrastack/nginx-php-fpm
      - PHP 8.4

## 5.0.0 2025-07-12 <dave at tiredofit dot ca>

   ### Added
      - Switch back to tiredofit/nginx-php-fpm
      - PHP 8.3


## 4.0.1 2024-01-26 <dave at tiredofit dot ca>

   ### Changed
      - PHP 8.2


## 4.0.0 2023-09-21 <dave at tiredofit dot ca>

   ### Added
      - Now using tiredofit/unit as a backend instead of tiredofit/nginx and tiredofit/nginx-php-fpm


## 3.9.10 2023-09-21 <dave at tiredofit dot ca>

   ### Added
      - Now using tiredofit/unit as a backend instead of tiredofit/nginx and tiredofit/nginx-php-fpm
      - PHP 8.2


## 3.9.9 2023-07-28 <dave at tiredofit dot ca>

   ### Changed
      - Roll back to PHP 8.1 due to broken archiving of reports
      - Fix issue with .bashrc getting overwritten for 'console' command
      - Redo scheduled task for archiving of reports


## 3.9.8 2023-07-17 <dave at tiredofit dot ca>

   ### Changed
      - Move to PHP 8.2 and modernize Dockerfile


## 3.9.7 2022-11-23 <dave at tiredofit dot ca>

   ### Added
      - Bump to Alpine 3.17 base


## 3.9.6 2022-10-05 <dave at tiredofit dot ca>

   ### Changed
      - Migrate legacy nginx configuration


## 3.9.5 2022-07-05 <dave at tiredofit dot ca>

   ### Added
      - Switch to PHP 8.1 Base


## 3.9.4 2022-06-23 <dave at tiredofit dot ca>

   ### Added
      - Support tiredofit/nginx:6.0.0 and tiredofit/nginx-php-fpm:7.0.0 changes


## 3.9.3 2022-02-10 <dave at tiredofit dot ca>

   ### Changed
      - Update to support upstream base image features


## 3.9.2 2021-08-25 <dave at tiredofit dot ca>

   ### Changed
      - Fix for Timezone entry in Cron


## 3.9.1 2021-08-04 <dave at tiredofit dot ca>

   ### Changed
      - Fix duplicate location block in nginx configuration


## 3.9.0 2021-08-03 <dave at tiredofit dot ca>

   ### Added
      - PHP 8.0 Base
      - Tighten up Nginx configuration


## 3.8.1 2021-07-20 <dave at tiredofit dot ca>

   ### Changed
      - Rework the cron scheduling by prefixing with Timezone


## 3.8.0 2021-03-14 <dave at tiredofit dot ca>

   ### Added
      - PHP 8.0 Base
      - Add alias for "console" command


## 3.7.0 2020-06-09 <dave at tiredofit dot ca>

   ### Added
      - Update to support tiredofit/alpine 5.0.0 base image


## 3.6.1 2020-01-02 <dave at tiredofit dot ca>

   ### Changed
      - Additional changes to support new tiredofit/alpine base image


## 3.6.0 2019-12-29 <dave at tiredofit dot ca>

   ### Added
      - Support new tiredofit/nginx and tiredofit/alpine base images


## 3.5.5 2019-12-18 <dave at tiredofit dot ca>

   ### Changed
      - Change to support dynamic user/group for webserver


## 3.5.4 2019-12-16 <dave at tiredofit dot ca>

   ### Changed
      - Fix spelling mistake when enabling PHP_REDIS


## 3.5.3 2019-12-16 <dave at tiredofit dot ca>

   ### Changed
      - Modification to Redis

## 3.5.2 2019-12-12 <dave at tiredofit dot ca>

   ### Changed
      - Fix Crontab when not using standard Webroot


## 3.5.1 2019-12-12 <dave at tiredofit dot ca>

   ### Added
      - Add Redis, LDAP PHP Extensions


## 3.5.0 2019-12-04 <dave at tiredofit dot ca>

   ### Added
      - Refactor Image to support new tiredofit/nginx-php-fpm base image


## 3.4 2019-06-29 <dave at tiredofit dot ca>

* PHP 7.3
* Alpine 3.10

## 3.3 2018-11-30 <dave at tiredofit dot ca>

* Switch to PHP 7.2

## 3.2 2018-03-06 <dave at tiredofit dot ca>

* Add LLNG Handler Support

## 3.1 2018-03-06 <dave at tiredofit dot ca>

* Cleanup Code to work better with the nginx-php-fpm base images
* Fix some Downloading errors
* Now tracks latest Piwik version

## 3.0 2018-02-01 <dave at tiredofit dot ca>

* Change to Matomo

## 2.3 2017-10-26 <dave at tiredofit dot ca>

* Filesystem reorg and version bump

## 2.2 2017-07-06 <dave at tiredofit dot ca>

* PHP_TIMEOUT addition

## 2.1 2017-07-02 <dave at tiredofit dot ca>

* Sanity Test Rebase for s6

## 2.0 2017-06-23 <dave at tiredofit dot ca>

* Rebase with nginx-php-fpm w/ s6.d


## 1.6 2017-05-11 <dave at tiredofit dot ca>
* Rebase, Update PHP7 to 7.14 to Fix Redis Issue

## 1.5 2017-04-07 <dave at tiredofit dot ca>
* Rebase, Update Piwik to 3.03

## 1.4 2017-02-09 <dave at tiredofit dot ca>
* Changed Base to local alpine:edge
* Adjusted sed

## 1.3 2017-02-08 <dave at tiredofit dot ca>
* Added Zabbix Monitoring


## 1.2 2017-01-24 <dave at tiredofit dot ca>
* Bugfix
* PECL Geoip Compiled
* Version Independent, Downloads latest for new installs.
* Redis Capable


## 1.1 2017-01-05 <dave at tiredofit dot ca>

* Re-base to Alpine:edge
* PHP7
* Nginx backend instead of FPM
* PECL geoip presently not working

## 1.0 2017-01-02 <dave at tiredofit dot ca>

* Initial Commit
* PHP 5.6-fpm
* Piwik 3.0
