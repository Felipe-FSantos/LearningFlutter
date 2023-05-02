//Functions
int soma(int a, int b){
  return a + b;
}

//Methods
void sub(int a, dynamic b){
  print('O valor da subtração é: ${a-b}');
}

void main() {
  final r = soma(2,3);
  print('O valor da soma é: $r');
  sub(10,5);
  
  //Usando a Function exec
  final resultExec = exec(10,8, (a,b){
    return a * b + 100;
  });
  print ('O resultado da função \'exec\' é: $resultExec');
  
  //Usando a Function com ArrowFunction
  final resultExecA = exec(20,10, (a,b) => a * b + 300);
  
  print ('O resultado da função \'exec\' com ArrowFunction é: $resultExecA');  
}


//Função como parâmetro
int exec(int a, int b, int Function (int, int) fn){
  return fn(a,b);
}

