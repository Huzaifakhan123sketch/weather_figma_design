import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

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
            style:TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ))
                ),
                  onPressed: (){},
                  child: Container(
                    width: 130,
                    child: Row(
                      children: [
                        Transform.rotate(
                            angle: 5.5,
                            child: Icon(Icons.send,color:Colors.black54,size: 20,)),
                        SizedBox(width: 5,),
                        Text('Poway, California',style:TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),),
                      ],
                    ),
                  )),
              SizedBox(height: 30,),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text('33 C',style:TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),),
                    SizedBox(height: 10,),
                    Icon(Icons.wb_cloudy_outlined,color: Colors.indigoAccent,size: 35,),
                    Text('Sunny ',style:TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigoAccent,
                    ),),
                  ],
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
              Row(    mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Chance of rain',style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),),
                      SizedBox(
                        height: 8,
                      ),
                      Text('45%',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Realfeel',style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),),
                      SizedBox(
                        height: 8,
                      ),
                      Text('38',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Wind',style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),),
                      SizedBox(
                        height: 8,
                      ),
                      Text('18 km/h',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Humidity',style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),),
                      SizedBox(
                        height: 8,
                      ),
                      Text('65%',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
