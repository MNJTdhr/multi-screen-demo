import 'package:flutter/material.dart';
import 'screen2.dart';

class MyScreen1 extends StatelessWidget {
  const MyScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("MyScreen1", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              backgroundColor: Colors.indigo,
              onPressed: () {
                Navigator.pop(context);
              },
              label: Text("backward", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            FloatingActionButton.extended(
              backgroundColor: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyScreen2();
                    },
                  ),
                );
              },
              label: Text("screen2", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
