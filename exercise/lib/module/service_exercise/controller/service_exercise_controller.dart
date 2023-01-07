import 'dart:developer';

import 'package:exercise/module/service_exercise/__solution/adv_order_service.dart';
import 'package:exercise/module/service_exercise/__solution/adv_product_service.dart';
import 'package:exercise/module/service_exercise/__solution/customer_service.dart';
import 'package:exercise/module/service_exercise/__solution/product_service.dart';
import 'package:exercise/module/service_exercise/__solution/user_service.dart';
import 'package:flutter/material.dart';
import 'package:exercise/state_util.dart';
import '../view/service_exercise_view.dart';

class ServiceExerciseController extends State<ServiceExerciseView>
    implements MvcController {
  static late ServiceExerciseController instance;
  late ServiceExerciseView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool addTest = false;
  bool editTest = false;

  List testList = [
    //ProductService
    {
      "name": "Get product test",
      "success": false,
    },
    {
      "name": "Add product test",
      "success": false,
    },
    {
      "name": "Delete product test",
      "success": false,
    },
    {
      "name": "Update product test",
      "success": false,
    },
    {
      "name": "Get customer test",
      "success": false,
    },
    {
      "name": "Add customer test",
      "success": false,
    },
    {
      "name": "Delete customer test",
      "success": false,
    },
    {
      "name": "Update customer test",
      "success": false,
    },
    {
      "name": "Get user test",
      "success": false,
    },
    {
      "name": "Add user test",
      "success": false,
    },
    {
      "name": "Delete user test",
      "success": false,
    },
    {
      "name": "Update user test",
      "success": false,
    },
    {
      "name": "Get product where like",
      "success": false,
    },
    {
      "name": "Get product by id",
      "success": false,
    },
    {
      "name": "Get product by category",
      "success": false,
    },
    {
      "name": "Delete All",
      "success": false,
    },
    {
      "name": "Get orders",
      "success": false,
    },
    {
      "name": "Get orders by id",
      "success": false,
    },
    {
      "name": "Get orders by custom field",
      "success": false,
    },
  ];

  resetTest() {
    for (var test in testList) {
      test["success"] = false;
    }
  }

  test() {
    resetTest();
    productTest();
    setState(() {});
  }

  productTest() {
    try {
      int oldCount = -1;
      int newCount = -1;

      var productService = ExProductService();
      var customerService = ExCustomerService();
      var userService = ExUserService();
      var advProductService = AdvProductService();
      var advOrderService = AdvOrderService();

      getItemTest(productService, 0);
      addItemTest(productService, 1);
      deleteItemTest(productService, 2);
      updateItemTest(productService, 3);

      getItemTest(customerService, 4);
      addItemTest(customerService, 5);
      deleteItemTest(customerService, 6);
      updateItemTest(customerService, 7);

      getItemTest(userService, 8);
      addItemTest(userService, 9);
      deleteItemTest(userService, 10);
      updateItemTest(userService, 11);

      advProductService.reset();
      getItemWithSearchTest(advProductService, 12);
      getByIdItem(advProductService, 13);
      getItemsByCategory(advProductService, 14);
      deleteAllTest(advProductService, 15);

      getItemTest(advOrderService, 16);
      getByIdItem(advOrderService, 17);
      getItemsByCustomField(advOrderService, 18);
    } on Exception {
      print("Something wrong, all test will be failed");
      resetTest();
    }

    var numb = 1;
    for (var test in testList) {
      var status = test["success"] ? "✓" : "✖";
      log("$numb. $status ${test["name"]}");
      numb++;
    }
  }

  getItemTest(service, testIndex) {
    int oldCount = -1;
    int newCount = -1;
    var items = service.get();

    if (items is List) {
      testList[testIndex]["success"] = true;
    } else {
      return;
    }
  }

  getItemWithSearchTest(service, testIndex) {
    int oldCount = -1;
    int newCount = -1;
    var items = service.get(
      search: "GG",
    );

    if (items is List && items.length == 1) {
      testList[testIndex]["success"] = true;
    } else {
      return;
    }
  }

  getByIdItem(service, testIndex) {
    int oldCount = -1;
    int newCount = -1;
    var item = service.getById(1);

    if (item != null) {
      testList[testIndex]["success"] = true;
    } else {
      return;
    }
  }

  getItemsByCategory(service, testIndex) {
    int oldCount = -1;
    int newCount = -1;
    var items = service.getByCategory("Rokok");

    if (items is List && items.isNotEmpty && items.length == 2) {
      testList[testIndex]["success"] = true;
    } else {
      return;
    }
  }

  getItemsByCustomField(service, testIndex) {
    int oldCount = -1;
    int newCount = -1;
    var items = service.getItemsByCustomField("payment_method", "BCA");

    if (items is List && items.isNotEmpty && items.length == 1) {
      testList[testIndex]["success"] = true;
    } else {
      return;
    }
  }

  addItemTest(service, testIndex) {
    int oldCount = -1;
    int newCount = -1;

    oldCount = service.count();

    service.add({
      "id": DateTime.now().microsecondsSinceEpoch,
      "product_name": "GG FILTER",
      "price": 25,
    });

    service.add({
      "id": DateTime.now().microsecondsSinceEpoch + 1,
      "product_name": "SK KRETEK 12",
      "price": 31,
    });

    service.add({
      "id": DateTime.now().microsecondsSinceEpoch + 2,
      "product_name": "JR SUPER 12",
      "price": 23,
    });

    newCount = service.count();
    testList[testIndex]["success"] = oldCount != newCount;
  }

  deleteItemTest(service, testIndex) {
    int oldCount = -1;
    int newCount = -1;

    oldCount = service.count();

    List? newItems = service.get();
    if (newItems == null) return;
    if (newItems.isEmpty) return;
    service.delete(newItems.last["id"]);

    newCount = service.count();
    testList[testIndex]["success"] = oldCount != newCount;
  }

  deleteAllTest(service, testIndex) {
    int oldCount = -1;
    int newCount = -1;

    oldCount = service.count();
    service.deleteAll();

    newCount = service.count();
    testList[testIndex]["success"] = newCount == 0;
  }

  updateItemTest(service, testIndex) {
    int oldCount = -1;
    int newCount = -1;

    oldCount = service.count();

    List? anotherItems = service.get();
    if (anotherItems == null) return;
    if (anotherItems.isEmpty) return;

    var old = anotherItems.last;
    old["product_name"] = "CHANGED";
    service.update(
      id: old["id"],
      value: old,
    );

    var canotherItems = service.get();
    if (canotherItems.isEmpty) return;

    var onOld = canotherItems.last;
    if (onOld["product_name"] == "CHANGED") {
      testList[testIndex]["success"] = true;
    }
  }
}
