
import "dart:html" as html;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FileUtils {
  static Future<void> downloadAssetFile(
      String assetPath, String fileName) async {
    try {
      // Load the file from assets
      ByteData data = await rootBundle.load(assetPath);
      Uint8List bytes = data.buffer.asUint8List();

      // Create a Blob and a link element
      final blob = html.Blob([bytes]);
      final url = html.Url.createObjectUrlFromBlob(blob);

      // Create a download anchor element
      html.AnchorElement(href: url)
        ..setAttribute("download", fileName)
        ..click();

      // Clean up the URL after download
      html.Url.revokeObjectUrl(url);
    } catch (e) {
      debugPrint('Error downloading file: $e');
    }
  }
}

