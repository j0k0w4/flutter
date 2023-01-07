class AdvProductService {
  static final List<Map> _items = [
    {
      "id": 1,
      "product_name": "GG FILTER 12",
      "category": "Rokok",
      "price": 25,
    },
    {
      "id": 2,
      "product_name": "SK KRETEK 12",
      "category": "Rokok",
      "price": 31,
    },
    {
      "id": 3,
      "product_name": "MIE INDOMIE GORENG",
      "category": "Mie",
      "price": 41,
    }
  ];

  reset() {
    _items.clear();
    _items.addAll([
      {
        "id": 1,
        "product_name": "GG FILTER 12",
        "category": "Rokok",
        "price": 25,
      },
      {
        "id": 2,
        "product_name": "SK KRETEK 12",
        "category": "Rokok",
        "price": 31,
      },
      {
        "id": 3,
        "product_name": "MIE INDOMIE GORENG",
        "category": "Mie",
        "price": 41,
      }
    ]);
  }

  //Get products by search query
  //Gunakan .startsWith
  //Jangan lupa gunakan .toLowerCase pada product_name dan juga search
  get({
    required String search,
  }) {
    //---
  }

  //Get products by id
  //Gunakan .indexWhere
  //Return Map dari item dengan id N
  Map? getById(int id) {
    return null;
    //---
  }

  //Get products by category
  //Gunakan .indexWhere
  //Return semua List yang memiliki category N
  List getByCategory(String category) {
    return [];
    //---
  }

  //hapus semua item yang ada di _items
  deleteAll() {}

  count() {
    return _items.length;
  }
}
