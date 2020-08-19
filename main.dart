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

List<List<int>> espiral(int colunas, int linhas) {
	if(linhas == 1 && colunas == 1){
    return [[1]];
  }
  else{
    var list = List<List<int>>.generate(linhas, (int index) => List<int>.generate(colunas, (int index) => 0));

    print(list);
    for(colunas )
    return list;
  }
}



void main() {
	test('Entrada básica (1 coluna 1 linha)', () {
		expect(espiral(1, 1), equals([[1]]));
	});

  test('Entrada com (2 colunas e 1 linha)', () {
    expect(espiral(2, 1), equals([[1,2]]));
  });

  

  

//  test('String.split() splits the string on the delimiter', () {
//    var string = 'foo,bar,baz';
//    expect(string.split(','), equals(['foo', 'bar', 'baz']));
//  });

}