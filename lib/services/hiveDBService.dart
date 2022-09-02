
import 'package:hive/hive.dart';

import '../model/accountModel.dart';
import '../model/userModel.dart';

class HiveDB {
  var box = Hive.box('test_database');

  void storeAccount (Account account){
    box.put('account', account.toJson());
  }

  Account loadAccount (){
    var account = Account.fromJson(box.get('account'));
    return account;
  }
  void removeAccount(){
    box.delete('account');
  }

}