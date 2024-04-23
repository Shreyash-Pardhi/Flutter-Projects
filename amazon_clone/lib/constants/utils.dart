import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

Future<List<File>> pickImages() async {
  List<File> images = [];
  try {
    var docs = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );
    if (docs != null && docs.files.isNotEmpty) {
      for (int i = 0; i < docs.files.length; i++) {
        images.add(File(docs.files[i].path!));
      }
    }
  } catch (e) {
    debugPrint(
      e.toString(),
    );
  }
  return images;
}
