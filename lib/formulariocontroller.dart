class Produto {
  late final String nome;
  late final int quantidade;
  late final double valor;

  Produto(this.nome, this.quantidade, this.valor);

  @override
  String toString() {
    return "Produto{nome: $nome, quantidade: $quantidade, valor: $valor}";
  }
}
