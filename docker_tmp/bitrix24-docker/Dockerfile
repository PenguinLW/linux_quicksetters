# Используем официальный образ PHP 8.1 с Apache
FROM php:8.1-apache

# Устанавливаем системные зависимости и PHP-модули
RUN apt-get update && apt-get install -y \
    # Базовые утилиты
    unzip \
    # Зависимости для GD
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    # Зависимости для работы с базами данных
    libpq-dev \
    libzip-dev \
    # Зависимости для интернационализации
    libicu-dev \
    # Зависимости для XML
    libxml2-dev \
    # Зависимости для LDAP
    libldap2-dev \
    # SSH-сервер (опционально)
    openssh-server \
    && rm -rf /var/lib/apt/lists/*

# Настраиваем и устанавливаем GD с поддержкой форматов
RUN docker-php-ext-configure gd \
    --with-freetype \
    --with-jpeg \
    --with-webp \
    && docker-php-ext-install -j$(nproc) gd

# Устанавливаем остальные PHP-расширения
RUN docker-php-ext-install \
    zip \
    intl \
    mysqli \
    pdo pdo_mysql \
    ldap \
    && docker-php-ext-enable opcache

# Настраиваем Apache
RUN a2enmod rewrite headers

# Настройка SSH (опционально)
RUN mkdir /var/run/sshd \
    && echo 'root:your_strong_password' | chpasswd \
    && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Копируем конфигурацию PHP
COPY php.ini /usr/local/etc/php/conf.d/custom.ini

# Стандартная команда для запуска Apache
CMD ["apache2-foreground"]
