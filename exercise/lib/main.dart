import 'package:exercise/module/dashboard/view/dashboard_view.dart';
import 'package:exercise/state_util.dart';
import 'package:flutter/material.dart';

import 'module/service_exercise/__solution/__index.dart';

/*
Latihan soal kelas Online with DenyOcr
https://capekngoding.com


Panduan pengerjaan Latihan Soal:

1. Clone project:
https://github.com/denyocrworld/exercise
2. Push ke repository masing2:
3. Kerjakan semua soalnya
4. Kalau sudah selesai, di record, bagian kiri vscode, bagian kanan Emulator/Vysor/Windows
- Recordlah dengan .obs
- Upload video-nya ke Youtube.
5. Pastikan ketika di klik tombol test, semua-nya sudah hijau
6. Isi Excell kalau sudah selesai
https://docs.google.com/spreadsheets/d/14nCXyfxeJT-Ywd0bKSy_25M4FTUTudgA8bSPHhOmFBE/edit#gid=0
*/

void main() {
  //Daftar isi latihan soalnya bisa dibuka disini yaa:
  //CTRL+Left Click
  var _ = exerciseList;
  //--------------------------
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData.dark().copyWith(),
      home: const DashboardView(),
    );
  }
}
