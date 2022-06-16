## 手動デプロイ手順：
### apiを以下の手順でビルド(vs-code remote環境にて)
1. ./mvnw clean package
2. ../mvnw clean package -Dquarkus.container-image.build=true (api)
3. docker push minokuba/4taku-api:latest
### batchを以下の手順でビルド
1. ./mvnw clean package
2. ../mvnw clean package -Dquarkus.container-image.build=true (batch)
3. docker push minokuba/4taku-batch:latest

## 開発環境（kind）へのデプロイ(4taku-manifestにて)
1. upload-image-to-kind.sh
2. deploy-dev.sh

## 本番環境へのデプロイ(4taku-manifestにて)
1. deploy-prod.sh
