import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddPersonPage extends StatelessWidget {
  const AddPersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Person'),
      ),
      body: Column(children: [
        TextField(
          decoration: InputDecoration(labelText: 'Name'),
        ),
      ]),
    );
  }
}
