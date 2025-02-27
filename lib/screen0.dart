import 'package:flutter/material.dart';

class MyScreen0 extends StatelessWidget {
  const MyScreen0({super.key});

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
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              child: Text("Screen1", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text("Screen2", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
