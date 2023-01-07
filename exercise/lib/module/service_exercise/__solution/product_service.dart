import 'package:exercise/module/service_exercise/__solution/list_extension.dart';

class ExProductService {
  static final List<Map> _items = [];

  //Ini adalah contoh service
  //Uncomment kode2 dibawah
  //Klik tombol test
  //Jika poin 1-4 menjadi hijau
  //Tugas ini selesai
  /*
  ! .get() akan mengalami error
  ! perbaiki ini dengan mengimport extension
  */
  get() {
    //ctrl+.
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
