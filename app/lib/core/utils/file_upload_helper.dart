import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:file_picker/file_picker.dart';

class FileManager {
  Future filePickerMethod(
    int maxFileSize,
    List<String>? allowedExtensions, {
    void Function(List<String?>)? getFiles,
  }) async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: allowedExtensions);
    List<String?> filesList = [];
    if (result != null) {
      for (var element in result.files) {
        if (element.size <= maxFileSize) {
          filesList.add(element.path);
        } else {
          ScaffoldMessenger.of(NavigatorService.navigatorKey.currentContext!)
              .showSnackBar(SnackBar(
                  content:
                      Text('file size should not be more than $maxFileSize')));
        }
      }
    }
    if (getFiles != null) {
      getFiles(filesList);
    }
  }
}
