import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class LocalDataService {
  dynamic getTempImageFile(String filename) async {
    final filePath = '${await getPath()}/$filename';
    if (File(filePath).existsSync()) {
      return await File(filePath).readAsBytes();
    }
    return null;
  }

  Future<String> convertUint8ListToFile(
      Uint8List uint8ListData, String filename) async {
    final filePath = '${await getPath()}/$filename';
    if (!await Directory(await File(filePath).parent.path).exists()) {
      await Directory(File(filePath).parent.path).create();
    }
    final file = await File(filePath).create();
    if (File(filePath).existsSync()) {
      return await getPath();
    }
    await file.writeAsBytes(uint8ListData);
    return await getPath();
  }

  Future<String> getPath() async {
    final downloadDir = await getTemporaryDirectory();
    final appDir = await getApplicationCacheDirectory();
    return downloadDir.path ?? appDir.path;
  }



  Future<bool> _requestWritePermission() async {
    await Permission.storage.request();
    return await Permission.storage.request().isGranted;
  }
}
