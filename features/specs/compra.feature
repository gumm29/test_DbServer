#language: pt

@fluxo_compra
Funcionalidade: Compra - validar passos de um fluxo de compra em e-commerce

Cenario: Acessar site AutomationPratice e escolher um produto e realizar uma compra
  Dado escolher um produto na home
  Quando realizar o fluxo de checkout
  Então validar compra no final do checkout
