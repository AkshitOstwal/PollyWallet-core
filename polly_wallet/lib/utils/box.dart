import 'package:hive/hive.dart';
import 'package:polly_wallet/constants.dart';
import 'package:polly_wallet/models/credentials/credentials.dart';
import 'package:polly_wallet/models/credentials/credentialsList.dart';

class BoxUtils {
  static Future<bool> setFirstAccount (String mnemonic, String privateKey, String address, String salt)async{
    Hive.registerAdapter(CredentialsAdapter());
    Hive.registerAdapter(CredentialsListAdapter());
    var box = await Hive.openBox<CredentialsList>(credentialBox);
    var creds = new Credentials()
      ..address= address
      ..privateKey = privateKey
      ..mnemonic = mnemonic;
    var credsList = new CredentialsList()
      ..active = 0
      ..credentials = [creds]
      ..salt = salt;
    box.add(credsList);
    print(box.getAt(0).active);
    print(box.getAt(0).credentials[0].address);
    return true;
  }
}