import 'package:flutter/material.dart';
import 'package:tatv_ui/inspiration_page.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            MaterialButton(
              child: Text('Inspiration Page', style: TextStyle(color: Colors.greenAccent, fontSize: 16),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InspirationPage()));
              },
            )
          ],
        ),
      ),
    );
  }

}