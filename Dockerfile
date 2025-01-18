# ベースイメージ
FROM node:16

# 作業ディレクトリを設定
WORKDIR /app

# パッケージファイルをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのコードをコピー
COPY . .

# ポート3000を公開
EXPOSE 3000

# アプリケーションを起動
CMD ["npm", "start"]
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install --production
CMD ["node", "/app/src/index.js"]
