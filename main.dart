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
			var x = 0;
			var dx = 1; // dx==1 DIREITA | dx==-1 ESQUERDA
			var y = 0;
			var dy = 0; // dy==1 BAIXO | dy==-1 CIMA
      var contador = 0;

      var inicioEsquerdo = 0;
      var inicioSuperior = 0;
      var inicioDireita = coluna-1;
      while(contador < colunas*linhas){
        
        contador++;
        //for da esquerda para direita
        for(var i = inicioEsquerdo; i < colunas, i++){
          if(list[i][inicioSuperior] != 0) break;

          list[i][inicioSuperior] = contador;
        }
        inicioEsquerdo++;

        //for da cima para baixo
        for(var j = inicioSuperior; j < linhas, j++){
          if(list[i][j] != 0) break;

          list[i][j] = contador;
        }
        inicioSuperior++;

        //for da direita para esquerda

        //for de baixo para cima
      }

			

				// dx = ?
				// dy = ?
				//x += dx;
				//y += dy;
			}
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


//  test('String.split() splits the string on the delimiter', () {
//    var string = 'foo,bar,baz';
//    expect(string.split(','), equals(['foo', 'bar', 'baz']));
//  });

}