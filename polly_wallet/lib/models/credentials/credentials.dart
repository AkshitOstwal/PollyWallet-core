import 'package:hive/hive.dart';
part 'credentials.g.dart';

@HiveType(typeId: 0)
class Credentials extends HiveObject {

  @HiveField(0)
  String mnemonic;

  @HiveField(1)
  String privateKey;

  @HiveField(2)
  String address;

}