import 'package:flutter/material.dart';
import 'first.dart';
import 'package:readmore/readmore.dart';
class details extends StatefulWidget {

  String photos;
  String price;
  String name;
  String rate;
  String review;
  String desc;
  String lil;

  //String info;


   details({super.key,required this.photos,
   required this.name,
   required this.price,
     required this.rate,
     required this.review,
     required this.desc,
     required this.lil,
     
     //required this.info,
   });

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> first()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_back_ios_new_outlined,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        child: Center(
                          child: Text("Details",
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,),),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          //boxShadow: BoxShadow,
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,
                        ),
                        child:
                        Icon(Icons.favorite_border_outlined,
                          color: Colors.black,),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20,),
                    child: Container(
                      height: 450,
                      width: 400,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            //fit: BoxFit.fill,
                            image: AssetImage(widget.photos),
                              fit: BoxFit.fill),
                              color: Colors.blueGrey,
                             // borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                   Container(
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 20),
                           child: Row(
                             children: [
                               Container(
                                 height: 40,
                                 width: 120,
                                 child: Text(widget.name,
                                 style: TextStyle(wordSpacing: 1,
                                     fontSize: 35,
                                     fontWeight: FontWeight.bold),),
                               ),
                               SizedBox(width: 115,),
                               Container(
                                 width: 10,
                                 child: Icon(Icons.star_rate_rounded,
                                   size: 20,
                                   color: Colors.green.shade300,),
                               ),
                               SizedBox(width: 5,),
                               Container(
                                 height: 40,
                                 width: 40,
                                 child: Center(
                                   child: Text(widget.rate,
                                     style: TextStyle(wordSpacing: 1,
                                         fontSize: 20,),),
                                 ),
                               ),
                               //SizedBox(width: 20,),
                               Container(
                                 height: 40,
                                 width: 90,
                                 child: Center(
                                   child: Text(widget.review,
                                     style: TextStyle(fontSize: 15,color: Colors.grey),),
                                 ),
                               ),
                             ],
                           ),
                         )
                       ],
                     ),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(top:5),
                    child: Container(
                      child: Column(
                        children: [
                                ReadMoreText(widget.desc,trimLines: 3,
                                colorClickableText: Colors.blue,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: '...Read More',
                                trimExpandedText: '...Less',),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10  ,),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text('Size',style: TextStyle(fontSize: 20,
                                color: Colors.grey),),
                              ),
                              SizedBox(width: 70,),
                              Container(
                                child: Text('Plant',style: TextStyle(fontSize: 17,
                                    color: Colors.grey),),
                              ),
                              SizedBox(width: 50,),
                              Container(
                                child: Text('Height',style: TextStyle(fontSize: 17,
                                    color: Colors.grey),),
                              ),
                              SizedBox(width: 50,),
                              Container(
                                child: Text('Humidity',style: TextStyle(fontSize: 17,
                                    color: Colors.grey),),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  children: [
                                    Container(
                                      child: Text('Medium',style: TextStyle(fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    ),
                                    SizedBox(width: 50,),
                                    Container(
                                      child: Text('Orchild',style: TextStyle(fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    ),
                                   SizedBox(width: 50,),
                                    Container(
                                      child: Text('12.6"',style: TextStyle(fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    ),
                                   SizedBox(width: 50,),
                                    Container(
                                      child: Text('  82%',style: TextStyle(fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Container(
                          child:Row(
                            children: [
                              Container(
                                height: 30,
                                width: 70,
                                child: Text('Price',style: TextStyle(fontSize: 25),),
                              ),
                              SizedBox(width: 120,),
                              Container(
                                height: 60,
                                width: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green.shade300,
                                  ),
                                  child: Center(child: Text('Add to Card',
                                    style: TextStyle(fontSize: 15,
                                        letterSpacing: 1,color: Colors.white),)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 330,bottom: 14),
                          child: Container(
                            height: 30,
                            width: 70,
                            child: Text(widget.price,style: TextStyle(
                              fontSize: 25,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
