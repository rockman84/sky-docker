# sky-docker

### Installation
```shell
mkdir _volumes/yii
cd _volumes/yii

// create new project or existing project 
composer create-project --prefer-dist yiisoft/yii2-app-basic basic
```

### Configuration
```shell
cp .env-dist .env
```
adjust your .env if needed
### Docker Build

#### Build
```shell
docker-compose build
```

#### Run
```shell
docker-compose up -d
```

### Environment Variables
