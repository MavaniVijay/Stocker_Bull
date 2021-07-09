import 'package:get_storage/get_storage.dart';

class PreferenceManager {
  static GetStorage getStorage = GetStorage();

  static Future<void> setShareName(String value) async {
    await getStorage.write('shareName', value);
  }

  static String getShareName() {
    return getStorage.read('shareName');
  }
}
