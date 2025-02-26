import 'package:flutter/material.dart';

void main() {
  return runApp(BaseScreen());
}

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  void changeScreen() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                label: Text("Forwardd"),
              ),
              SizedBox(height: 20),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text("Forward"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyScreen1 extends StatelessWidget {
  const MyScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                onPressed: () {},
                label: Text("backward"),
              ),
              SizedBox(height: 20),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text("screen2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyScreen2 extends StatelessWidget {
  const MyScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                onPressed: () {},
                label: Text("backward"),
              ),
              SizedBox(height: 20),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text("screen1"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
