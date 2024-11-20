#!/usr/bin/env bash

# Atualiza os pacotes do sistema
echo "Atualizando pacotes do sistema..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Instala o Apache (apache2)
echo "Instalando o Apache HTTP Server..."
sudo apt-get install apache2 -y

# Copia os arquivos HTML para o diretório do Apache
echo "Copiando os arquivos HTML para o diretório do Apache..."
sudo cp -r /vagrant/html/* /var/www/html/

# Inicia o Apache e configura para iniciar automaticamente no boot
echo "Iniciando o Apache e habilitando no boot..."
sudo systemctl start apache2
sudo systemctl enable apache2

# Ajusta permissões para o Apache
echo "Ajustando permissões dos arquivos..."
sudo chown -R www-data:www-data /var/www/html/
