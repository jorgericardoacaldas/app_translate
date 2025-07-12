# app_translate

Este projeto é um estudo sobre Clean Architecture aplicado em Flutter, com integração a uma API externa de tradução de textos.

## Sobre o Projeto

O objetivo é demonstrar como estruturar um aplicativo Flutter utilizando os princípios da Clean Architecture, separando responsabilidades em diferentes camadas e facilitando a manutenção, testes e escalabilidade do código.

## Camadas da Clean Architecture

- **Presentation**: Responsável pela interface do usuário e interação com o usuário. No Flutter, são os widgets, páginas e controllers (como bloc/cubit).
- **Domain**: Contém as regras de negócio, entidades e casos de uso. Não depende de frameworks externos.
- **Data**: Implementa os contratos definidos na camada de domínio, realizando a comunicação com fontes de dados externas (APIs, bancos de dados, etc).
- **External**: Integrações externas, como serviços de tradução via API.

## Fluxo de Tradução

1. O usuário insere o texto na interface (Presentation).
2. A camada de apresentação aciona um caso de uso (Domain) para traduzir o texto.
3. O caso de uso solicita a tradução ao repositório (Data).
4. O repositório faz a requisição à API externa (External) e retorna o resultado para as camadas superiores.

## Tecnologias Utilizadas

- Flutter
- Dart
- API externa de tradução

## Objetivo

O projeto serve como referência para quem deseja aprender sobre Clean Architecture em Flutter, com exemplos práticos de separação de camadas e integração com serviços externos.