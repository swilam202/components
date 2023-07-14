import 'package:flutter/material.dart';

class CreateSnackBar extends StatelessWidget {
  const CreateSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: Text('press me!'),
            onPressed: () =>snackB(context, 'title')),
      ),
    );
  }
}

void snackB(context,String title) {
  SnackBar snack = SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      duration: const Duration(seconds: 5),
      content: Row(
        children: [
          const Icon(
            Icons.warning,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      backgroundColor: Colors.deepOrangeAccent,
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
        textColor: Colors.black,
      ));
  ScaffoldMessenger.of(context).showSnackBar(snack);
}