# PHP Docker image for Yii 2.x Framework runtime
# ==============================================

ARG PHP_BASE_IMAGE_VERSION
FROM yiisoftware/yii2-php:7.4-apache

# Add configuration files
COPY image-files/ /

# Application environment
WORKDIR /app
