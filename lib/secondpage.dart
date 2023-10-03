import 'package:flutter/material.dart';

import 'homepage.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 60),
    backgroundColor: Colors.green,
  );

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: 70,
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "First Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Last Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder(),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=> HomePage(),
                    )
                );
                MySnackBar("Submitted", context);
              }, child: Text("Submit"), style: buttonStyle,),
            )
          ],
        ),
      ),
    );
  }
}