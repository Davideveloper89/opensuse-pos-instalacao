#!/bin/bash

# Verifica se o script está rodando como root
if [[ $EUID -ne 0 ]]; then
   echo "Este script precisa ser executado como root."
   exit 1
fi

echo "=== Iniciando o script de pós-instalação para openSUSE ==="

# Atualização do sistema
echo ">>> Atualizando o sistema..."
zypper refresh && zypper update -y

# Instalar pacotes essenciais
echo ">>> Instalando pacotes essenciais..."
zypper install -y vim git curl wget htop gcc make python3 python3-pip zip unzip tar gzip bzip2 rsync

# Instalar ferramentas de desenvolvimento
echo ">>> Instalando ferramentas de desenvolvimento..."
zypper install -y docker-compose nodejs npm

# Instalar Visual Studio Code (se necessário)
echo ">>> Instalando Visual Studio Code..."
zypper addrepo https://packages.microsoft.com/yumrepos/vscode vscode
zypper refresh
zypper install -y code

# Configuração do Docker
echo ">>> Instalando Docker (caso não esteja instalado)..."
zypper install -y docker
echo ">>> Configurando o Docker..."
systemctl enable docker
systemctl start docker

# Instalar pacotes para virtualização
echo ">>> Instalando pacotes para virtualização..."
zypper install -y virtualbox virtualbox-host-kmp-default vagrant qemu-kvm libvirt virt-manager

# Configuração de virtualização
echo ">>> Configurando virtualização..."
systemctl enable libvirtd
systemctl start libvirtd
usermod -aG libvirt $(whoami)

# Instalar pacotes para multimídia e produtividade
echo ">>> Instalando pacotes de multimídia e produtividade..."
zypper install -y libreoffice gimp inkscape blender audacity obs-studio

# Instalar o firewalld, caso não esteja presente
echo ">>> Instalando e configurando o firewall..."
zypper install -y firewalld
systemctl enable firewalld
systemctl start firewalld
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --reload

# Criar diretórios úteis
echo ">>> Criando diretórios úteis..."
mkdir -p ~/Projetos ~/Downloads ~/Documentos ~/Mídia/{Músicas,Filmes,Imagens}

# Configuração de desempenho
echo ">>> Configurando desempenho do sistema..."
echo "vm.swappiness=10" >> /etc/sysctl.conf
echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.conf
sysctl -p

# Limpeza de pacotes desnecessários
echo ">>> Limpando pacotes desnecessários..."
zypper clean

# Mensagem de finalização
echo "=== Script de pós-instalação concluído com sucesso! ==="
echo "Reinicie o sistema para aplicar todas as configurações."
