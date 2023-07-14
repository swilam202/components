import 'package:flutter/material.dart';

//--11--
//to build the Expansion Tile

class CreateExpansionTile extends StatefulWidget {

  @override
  State<CreateExpansionTile> createState() => _CreateExpansionTileState();
}

class _CreateExpansionTileState extends State<CreateExpansionTile> {

  IconData ico = Icons.arrow_upward;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExpansionTile(
          onExpansionChanged: (flag) => setState(() {
            ico = flag ? Icons.arrow_upward : Icons.arrow_downward;
          }),
          initiallyExpanded: false,
          tilePadding: const EdgeInsets.only(top: 15, left: 8, right: 8),
          iconColor: Colors.teal,
          textColor: Colors.teal,
          subtitle: const Text('to register into the app'),
          title: const Text('Registration'),
          leading: const Icon(Icons.app_registration),
          trailing: Icon(ico),
          children: [
            Card(
              color: Colors.lightBlueAccent,
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.account_box),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                title: const Text('Sign Up'),
                subtitle: const Text('To sign up'),
                onTap: () {},
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.login),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                title: const Text('Log In'),
                subtitle: const Text('To log in'),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
