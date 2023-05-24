# swagger-docker-project

## 概要
OpenAPIの環境をDockerで構築するためのプロジェクト

## 動作確認環境

```sh
# --- mac version ---------------------------------------------------
% uname -m
arm64

% sw_vers
ProductName:		macOS
ProductVersion:		13.2.1
BuildVersion:		22D68
# -------------------------------------------------------------------

# --- Make ----------------------------------------------------------
% make -v
GNU Make 3.81
Copyright (C) 2006  Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

This program built for i386-apple-darwin11.3.0
# -------------------------------------------------------------------

# --- docker version ------------------------------------------------
% docker --version
Docker version 20.10.22, build 3a2c30b

% docker compose version
Docker Compose version v2.15.1
# -------------------------------------------------------------------

# --- vscode version ------------------------------------------------
% code -v
1.77.0
7f329fe6c66b0f86ae1574c2911b681ad5a45d63
arm64
# -------------------------------------------------------------------
```

## セットアップ

### 1. リポジトリをクローンする

```sh
# SSH
git clone git@github.com:ryota-k0827/swagger-docker-project.git

# HTTPS
git clone https://github.com/ryota-k0827/swagger-docker-project.git
```

### 2. ディレクトリに移動する

```sh
cd swagger-docker-project
```

### 3. VSCodeの拡張機能をインストールする

VSCodeを起動します

```sh
code .
```

VSCodeの右下に「推奨拡張機能をインストール」というポップアップが出るので、「インストール」をクリックします。

### 4. コンテナを起動

```sh
make up
```

### 5. ブラウザでアクセスする

```sh
# Swagger Editor
make open/swagger-editor  # http://localhost:8081

# Swagger UI
make open/swagger-ui      # http://localhost:8082

# Swagger API(Stoplight Prism)
make open/swagger-api      # http://localhost:8083
```

## ツール概要

### Swagger Editor

OpenAPIの仕様書（yamlファイル）を編集するためのツールです。

### Swagger UI

OpenAPIの仕様書（yamlファイル）を閲覧するためのツールです。

### Swagger API(Stoplight Prism)

OpenAPIの仕様書（yamlファイル）をモックサーバーとして起動するためのツールです。