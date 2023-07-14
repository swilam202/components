import 'package:flutter/material.dart';

// --1--
//more featured appBarr like the height

class MoreFeaturedAppBar extends StatelessWidget {
  const MoreFeaturedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 150,
          title: const Text(
            'flutter app',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.red,
                  Colors.blue,
                  Colors.yellow,
                  Colors.teal
                ],
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Row(
              children: const [
                Icon(Icons.add),
                Icon(Icons.add),
              ],
            ),
          ),
          actions: const [
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            /**************BODY IS CODED HERE************/
          ]),
        )
      ],
    ));
  }
}
