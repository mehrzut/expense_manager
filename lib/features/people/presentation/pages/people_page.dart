import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  @override
  createState() => _PeoplePage();
}

class _PeoplePage extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Row(
            children: const [
              Text('Add'),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.person_add_outlined),
            ],
          )),
    );
  }
}
