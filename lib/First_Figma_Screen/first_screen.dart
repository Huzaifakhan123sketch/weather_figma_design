import 'package:flutter/material.dart';

class weatherforecasting extends StatelessWidget {
  const weatherforecasting({super.key});

  @override
  Widget build(BuildContext context) {
    final _style = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading:  Icon(Icons.menu,color: Colors.black,),
        title: Text(
          'Weather Forecast',
          style: _style,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Next 7 days',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.indigoAccent,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              /// First Contaainer
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
                        Container(
                          child: Row(
                            children: [
                              Text('Monday  ',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),),
                              SizedBox(width: 5,),
                              Icon(Icons.sunny,color: Colors.yellow,),

                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text('32 C  ',style: TextStyle(
                                fontSize: 16.7,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),),
                              SizedBox(width: 5,),
                              Text('22 C',style: TextStyle(
                                fontSize: 13.7,
                                fontWeight: FontWeight.w600,
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
                    )
                  ],
                ),
              ),
              ),

              SizedBox(height: 60,),

              /// Multiple Rows

              Divider(
                height: 20,
                thickness: 0,
                color: Colors.transparent,
              ),
              ReuseableRow('TUE','18 C', '26 C'),
              Divider(
                height: 20,
                thickness: 0,
                color: Colors.black54,
              ),
              ReuseableRow('WED','17 C', '28 C'),
              Divider(
                height: 20,
                thickness: 0,
                color: Colors.black54,
              ),
              ReuseableRow('THU','14 C', '22 C'),
              Divider(
                height: 20,
                thickness: 0,
                color: Colors.black54,
              ),
              ReuseableRow('FRI','14 C', '20 C'),
              Divider(
                height: 20,
                thickness: 0,
                color: Colors.black54,
              ),
              ReuseableRow('SAT','16 C', '28 C'),
              Divider(
                height: 20,
                thickness: 0.0,
                color: Colors.grey[700],
              ),
              ReuseableRow('SUN','18 C', '24 C'),
            ],
          ),
        ),
      ),
    );
  }
  Widget ReuseableRow(name1, name2, name3){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name1, style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600
        ),),
        Container(
          child: Row(
            children: [
              Text(name2),
              SizedBox(width: 15,),
              Text('To'),
              SizedBox(width: 15,),
              Text(name3),
            ],
          ),
        ),
        Icon(Icons.cloud_outlined,color: Colors.indigoAccent,),
      ],
    );
  }
}
