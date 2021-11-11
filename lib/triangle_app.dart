detectTriangle(num sideA, num sideB, num sideC) {
  final sides = [sideA, sideB, sideC];
  sides.sort();

  sides.forEach((side) {
    if (side < 1) {
      throw Exception();
    }
  });

  if (sides[0] + sides[1] <= sides[2]) {
    throw Exception("Inequal Triangle");
  }

  if (sides[0] == sides[1] && sides[1] == sides[2]) {
    return "Segitiga sama sisi";
  }

  if (sides[0] == sides[1] || sides[1] == sides[2]) {
    return "Segitiga sama kaki";
  }

  if (sides[0] != sides[1] && sides[0] != sides[2] && sides[1] != sides[2]) {
    return "Segitiga sembarang";
  }
}
