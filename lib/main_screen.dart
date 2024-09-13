import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int value = 0;

  void add() {
    setState(() {
      value += 1; // Properly increment the value
    });
  }

  void subtract() {
    setState(() {
      value -= 1; // Properly decrement the value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black, // Set the AppBar color to black
        elevation: 0.0, // Remove the shadow from the AppBar
        centerTitle: true, // Center the title of the AppBar
        title: const Text(
          'Counter App', // Set the title of the AppBar
          style: TextStyle(
            fontSize: 24, // Set the font size
            color: Colors.white, // Set the text color to white
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Value $value', // Display the current value
              style: TextStyle(
                fontSize: 60, // Set the font size
                color: Colors.black, // Set the text color to black
              ),
            ),
            SizedBox(height: 40), // Space between text and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: add,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20), // Space between buttons
                FloatingActionButton(
                  onPressed: subtract,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
