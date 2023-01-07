class AdvOrderService {
  static final List<Map> _items = [
    {
      "id": 1,
      "created_at": DateTime(2023, 1, 1),
      "customer": "John Doe",
      "payment_method": "BCA",
      "items": [
        {
          "id": 1,
          "product_name": "GG FILTER 12",
          "category": "Rokok",
          "price": 25,
          "qty": 3,
        },
        {
          "id": 2,
          "product_name": "SK KRETEK 12",
          "category": "Rokok",
          "price": 31,
          "qty": 2,
        },
        {
          "id": 3,
          "product_name": "MIE INDOMIE GORENG",
          "category": "Mie",
          "price": 41,
          "qty": 4,
        }
      ],
    },
    {
      "id": 2,
      "created_at": DateTime(2023, 1, 1),
      "customer": "Jessica Lim",
      "payment_method": "Dana",
      "items": [
        {
          "id": 2,
          "product_name": "SK KRETEK 12",
          "category": "Rokok",
          "price": 31,
          "qty": 10,
        },
        {
          "id": 3,
          "product_name": "MIE INDOMIE GORENG",
          "category": "Mie",
          "price": 41,
          "qty": 23,
        }
      ],
    },
  ];

  //Return semua order yang ada di _items;
  get() {
    //---
  }

  //Get orders by id
  //Gunakan .indexWhere
  //Return Map dari item dengan id N
  Map? getById(int id) {
    return null;
    //---
  }

  //Get orders by custom fields
  //Return semua List yang memiliki fieldName == N
  // Contoh: getItemsByCustomField("payment_method","BCA");
  // Contoh: getItemsByCustomField("customer","Jessica Lim");
  List getItemsByCustomField(String fieldName, String category) {
    return [];
    //---
  }

  count() {
    return _items.length;
  }
}
