import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

void main() {
  return runApp(MaterialApp(home: BaseScreen()));
}

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BaseScreen", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
              label: Text("Screen1", style: TextStyle(color: Colors.white)),
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
              label: Text("Screen2", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
