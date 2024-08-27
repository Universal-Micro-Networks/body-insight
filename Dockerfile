# ベースイメージを指定
FROM python:3.12.4-slim

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージをインストール
RUN pip install --upgrade pip

# 依存関係をインストール
#COPY src/ body_insight
COPY requirements.lock requirements.lock
COPY pyproject.toml pyproject.toml
COPY README.md README.md

RUN pip install -r requirements.lock
ENV PYTHONPATH=/app

# コマンドを実行
CMD ["uvicorn", "body_insight.app:app", "--host", "0.0.0.0", "--port", "5500", "--reload"]
