enum CoffeeCategory{
   hotCoffee,
   coldCoffee,
   cappuccino
}

extension CoffeeCategoryExtension on CoffeeCategory {
  String get label {
    switch (this) {
      case CoffeeCategory.hotCoffee:
        return "Hot Coffee";
      case CoffeeCategory.coldCoffee:
        return "Cold Coffee";
      case CoffeeCategory.cappuccino:
        return "Cappuccino";
    }
  }
}