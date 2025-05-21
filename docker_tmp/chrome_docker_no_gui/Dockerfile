# Используем Ubuntu как базовый образ
FROM ubuntu:22.04

# Устанавливаем зависимости
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    curl \
    fonts-liberation \
    libappindicator3-1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libcairo2 \
    libfontconfig1 \
    libgbm1 \
    libgdk-pixbuf2.0-0 \
    libgtk-3-0 \
    libnspr4 \
    libnss3 \
    libpango-1.0-0 \
    libx11-xcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    xdg-utils \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем Google Chrome
RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && apt-get update \
    && apt-get install -y ./google-chrome-stable_current_amd64.deb \
    && rm google-chrome-stable_current_amd64.deb

# Добавляем пользователя для безопасного запуска Chrome
RUN useradd -m chromeuser && chown -R chromeuser:chromeuser /home/chromeuser

# Переключаемся на пользователя chromeuser
USER chromeuser

# Устанавливаем точку входа для запуска Chrome в headless-режиме
ENTRYPOINT ["google-chrome", "--no-sandbox", "--headless", "--disable-gpu", "--remote-debugging-port=9222"]
