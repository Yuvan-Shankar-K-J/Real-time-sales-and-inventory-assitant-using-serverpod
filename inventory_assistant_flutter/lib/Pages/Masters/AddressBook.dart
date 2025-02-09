import 'package:flutter/material.dart';
import 'package:inventory_assistant_flutter/base.dart';

class AddressBook extends StatefulWidget {
  const AddressBook({super.key});

  @override
  State<AddressBook> createState() => _AddressBookState();
}

class _AddressBookState extends State<AddressBook> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Address Book",
      child: Container(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Align(
                child: Text("Find list of parties here"
                  ,
                  textAlign: TextAlign.center,
                ))
          ],

        ),

      ),
    );
  }
}
