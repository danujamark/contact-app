import 'package:flutter/material.dart';
import 'package:flutter_application_contact/service/contact_service.dart';

import '../model/contact_model.dart';

class ContactAppWidget extends StatefulWidget {
  const ContactAppWidget({Key? key}) : super(key: key);

  @override
  State<ContactAppWidget> createState() => _ContactAppWidgetState();
}

class _ContactAppWidgetState extends State<ContactAppWidget> {
  List<ContactModel> contact = [];
  @override
  void initState() {
    ContactService().contactData().then((value) {
      setState(() {
        contact = value;
      });
    });
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONTACTS"),
      ),
      body: Container(child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Text(contact[index].age.toString());
        },
      )),
    );
  }
}
