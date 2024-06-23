import 'package:flutter/material.dart';
import 'package:task/second.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  List productlist = [
    'All',
    'Indoor',
    'Outdoor',
    'Popular',
  ];
  List plantphotos = [
    'assets/111jpg.jpg',
    'assets/money.jpg',
    'assets/222.jpg',
    'assets/money.jpg',
  ];
  List price = [
    '\$39',
    '\$57',
    '\$46',
    '\$57',
  ];
  List pname = [
    'Snake Plant',
    'Money Plant',
    'Spider Plant',
    'Money Plant',
  ];
  List rating= [
    '4.8',
    '5.0',
    '4.5',
  ];
  List review = [
    '(268 Review)',
    '(301 Review)',
    '(245 Review)',
  ];
  List plantdes = [
    'This popular snake plant variety forms dense clusters of vertical foliage rosettes with striking coloration.It features showy grayish-green mottled foliage with splashes of silvery-white and dark green banding. ',
    'A darling of home gardeners everywhere, the Money Plant Golden is famous for its never give up attitude. This plant can survive neglect and adapt to almost all growing conditions to fill your space with trailing foliage of bright golden-green coloured leaves in no time.',
    'Chlorophytum comosum, usually called spider plant or common spider plant due to its spider-like look, also known as spider ivy, ribbon plant, and hen and chickens is a species of evergreen perennial flowering plant of the family Asparagaceae',
  ];
  List Demo = [
    'Size',
    'Plant',
    'Height',
    'Humidity',
  ];
  List information = [
    ''
  ];

  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                   alignment: Alignment.centerLeft,
                      child: Text("Find your \nfavorite plants",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.search_sharp,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,),
                child: Row(
                      children: [
                           Container(
                            height: 150,
                            width: 350,
                            decoration: BoxDecoration(
                              image:  DecorationImage(image: AssetImage("assets/33.jpg"),
                                fit: BoxFit.fill,),
                              color: Colors.green.shade200,
                                borderRadius: BorderRadius.circular(15),
                            ),
                            child:Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("\n\n   30% OFF",
                                      style: TextStyle(fontSize: 25),
                                      ),
                                  ),
                                  Container(
                                    child: Text("  02-23 July",
                                      style: TextStyle(fontSize: 15,color:Colors.green.shade800 ),),
                                  )
                                ],
                              ),
                            ),
                          ),
                      ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 40),
                        child: Row(
                          children:
                            List.generate(productlist.length, (index) {
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        activeMenu = index;
                                      });
                                    },
                                    child: Column(
                                     children: [
                                       Container(
                                         child: Text(productlist[index],style: TextStyle(
                                           wordSpacing: 1,
                                           fontSize: 22,
                                           fontWeight: FontWeight.w600,
                                           color: Colors.black87,
                                         ),
                                         ),
                                         decoration: BoxDecoration(
                                           border: Border.symmetric(),
                                           borderRadius: BorderRadius.circular(5),
                                         ),
                                       ),
                                       SizedBox(height: 5,),
                                       activeMenu == index ? Container(
                                         height: 5,
                                         width: 55,
                                         decoration: BoxDecoration(
                                          shape:  BoxShape.rectangle, //BorderSide(width: 3.0),
                                           color: Colors.grey,
                                           borderRadius: BorderRadius.circular(9),
                                         ),
                                       ) : Container(),
                                     ],
                                    ),
                                  ),
                                ),
                              );
                            })),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: List.generate(4, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10,right: 20),
                        child: GestureDetector(
                          onTap: (){},
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                      details(photos: plantphotos[index].toString(),
                                          name: pname[index].toString(),
                                          price: price[index].toString(),
                                        rate: rating[index].toString(),
                                        review: review[index].toString(),
                                        desc: plantdes[index].toString(),
                                        lil: Demo[index].toString(),
                                        //info: information[index].toString(),
                                      )));
                                },
                                child: Container(
                                  width: 200,
                                  height: 350,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(plantphotos[index].toString()),
                                      fit: BoxFit.cover),
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(10),
                                    ),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 150,top: 20),
                                          child: Text(price[index].toString(),
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                        ),
                                      ),
                                      Container(
                                        height: 200,
                                            width: 200,
                                            child: Padding(
                                              padding: const EdgeInsets.only(right: 145,top: 20),
                                              child: RotatedBox(
                                                quarterTurns: 3,
                                                  child: Text(pname[index].toString(),
                                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),)),
                                            ),
                                        ),
                                      SizedBox(height: 20,),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 35 ,left: 10),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                              onTap: (){
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context)=>
                                                      details(photos: plantphotos[index].toString(),
                                                          name: pname[index].toString(),
                                                          price: price[index].toString(),
                                                        rate: rating[index].toString(),
                                                        review: review[index].toString(),
                                                        desc: plantdes[index].toString(),
                                                        lil: Demo[index].toString(),
                                                        //info: information[index].toString(),
                                                        )));
                                                },
                                                child: Container(
                                                    height: 50,
                                                    width: 110,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Colors.white,
                                                    ),
                                                  child: Center(child: Text('Add to Card',style: TextStyle(fontSize: 15,letterSpacing: 1),)),
                                                ),
                                              ),
                                              SizedBox(width: 20,),
                                              Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20),
                                                    color: Colors.black,
                                                  ),
                                                  child:
                                                      Icon(Icons.favorite_border_outlined,
                                                        color: Colors.white,),
                                                ),
                                            ],
                                          ),
                                        ),


                                      )
                                    ],
                                  ),
                                  ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(''),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
    ));
  }
}
