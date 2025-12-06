---
layout: default
title: G-Portugol
---

## 🚀 Começando

Programa **Olá Mundo**:

```gportugol
algoritmo OlaMundo;

início
   imprima("Olá, Mundo!");
fim
```

Programa **FizzBuzz**:

```gportugol
algoritmo fizzbuzz;

variáveis
    i : inteiro;
fim-variáveis

início
    para i de 1 até 100 faça
        se i % 15 = 0 então
            imprima("FizzBuzz");
        senão
            se i % 3 = 0 então
                imprima("Fizz");
            senão
                se i % 5 = 0 então
                    imprima("Buzz");
                senão
                    imprima(i);
                fim-se
            fim-se
        fim-se
    fim-para
fim
```

---

## 📘 Manual

Aqui estão os materiais para aprender o G-Portugol:

- [Online](https://github.com/gportugol/gpt/wiki/Manual)
- [Em PDF](https://github.com/user-attachments/files/23316204/manual.pdf)

---

## 📥 Downloads

Todas as versões e binários do G-Portugol estão disponíveis na página de
[releases do GitHub](https://github.com/gportugol/gpt/releases)

---

## ❤️ Sobre o projeto

G-Portugol é um dialeto da linguagem Portugol (ou português estruturado), muito
usada para descrever algoritmos de forma livre e espontânea, em português. Em
geral, livros dedicados ao ensino de algoritmos, lógica e estruturas de dados
incorporam alguma forma dessa linguagem.

A proposta do projeto é oferecer uma implementação para a linguagem G-Portugol,
fornecendo ferramentas que ofereçam recursos de edição, compilação e execução de
algoritmos, de forma a favorecer estudantes iniciantes no aprendizado de
desenvolvimento de software, bem como professores que ensinam disciplinas
relacionadas.

Atualmente, o projeto oferece duas aplicações:

- [GPT](https://github.com/gportugol/gpt) – o compilador;
- [GPTEditor](https://github.com/gportugol/gpteditor) – o editor gráfico.
