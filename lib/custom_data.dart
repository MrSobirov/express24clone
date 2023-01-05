class CustomData {
  static const List<Map<String, String>> shops = [
    {
      "name": "The Mart",
      "image": "2",
    },
    {
      "name": "Touch Of Matcha",
      "image": "4",
    },
    {
      "name": "Yves Rocher",
      "image": "5",
    },
    {
      "name": "Beauty Holic",
      "image": "6",
    },
    {
      "name": "GOODVEEN",
      "image": "7",
    },
    {
      "name": "The Flower Factory",
      "image": "8",
    },
    {
      "name": "The Loaf",
      "image": "1",
    },
    {
      "name": "Аптека OXYmed ЦУМ",
      "image": "3",
    },
  ];

  static const List<String> categories = [
    "Favorites", "Uzcard", "Новинки", "Базары", "Fast Food", "Национальная", "Азиатская", "Кофейня",
    "Пиццерия", "Здоровье", "Европейская", "Кондитерская", "Барбекю", "Продукты", "Мороженое", "ПП"
  ];

  static List<Map<String, dynamic>> restaurants = [
    {
      "name": "Kumpurci",
      "image": "7",
      "liked": false,
      "categories": ["Coffee", "European", "Newly"],
      "rating": null,
      "orders": "50+",
      "delivery_cost": "13 200 sum"
    },
    {
      "name": "Navvat",
      "image": "2",
      "liked": false,
      "categories": ["Asian",  "European"],
      "rating": 4.6,
      "orders": "400+",
      "delivery_cost": "13 000 sum"
    },
    {
      "name": "Broadway Lounge Bar",
      "image": "4",
      "liked": false,
      "categories": ["European", "Barbeque"],
      "rating": null,
      "orders": "300+",
      "delivery_cost": "13 000 sum"
    },
    {
      "name": "BS Cafe",
      "image": "1",
      "liked": false,
      "categories": ["European"],
      "rating": 4.5,
      "orders": "500+",
      "delivery_cost": "13 000 sum"
    },
    {
      "name": "5 Elements",
      "image": "5",
      "liked": false,
      "categories": ["Coffee"],
      "rating": 4.7,
      "orders": "200+",
      "delivery_cost": "14 000 sum"
    }
  ];
}