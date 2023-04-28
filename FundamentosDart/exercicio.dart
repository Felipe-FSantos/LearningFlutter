import 'dart:io';

main() {

print('Primeiro programa');

//Declaração de variáveis
variaveis.variavel();

//Listas
  listas.lista();

//conjuntos
  conjuntos.conjunto();

//Map +/- Dictionary
maps.map();
}




class variaveis {
  static void variavel() {
    int a = 3;
    double b = 3.1;
    bool estaChovendo = true;
    bool estaFrio = false;


    //Final
    final naoMuda = 3;

    //const
    const constante = 5;

    print(estaChovendo || estaFrio);

    //dynamics
    dynamic x = 'Teste';
    print('x é ${x.runtimeType}');
    x = 12345;
    print('x agora é ${x.runtimeType}');
    x = bool;
    print('x é ${x.runtimeType}');

    //inferencia de variavel
    var c = 'Você é bacana!';
    print(c is String);
  }
}

class listas {
  static void lista() {
    //Listas

    var nomes = ['Ana', 'Bia', 'Carlos'];
    nomes.add('Rafael');

    print(nomes.length);
    print(nomes.elementAt(0));
    print(nomes[3]);
  }
}

class conjuntos {
  static void conjunto() {
    //Conjuntos (Sets)
    var conjunto = {0, 1, 2, 3, 4, 4, 4, 4};

//Conjunto não aceita repetição
    print(conjunto.length);
    print(conjunto is Set);

    Set<int> conjuntoTipado = {0, 1, 2, 3, 4, 4, 4, 4};

    print(conjuntoTipado.length);
    print(conjuntoTipado is Set);
  }
}


class maps{
  static void map(){
    Map<String, double> notasDosAlunos ={
      'Ana' : 9.7,
      'Bia' : 9.3,
      'Carlos': 7.8
    };

    for(var chave in notasDosAlunos.keys){
      print('chave = $chave'); //interpolação de strings
    }

    for(var valor in notasDosAlunos.values){
      print('valor = $valor'); 
    }

    for(var registro in notasDosAlunos.entries){
      print('${registro.key} = ${registro.value}'); 
    }
  }
}
