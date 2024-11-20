# Script de Pós-Instalação para openSUSE

Este repositório contém um script de pós-instalação automatizado para o openSUSE, desenvolvido para ajudar a configurar rapidamente o sistema após a instalação. O script foi projetado para facilitar a configuração de um ambiente de trabalho funcional, especialmente para desenvolvedores e usuários que buscam otimizar a instalação do openSUSE com ferramentas essenciais e configurações recomendadas.

## Funcionalidades

O script realiza uma série de tarefas automatizadas que garantem que seu sistema esteja pronto para o uso diário e o desenvolvimento. As principais funcionalidades incluem:

- **Atualização do Sistema**: O script atualiza automaticamente todos os pacotes e repositórios do openSUSE, garantindo que o sistema tenha as últimas versões de pacotes e correções de segurança. Ele também realiza uma atualização do sistema de uma maneira simples e eficiente.
  
- **Instalação de Pacotes Essenciais**: O script instala diversos pacotes essenciais, incluindo ferramentas de linha de comando, editores de texto, utilitários de rede e ferramentas de gerenciamento de pacotes. Isso garante que o sistema tenha os pacotes mais comuns para uso geral.

- **Instalação de Ferramentas de Desenvolvimento**: O script instala ferramentas essenciais para desenvolvedores, como o **Visual Studio Code**, **Git**, **Docker**, e outras que são amplamente utilizadas no desenvolvimento de software. Essas ferramentas são configuradas para facilitar a produtividade desde o primeiro momento.

- **Configuração do Docker e Virtualização**: O script configura o Docker, facilitando a criação e o gerenciamento de containers. Ele também instala as ferramentas necessárias para a virtualização, como **KVM** e **QEMU**, permitindo a criação de máquinas virtuais.

- **Configuração de Firewall**: O script configura o firewall com a ferramenta **firewalld**, que oferece uma maneira robusta de gerenciar as regras de rede e proteger o sistema contra acessos não autorizados.

- **Ajustes de Desempenho**: Para garantir um bom desempenho do sistema, o script realiza ajustes de parâmetros do sistema, como configurações de swap e parâmetros de cache, otimizando o uso de memória e o desempenho geral do sistema.

- **Criação de Diretórios e Organização**: O script organiza automaticamente o diretório `home`, criando diretórios úteis para trabalho, como **Projetos**, **Documentos**, **Scripts** e outros. Isso ajuda a manter o ambiente de trabalho mais organizado e pronto para uso.

- **Instalação de Ferramentas de Rede**: Inclui a instalação de ferramentas essenciais de rede, como **curl**, **wget**, **nmap**, entre outras, para garantir que você tenha tudo o que precisa para administrar redes e testar conexões.

## Como Usar

Para usar o script, basta seguir os seguintes passos:

1. Clone o repositório com o comando:

   `git clone https://github.com/Davideveloper89/opensuse-pos-instalacao.git`

   Após clonar, entre no diretório do repositório:

   `cd opensuse-pos-instalacao`

2. Torne o script executável com o comando:

   `chmod +x pos_instalacao.sh`

3. Execute o script com permissões de superusuário:

   `sudo ./pos_instalacao.sh`

O script começará a execução automaticamente e realizará todas as etapas descritas acima. Ele foi projetado para ser simples de usar, com o mínimo de interação necessária.

## Personalização

Se você quiser ajustar o script para suas necessidades específicas, basta editar o arquivo `pos_instalacao.sh`. O script é modular e bem comentado, facilitando a modificação para incluir ou remover pacotes e configurações de acordo com suas preferências.

## Contribuição

Se você tiver sugestões de melhorias, correções ou quiser contribuir com novos recursos, fique à vontade para abrir uma **issue** ou enviar um **pull request**. Suas contribuições são bem-vindas!

## Licença

Este repositório está licenciado sob a **MIT License**. Veja o arquivo `LICENSE` para mais detalhes.
