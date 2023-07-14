import 'package:flutter/material.dart';

//--2--
// to use the alert dialog

class CreateAlertDialog extends StatefulWidget {

  @override
  State<CreateAlertDialog> createState() => _CreateAlertDialogState();
}

class _CreateAlertDialogState extends State<CreateAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: Text('press me!'),
            onPressed: () => alert(context, 'title', 'content')),
      ),
    );
  }
}

void alert(BuildContext context, String title, String content) {
  showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.grey.withOpacity(0.8),
      builder: (_) {
        return (AlertDialog(
          backgroundColor: Colors.amberAccent,
          title: Row(
            children: [
              const Icon(Icons.warning),
              const SizedBox(
                width: 5,
              ),
              Text(title),
            ],
          ),
          content: SizedBox(
            height: 150,
            child: Column(
              children: [
                const Divider(
                  thickness: 7,
                ),
                Text(content),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: Navigator.of(context).pop,
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text('Ok!'),
                  ),
                )
              ],
            ),
          ),
        ));
      });
}
