import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileUtils {
  //获取本地文件路径
  static Future<File> getLocalFile(String filePath) async {
    // get the path to the document directory.
    String dir = (await getApplicationDocumentsDirectory()).path;
    return new File('$dir/$filePath');
  }
}
