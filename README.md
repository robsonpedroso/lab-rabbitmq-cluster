# Lab - RabbitMQ

Projeto para testar o RabbitMQ com cluster.
Será gerado um master e 3 nós para o cluster.

## Introdução

Essas instruções fornecerão uma cópia do projeto em execução na sua máquina local para fins de desenvolvimento e teste.

### Prerequisitos

O que você precisa para baixar, rodar e disponibilizar.

* Vagrant
* VirtualBox

### Instalação

Após a execução do pre requisitos, segue um passo a passo de como rodar localmente.

Clonar o repositório

```
git clone git@github.com:robsonpedroso/lab-rabbitmq.git
```

Rodar o comando `vagrant up` para subir o server.

	- Esse comando vai subir uma maquina com o IP privado `192.168.101.10`;
	- Atualizar o `apt-get`;
	- Instalar o docker e o `docker-compose`;



Acesse o server com o comando `vagrant ssh` e execute o script `start_all.sh`.

	- A pasta raiz do projeto esta mapeada para a pasta `/curso/`;
	- Para executar o script `start_all.sh` basta acessar a pasta `cd /curso/`.
	- Executar o script como root `sudo ./start_all.sh`

Dados do RabbitMQ:
 - IP do servidor `192.168.101.10`
	- Porta do dashboard: `8080`
 - Usuário: `admin`
 - Senha: `123456`

## Publicação

Não  foi publicado

## Autores

* **Robson Pedroso** - *Projeto inicial* - [RobsonPedroso](https://github.com/robsonpedroso)

## License

[MIT](https://gist.github.com/robsonpedroso/98dc906d5896711f07a9cffbcc2776ea)

## Ferramentas

* [RabbitMQ](https://www.rabbitmq.com/getstarted.html)
* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)
