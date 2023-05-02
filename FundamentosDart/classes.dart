//Usando classes
class Produto{
  String nome;
  double preco;
  
  //Constructor v1
// Produto(String nome, double preco){
//     this.nome = nome;
//     this.preco = preco;
//   }
  
  //Construtor v2 (Parametros posicionais)
//   Produto(this.nome, this.preco);
  

    //Construtor v3 (Parametros nomeado)
  Produto({this.nome, this.preco = 9.99});
}

//Método com parametro nomeado e parametros posicionais
void imprimirProduto(int qtde, {String nome, double preco}){
    for(var i = 0; i < qtde; i++)
    print("**IMPRIMINDO PRODUTO*** \n\n O produto ${nome} tem preço R\$${preco}!!!");
}

main(){
//Sem Construtor
//   var p1 = new Produto();
//   p1.nome = "Caneta";
//   p1.preco = 4.95;

// var p2 = new Produto();
// p2.nome = "Geladeira";
// p2.preco = 1454.99;



//Com construtor (v1 ou v2)
// var p1 = Produto("Caneta",4.95);
// var p2 = Produto("Geladeira", 1454.99);

//Com construtor (v3)
var p1 = Produto(nome: "Caneta");
var p2 = Produto(nome: "Geladeira", preco: 1454.99);

  print("O produto ${p1.nome} tem preço R\$${p1.preco}");
  print("O produto ${p2.nome} tem preço R\$${p2.preco}");

    imprimirProduto(1,nome: p1.nome, preco: p1.preco);
    imprimirProduto(4,nome: p2.nome, preco: p2.preco);
}