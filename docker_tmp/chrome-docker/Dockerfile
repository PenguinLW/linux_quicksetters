FROM ubuntu:22.04

# Устанавливаем зависимости для Chrome, Xvfb и VNC
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
    xvfb \
    x11vnc \
    fluxbox \
    --no-install-recommends \
    && apt-get install -f -y \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем Google Chrome
RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome-stable_current_amd64.deb || apt-get install -f -y \
    && rm google-chrome-stable_current_amd64.deb

# Добавляем пользователя для безопасного запуска
RUN useradd -m chromeuser && chown -R chromeuser:chromeuser /home/chromeuser

# Настраиваем точку входа для запуска Xvfb, fluxbox, VNC и Chrome
RUN echo '#!/bin/bash\nXvfb :99 -screen 0 1920x1080x24 &\nfluxbox &\nx11vnc -display :99 -forever -nopw &\ngoogle-chrome --no-sandbox' > /entrypoint.sh \
    && chmod +x /entrypoint.sh

# Переключаемся на пользователя chromeuser
USER chromeuser

# Указываем точку входа
ENTRYPOINT ["/entrypoint.sh"]
