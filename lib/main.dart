import 'package:flutter/material.dart';

import 'secondpage.dart';

void main(){
  runApp(projectPracticeApp());
}
class projectPracticeApp extends StatelessWidget{
  const projectPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}
class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});

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
        title: Text("clickAEvent"),
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
                  labelText: "E-mail Address",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.mail_outline),
                  hintText: "enter your email address",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  hintText: "enter password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context)=> SecondPage(),
                      ),
                  );
                  MySnackBar("Successful", context);
                  },
                child: Text("Sign in"),
                style: buttonStyle,
              ),
            )
          ],
        ),
      ),
    );
  }

}
