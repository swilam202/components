import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CreatePercentIndicator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CircularPercentIndicator(
              radius: 100,
              lineWidth: 10,
              percent: 0.417,
              backgroundColor: Colors.grey,
              progressColor: Colors.green,
              animation: true,
              animationDuration: 2000,
              center: Icon(Icons.add),
              header: Text('hi'),
              footer: Text('do'),
            ),
            LinearPercentIndicator(
              lineHeight: 25,
              width: 100,
              percent: 0.417,
              backgroundColor: Colors.grey,
              progressColor: Colors.green,
              animation: true,
              animationDuration: 2000,
              center: Icon(Icons.add),
              leading: Text('hi'),
              trailing: Text('do'),
            )
          ],
        ),
      ),
    );
  }
}
