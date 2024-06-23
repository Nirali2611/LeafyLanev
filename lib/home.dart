import 'package:flutter/material.dart';
import 'first.dart';
class little extends StatefulWidget {
  const little({super.key});
  @override
  State<little> createState() => _littleState();
}

class _littleState extends State<little> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Stack(
                children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 20,left: 50,right: 50),
                       child: Container(
                        height: 200,
                        width: 400,
                        child: Center(
                          child: Text("Plant a \ntree for \nlife",
                          style: TextStyle(fontSize: 40,
                          fontWeight: FontWeight.bold,letterSpacing: 1),
                          ),
                        ),
                    ),
                     ),
                  Padding(
                    padding: const EdgeInsets.only(top:200,left: 50,right: 50),
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                         // borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/nirali.jpg"),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 525,left: 50,right: 50),
                    child: Container(
                      height: 200,
                      width: 400,
                      child: Center(
                        child: Text("Worldwide delivery \nwithin 10 - 15 days",
                          style: TextStyle(fontSize: 20,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 700,left: 50,right: 50),
                    child: Container(
                      child:Center(
                        child: Column(
                          children: [
                           // SizedBox(height: 625,),
                            GestureDetector(
                            onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> first()));
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green.shade300,
                                ),
                                child: const Text('Go'),
                              ),
                            ),
                          ],
                        ),
                      )
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
