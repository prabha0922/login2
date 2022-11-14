import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Own extends StatefulWidget {
  const Own({super.key});

  @override
  State<Own> createState() => _OwnState();
}

class _OwnState extends State<Own> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Title"),
        actions: [Icon(Icons.discount_sharp,color: Colors.white,), SizedBox(width: 50,)],
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Stack(
          children: [Image.network("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__480.jpg",alignment: Alignment.center,),
          Container(
            width: 800,
            height: 450,
            color: Color.fromARGB(121, 20, 202, 47),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(90),
                        child: Text("Hello Everyone! ",
                             style: TextStyle(fontSize: 25, color: Colors.white),
                             textAlign: TextAlign.center,)
                             
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 250),
              child: Column(
                children: [TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color:Colors.white)
                    ),
                    hintText: "Enter your login password",hintStyle: TextStyle(
                      color: Colors.white
                    )
                  ),
                  style: TextStyle(color:Colors.white),
                  
                ),
                ],
              ),
            ),
            
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 150),
              child: Column(
                children: [TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color:Colors.white)
                    ),
                    hintText: "Enter your username",hintStyle: TextStyle(color: Colors.white)
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                ],
                
              ),
            ),
          ),
          
          ],
          
          
        ),
      ),
      
    );
  }
}