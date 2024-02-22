import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../figma_constants.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading:  Icon(Icons.menu,color: Colors.black,),
        title: Text(
          'Weather Forecast',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.cloud,
                    size: 65,
                    color: AllAppColors.purple,
                  )).paddingOnly(top: 3),
              Text(
                "33 C",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ).paddingOnly(top: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined),
                  Text(
                    "Madison, Florida",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],),






              SizedBox(height: 20,),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Detailed Information',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text('Wind',style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),),
                                SizedBox(width: 20,),
                                Text('10 m/h',style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),),

                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Visibility',style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),),
                                SizedBox(width: 25,),
                                Text('20 km',style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text('Humidity',style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),),
                                SizedBox(width: 5,),
                                Text('40%',style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('UV ',style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),),
                                SizedBox(width: 25,),
                                Text(' 1',style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Divider(),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('8:30',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('9:30',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('10:30',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('11:30',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('12:30',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('01:30',style:TextStyle(
                    color: Colors.black54,
                  )),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('24',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('28',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('32',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('33',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('32',style:TextStyle(
                    color: Colors.black54,
                  )),
                  Text('30',style:TextStyle(
                    color: Colors.black54,
                  )),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sunny,color: Colors.black54,),
                  Icon(Icons.sunny,color: Colors.black54,),
                  Icon(Icons.sunny,color: Colors.black54,),
                  Icon(Icons.sunny,color: Colors.black54,),
                  Icon(Icons.sunny,color: Colors.black54,),
                  Icon(Icons.sunny,color: Colors.black54,),
                ],
              ),
              Divider(height: 70,),

            ]
          ),
        ),
      ),
    );
  }
}
