import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_app.dart';

void main() {
  group("test triangle app", () {
    test("Should throw error when side less than 1", () {
      expect(() => detectTriangle(1, -1, 3), throwsA(isA<Exception>()));
      expect(() => detectTriangle(2, 1, -3), throwsA(isA<Exception>()));
    });

    test('Should throw exception when a + b <= c', () {
      expect(() => detectTriangle(4, 1, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(10, 1, 3), throwsA(isA<Exception>()));
    });

    test('Should return Segitiga sama sisi when all side are equal', () {
      expect(detectTriangle(1, 1, 1), "Segitiga sama sisi");
      expect(detectTriangle(1, 2, 2), isNot("Segitiga sama sisi"));
    });

    test('Should return "Segitiga sama kaki" when only 2 side are equal', () {
      expect(detectTriangle(3, 3, 4), "Segitiga sama kaki");
      expect(detectTriangle(3, 2, 3), "Segitiga sama kaki");
      expect(detectTriangle(1, 2, 2), "Segitiga sama kaki");
    });

    test(
        'Should return "Segitiga sembarang" when all side are not equal each other',
        () {
      expect(detectTriangle(4, 2, 3), "Segitiga sembarang");
      expect(detectTriangle(1, 3, 3), isNot("Segitiga sembarang"));
      expect(detectTriangle(3, 3, 3), isNot("Segitiga sembarang"));
    });
  });
}
