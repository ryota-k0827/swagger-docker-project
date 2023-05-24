# swagger-docker-project

## 概要
OpenAPIの環境をDockerで構築するためのプロジェクト

## TOC
- [swagger-docker-project](#swagger-docker-project)
  - [概要](#概要)
  - [TOC](#toc)
  - [ツール概要](#ツール概要)
    - [Stoplight Studio　← 今回はこれをメインに使う](#stoplight-studio-今回はこれをメインに使う)
    - [Swagger Editor](#swagger-editor)
    - [Swagger UI](#swagger-ui)
    - [Stoplight Prism](#stoplight-prism)
  - [動作確認環境](#動作確認環境)
  - [セットアップ](#セットアップ)
    - [1. リポジトリをクローンする](#1-リポジトリをクローンする)
    - [2. ディレクトリに移動する](#2-ディレクトリに移動する)
    - [3. VSCodeの拡張機能をインストールする](#3-vscodeの拡張機能をインストールする)
    - [4. Stoplight Studioをインストール](#4-stoplight-studioをインストール)
    - [5. Dockerコンテナを構築する（Swagger Editor, Swagger UI, Stoplight Prismを使用する場合）](#5-dockerコンテナを構築するswagger-editor-swagger-ui-stoplight-prismを使用する場合)
  - [コンテナの操作](#コンテナの操作)
    - [コンテナの削除（終了時）](#コンテナの削除終了時)


## ツール概要

### Stoplight Studio　← 今回はこれをメインに使う

OpenAPIの仕様書（yamlファイル）をGUI操作で編集したり、モックサーバーを起動したりするためのツールです。

### Swagger Editor

OpenAPIの仕様書（yamlファイル）を編集するためのツールです。

### Swagger UI

OpenAPIの仕様書（yamlファイル）を閲覧するためのツールです。

### Stoplight Prism

OpenAPIの仕様書（yamlファイル）をモックサーバーとして起動するためのツールです。

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


### 4. Stoplight Studioをインストール

- Homebrewでインストールする場合（推奨）
  ```sh
  brew install --cask stoplight-studio
  ```
- 公式サイトからダウンロードしてインストールする場合（メールアドレスが必要）
  - [公式サイト](https://stoplight.io/studio) にアクセス
  - 「Your email...」にメールアドレスを入力して、「Download for ...」をクリック
- GitHubからダウンロードしてインストールする場合
  - [GitHubリポジトリ](https://github.com/stoplightio/studio/releases)にアクセス
  - プラットフォームに合わせて、最新のバージョンのダウンロードリンクをクリック

### 5. Dockerコンテナを構築する（Swagger Editor, Swagger UI, Stoplight Prismを使用する場合）

**5.1 コンテナを起動**

```sh
make up
```

**5.2 ブラウザでアクセスする**

```sh
# Swagger Editor
make open/swagger-editor  # http://localhost:8081

# Swagger UI
make open/swagger-ui      # http://localhost:8082

# Stoplight Prism
make open/swagger-api      # http://localhost:8083
```

## コンテナの操作

### コンテナの削除（終了時）

```sh
make down
```
