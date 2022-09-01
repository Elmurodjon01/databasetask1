
import 'package:hive/hive.dart';

import '../model/accountModel.dart';
import '../model/userModel.dart';

class HiveDB {
  var box = Hive.box('test_database');

  void storeUser (User user){
    box.put("user", user.toJson());
  }

  User loadUser (){
    var user = User.fromJson(box.get('user'),);
    return user;
  }

  void removeUser(){
    box.delete('user');
  }

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