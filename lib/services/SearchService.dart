import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class SearchService extends GetxController {
  Future queryData(String queryString) async{
    return FirebaseFirestore.instance.collection('items').where('name', isEqualTo: queryString).get();
  }
}