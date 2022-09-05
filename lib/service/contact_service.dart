import 'dart:convert';
import '../model/contact_model.dart';
import 'package:http/http.dart' as http;

class ContactService {
  List<ContactModel> contact = [];
  Future<List<ContactModel>> contactData() async {
    var response = await http.get(Uri.parse("https://629dcbabc6ef9335c0a653dd.mockapi.io/api/v1/users"));
    var jsonData = jsonDecode(response.body);

    contact = List.from(jsonData.map((val) => ContactModel.fromJson(val)));

    return contact;
  }
}
