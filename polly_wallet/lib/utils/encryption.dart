import 'package:flutter_string_encryption/flutter_string_encryption.dart';

class Encryptions {
  static Future<List<String>> encrypt(String mnemonic, String privateKey, String pin) async {
    final cryptor = new PlatformStringCryptor();
    final String salt = await cryptor.generateSalt();
    final String key = await cryptor.generateKeyFromPassword(pin, salt);
    final String eMnemonic = await cryptor.encrypt(mnemonic, key);
    final String ePk = await cryptor.encrypt(privateKey, key);
    return [eMnemonic,ePk, salt];
  }

}