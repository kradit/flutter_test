import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
// ignore: unused_import
import 'constant.dart';

class MongoDatabase{
  static connect() async{
    var db=await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var status =db.serverStatus();
    print(status);
    var collection=db.collection(COLLECTION_NAME);
    await collection.insertOne(
      {
        "user_name":"Aditya",
        "_id":"its my way",
        "email":"adityapatel@gmail.com"
      }
      );
    print(await collection.find().toList());
  }
}


