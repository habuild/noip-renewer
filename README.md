# noip-renewer

![GitHub last commit](https://img.shields.io/github/last-commit/simao-silva/noip-renewer?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/simao-silva/noip-renewer?style=for-the-badge)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/simao-silva/noip-renewer/build%20and%20push%20image%20(Alpine%20version)?label=Alpine%20build&style=for-the-badge)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/simao-silva/noip-renewer/build%20and%20push%20image%20(Debian%20version)?label=Debian%20build&style=for-the-badge)
![Docker Pulls](https://img.shields.io/docker/pulls/simaofsilva/noip-renewer?style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/simaofsilva/noip-renewer/alpine?label=Alpine%20image%20size&style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/simaofsilva/noip-renewer/debian?label=Debian%20image%20size&style=for-the-badge)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen.svg?style=for-the-badge)](https://renovatebot.com)

:uk:: Renewing No-IP hosts by browser automation. Renews all hosts available for confirmation, without any user interaction with a browser. <br/>
:portugal:: Renovação de <i>hosts</i> No-IP recorrendo a automatização do navegador. Renova todos os <i>hosts</i> disponíveis para confirmação sem ser necessário interação do utilizador com um navegador.

#### Requirements
- [Docker](https://www.docker.com/)

## Obtaining image

#### Pulling image from [Docker Hub](https://hub.docker.com/r/simaofsilva/noip-renewer/tags) 

```shell script
# armhf/armv7l
docker pull simaofsilva/noip-renewer:debian

# x86_64 or aarch64/arm64
docker pull simaofsilva/noip-renewer:latest
```

#### Building image locally

```shell script
docker build -t simaofsilva/noip-renewer -f Dockerfile.dev .
```

## Using image

```shell script
docker run --rm -it simaofsilva/noip-renewer:<TAG>
```
or
```shell script
docker run --rm -it simaofsilva/noip-renewer:<TAG> <EMAIL> <PASSWORD>
```

## Known issues / limitations
* The script assumes that the No-IP account language is set to english. For other languages it depends on the translation provided by [googletrans](https://pypi.org/project/googletrans/) so it might not work in other languages ([#11](https://github.com/simao-silva/noip-renewer/issues/11));

* In fresh accounts an extra pop up might appear that unable the script to proceed ([#14](https://github.com/simao-silva/noip-renewer/issues/14)). It appears to not show on following renovations.