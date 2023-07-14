import 'package:flutter/material.dart';

class CreateDismissible extends StatefulWidget {

  @override
  State<CreateDismissible> createState() => _CreateDismissibleState();
}

class _CreateDismissibleState extends State<CreateDismissible> {
  List li = ['1','2','3','4','5','6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: ListView.builder(
        itemCount: li.length,
        itemBuilder: (ctx, index) {
          final item = li[index];
          return (Dismissible(
              key: Key(li[index]),
              onDismissed: (DismissDirection dir) {
                setState(() {
                  li.removeAt(index);
                  SnackBar snack = SnackBar(
                    content: Text(dir == DismissDirection.startToEnd
                        ? '$item deleted'
                        : '$item added'),
                    action: SnackBarAction(
                      label: 'undo',
                      onPressed: () => setState(() => li.insert(index, item)),
                    ),
                  );
                  ScaffoldMessenger.of(ctx).showSnackBar(snack);
                });
              },
              background: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.red,
                alignment: Alignment.centerLeft,
                child: const Icon(Icons.delete),
              ),
              secondaryBackground: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.green,
                alignment: Alignment.centerRight,
                child: const Icon(Icons.add),
              ),
              child: ListTile(
                title: Center(child: Text(item.toString())),
              ),
              confirmDismiss: (DismissDirection dir) async {
                if (dir == DismissDirection.startToEnd) {
                  final bool res = await showDialog(
                      context: ctx,
                      builder: (BuildContext context) {
                        return (const AlertDialog(
                          content: Text('deleted'),
                        ));
                      });
                  return res;
                } else {
                  final bool res = await showDialog(
                      context: ctx,
                      builder: (BuildContext context) {
                        return (const AlertDialog(
                          content: Text('added'),
                        ));
                      });
                  return res;
                }
              }));
        },
      ),
      ),
    );
  }
}
