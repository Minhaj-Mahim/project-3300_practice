import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        toolbarHeight: 70,
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                      text: "Welcome to\n",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "click",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            color: Colors.green,
                          ),
                        ),
                        TextSpan(
                            text: "AE",
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )
                        ),
                        TextSpan(
                          text: "vent\n",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            color: Colors.green,
                          ),
                        ),
                        TextSpan(
                          text: "an event management software",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}