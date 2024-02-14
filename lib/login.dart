import 'package:flutter/material.dart';
import 'package:untitled1/stories.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          "FaceBook",style:TextStyle(
        fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.facebook),
      ),

      body: Container(
        width: double.infinity,
        child: Column ( mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container( width: 250,
              height: 50,
              child: TextFormField(
                  decoration: InputDecoration(
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      hintText: "username",
                      prefixIcon: Icon(Icons.person)
                  )
              ),
            ),
            SizedBox(height: 10,),

            Container( width: 250,
              height: 50,
              child: TextFormField(
                  decoration: InputDecoration(
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      hintText: "password",
                      prefixIcon: Icon(Icons.lock)
                  )
              ),
            ),
            SizedBox(height: 10
              ,),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Stories(), ));
            },child: Text("Login"))
          ],
        ),
      ),
    );

  }
}