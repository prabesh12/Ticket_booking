class Dessert {
  final String name;
  final int sweetnessIndex;
  Dessert(this.name, this.sweetnessIndex);
}

void main() {
  List<Dessert> desserts = [
    Dessert('Chocolate Cake', 8),
    Dessert('Vanilla Ice Cream', 6),
    Dessert('Strawberry Cheesecake', 9),
    Dessert('Blueberry Muffin', 7),
    Dessert('Apple Pie', 8),
    Dessert('Peach Cobbler', 7),
    Dessert('Chocolate Chip Cookie', 6),
    Dessert('Creme Brulee', 9),
    Dessert('Key Lime Pie', 8),
    Dessert('Banana Bread', 7),
  ];
  List<String> result =[];
  List<Dessert> sortedList = desserts
    ..sort((a, b) => a.sweetnessIndex > b.sweetnessIndex ? 1 : 0);

  for (var dessert in sortedList) {
   result.add('${dessert.name}: ${dessert.sweetnessIndex}');
  }
  print(result);
}
