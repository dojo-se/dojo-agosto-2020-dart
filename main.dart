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



List<List<int>> espiral(int colunas, int linhas) {
	if(linhas == 1 && colunas == 1){
    return [[1]];
  }
  else{
    return [[1,2]];
  }
}



void main() {
	test('Entrada básica (1 coluna 1 linha)', () {
		expect(espiral(1, 1), equals([[1]]));
	});

  test('Entrada com (2 colunas e 1 linha)', () {
    expect(espiral(2, 1), equals([[1,2]]));
  });

  test('Entrada com (2 colunas e 2 linhas)', () {
    expect(espiral(2, 1), equals([[1,2],[4,3]]));
  });

  

//  test('String.split() splits the string on the delimiter', () {
//    var string = 'foo,bar,baz';
//    expect(string.split(','), equals(['foo', 'bar', 'baz']));
//  });

}