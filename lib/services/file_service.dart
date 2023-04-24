import 'package:file_picker/file_picker.dart';

class FilePickerService {
  static Future<FilePickerResult?> getFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    if (result != null) {
      return result;
    } else {
      return null;
    }
  }
}
