# Star Wars PI App (Flutter)

Aplicativo Flutter desenvolvido como trabalho avaliativo, com o objetivo de consumir uma API e criar uma experiência de navegação entre personagens.

**Por que Star Wars?**
Originalmente, a ideia era usar a API do Breaking Bad, mas devido a problemas de funcionamento, optei pela API de Star Wars, que se mostrou mais estável e prática para o escopo do projeto.

---

## Funcionalidades

* Listagem de personagens na tela inicial (`home_screen.dart`).
* Tela de detalhes para cada personagem selecionado (`character_details_screen.dart`).
* Organização do projeto em arquivos separados:

  * `main.dart`: ponto de entrada da aplicação.
  * `api_service.dart`: responsável por fazer requisições HTTP à API.
  * `person.dart`: modelo que representa os dados de cada personagem.

**Observação:** Neste projeto, optei por não trabalhar com imagens, pois enfrentei algumas dificuldades técnicas. Para compensar, caprichei no visual e na organização da interface.

---

## Estrutura do Projeto

```
lib/
├── main.dart
├── models/
│   └── person.dart
├── services/
│   └── api_service.dart
├── screens/
│   ├── home_screen.dart
│   └── character_details_screen.dart
```

---

## Objetivo do Projeto

Desenvolver um app Flutter que apresentasse:

* Uma lista de personagens consumida via API.
* Uma navegação fluida para a tela de detalhes.
* Organização modular do código.
* Tratamento de erros e carregamento de dados.
* (Opcional) Animações e transições com o Hero widget.

---

## Como Executar

1. Abra o projeto no seu editor Flutter (VS Code, Android Studio etc.).
2. Execute o comando ou atalho:

   ```
   F5
   ```

   ou

   ```
   flutter run
   ```
3. Aguarde o carregamento e navegue pelas telas.

---

## Aprendizados

* Consumo de API e transformação de dados em modelos Dart.
* Navegação entre telas no Flutter.
* Organização de código em múltiplos arquivos.
* Desafios com imagens e como contornar limitações priorizando a experiência do usuário.

---

Geovanna de Sousa Krüger
MIDS 76

---
