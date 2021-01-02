import 'package:hive/hive.dart';
import 'package:polly_wallet/models/credentials/credentials.dart';
part 'credentialsList.g.dart';

@HiveType(typeId: 2)
class CredentialsList extends HiveObject {
  @HiveField(0)
  int active;

  @HiveField(1)
  List<Credentials> credentials;

  @HiveField(2)
  String salt;
}
