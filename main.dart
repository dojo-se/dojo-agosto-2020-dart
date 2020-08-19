import 'package:test/test.dart';


/*
| Colocar cursores aqui para organização -> [   ]
*/



List<List<int>> espiral(int colunas, int linhas) {
	return [[1]];
}

void main() {
	test('Entrada básica (1 coluna 1 linha)', () {
		expect(espiral(1, 1), equals([[1]]));
	});

//  test('String.split() splits the string on the delimiter', () {
//    var string = 'foo,bar,baz';
//    expect(string.split(','), equals(['foo', 'bar', 'baz']));
//  });

}