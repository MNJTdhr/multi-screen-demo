import 'package:flutter/material.dart';
import 'screen1.dart';

class MyScreen2 extends StatelessWidget {
  const MyScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("MyScreen2", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.red,
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
              backgroundColor: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyScreen1();
                    },
                  ),
                );
              },
              label: Text("screen1", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
