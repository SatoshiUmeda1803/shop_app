# 環境構築の手順
### インストール環境

macOS Monterey 12.51

MacBookPro(M1,2021)

学習を始めた当時、環境構築にかなり苦戦した記憶があり、現在の環境にたどり着くまでの正確な手順として正しいかは定かではないのですが、当時の記録をもとに記載します。

参考URL: https://zenn.dev/osuzuki/articles/a535b2840bbea3

### 01. Command Line Toolsをインストール
 
 ```
 xcode-select --install
 ```
 

### 02. rbenvのインストール

  そのためのHomebrewをインストール
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
  rbenvを入手
  ```
  brew install ruby-build rbenv
  ```
  パスを通して初期化
  ```
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(rbenv init -)"' >> ~/.zshrc
  ```
  
### 03. Rubyをインストール

  Rubyをインストール
  ```
  rbenv install 2.7.6
  ```
  切り替え
  ```
  rbenv global 2.7.6
  ```
  
### 04. Railsをインストール

  Railsをインストール
  ```
  gem install rails -v 6.0.5.1 
  ```
  
### 05. yarnをインストール

   Homebrewでインストール
   ```
   brew install yarn
   ```
   
### 06. プロジェクト作成

  バージョンを指定してプロジェクト作成
  ```
  rails _6.0.5.1_ new shop_app
  ```
  サーバーを起動
  ```
  rails s
  ```
  ブラウザで localhost:3000 にアクセスすると「Yay! You’re on Rails!」ページが表示
  
### 07. ダミーデータの作成

  データベースはSQliteを使用
  
  Fakerを用いてダミーデータを作成
  ```
  bundle install
  rails db:seed  
  ```
  
### 08. Webpackerのインストール

  Webpacker::Manifest::MissingEntryErrorが発生したため、Webpackerをインストールして解決
  ```
  rails webpacker:install
  rails webpacker:compile
  ```
  
### 09. Bootstrapをインストール

  iQeuryとpopper.jsを同時にインストール
  ```
  yarn add jquery@3.5.1 bootstrap@4.5.0 popper.js@1.16.0
  ```
  
### 10. 開発環境のURLをブラウザに入力
  
   ブラウザで localhost:3000 にアクセスすると商品一覧ページが表示される。
   
   商品名をクリックすると商品詳細ページへ移動する。(localhost:3000/products/[商品ID])
   
   表示されているレビュー数の数字、または評価の数字をクリックすると、レビュー一覧ページへ移動する。(localhost:3000/products/[商品ID]/reviews)
   
   レビュー一覧ページでレビューを投稿することができ、投稿後、レビュー一覧ページにリダイレクトされる。評価の内訳を選択すると、それらの数字から自動的に総合評価が算出される。
  
