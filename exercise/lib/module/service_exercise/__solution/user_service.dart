import 'package:exercise/module/service_exercise/__solution/list_extension.dart';

class ExUserService {
  static final List<Map> _items = [];

  //Dengan sampel di ProductService di soal sebelumnya
  //Isilah semua function disini
  //Klik tombol test
  //Jika nomor 9-12 bewarna hijau, test selesai
  get() {
    return _items.get();
  }

  add(Map value) {
    _items.add(value);
  }

  delete(int id) {
    _items.removeWhere((i) => i["id"] == id);
  }

  update({
    required int id,
    required Map value,
  }) {
    var index = _items.indexWhere((item) => item["id"] == id);
    _items[index] = value;
  }

  count() {
    return _items.length;
  }
}
