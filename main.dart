 import 'package:test/test.dart';


/*
| Colocar cursores aqui para organização -> [   ]

	[ [1, 2] ]
	[ 
		[1, 2]
	]

	[ [1], [2] ]
	[
		[1],
		[2]
	]

*/

// List<int>.generate(3, (int index) => index * index);

// List<List<int>>.generate(4, (int index) => List<int>.generate(3, (int index) => 0));
// List<List<int>>.filled(4, List<int>.filled(3, 0));

// list[linha][coluna] <--

List<List<int>> espiral(int colunas, int linhas) {
	
    var list = List<List<int>>.generate(linhas, (int index) => List<int>.generate(colunas, (int index) => 0));

    if (linhas == 1) {
			// Preenchendo a linha para a direita
			for(var i = 0; i< colunas; i++ ){
				list[0][i] = i+1;
			}
		} else if (colunas == 1) {
			for(var i = 0; i < linhas; i++) {
				list[i][0] = i+1;
			}
		} else {
      var contador = 0;

      var inicioEsquerdo = 0;
      var inicioSuperior = 0;
      var inicioDireita = colunas-1;
      var inicioInferior = linhas-1;
      while(contador < colunas*linhas){

        
        //for da esquerda para direita
        for(var i = inicioEsquerdo; i < colunas; i++){
          if(list[inicioSuperior][i] != 0) 
            break;

          contador++;
          if(contador <= colunas*linhas){
            list[inicioSuperior][i] = contador;
          }
          

        }
        inicioEsquerdo++;


        
        //for da cima para baixo
        for(var j = inicioSuperior; j < linhas; j++){
          if(list[j][inicioDireita] != 0) 
            break;
          contador++;
          if(contador <= colunas*linhas){
            list[j][inicioDireita] = contador;
          }
          
        }
        inicioSuperior++;

        //for da direita para esquerda
        for(var i = inicioDireita; i >= inicioEsquerdo;i--){
          if(list[inicioInferior][i] != 0) 
            break;

          contador++;
          if(contador <= colunas*linhas){
            list[inicioSuperior][i] = contador;
          }
          
        }
        inicioDireita--;

        
        //for de baixo para cima
        for(var j = inicioInferior; j >= inicioSuperior; j--){
          if(list[j][inicioEsquerdo] != 0) 
            break;

          contador++;
          if(contador <= colunas*linhas){
            list[j][inicioEsquerdo] = contador;
          }
          
        }
        inicioInferior--;

      }
      print(list);
    }
    return list;
}



void main() {
	test('Entrada básica (1 coluna 1 linha)', () {
		expect(espiral(1, 1), equals([[1]]));
	});

  test('Entrada com (2 colunas e 1 linha)', () {
    expect(espiral(2, 1), equals([[1,2]]));
  });

   test('Entrada com (4 colunas e 1 linha)', () {
    expect(espiral(4, 1), equals([[1,2,3,4]]));
  });

  test('Entrada com (1 coluna e 2 linhas)', () {
    expect(espiral(1, 2), equals([[1],[2]]));
  });

  test('Entrada com (1 coluna e 4 linhas)', () {
    expect(espiral(1, 4), equals([[1],[2],[3],[4]]));
  });

  test('Entrada com (2 coluna e 2 linhas)', () {
    expect(espiral(2, 2), equals([[1,2],[4,3]]));
  });

  test('Entrada com (3 coluna e 4 linhas)', () {
    expect(espiral(3, 4), equals([ [1,2,3],[10,11,4],[9, 12,5], [8,7,6] ]));
  });

 /*
01 02 03
10 11 04
09 12 05
08 07 06
 */

//  test('String.split() splits the string on the delimiter', () {
//    var string = 'foo,bar,baz';
//    expect(string.split(','), equals(['foo', 'bar', 'baz']));
//  });

}
