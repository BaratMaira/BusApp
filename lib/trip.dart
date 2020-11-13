import 'package:bus_app/passengerLists.dart';
import 'package:flutter/material.dart';
import 'scheduleBus.dart';

class Trip extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Рейс'),
        backgroundColor: Colors.green,
      ),
      body: TripPage(),
    );
  }
}

class TripPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Выберите рейс",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: buses.map((b) {
              if (b.busName != text) {
                return Material(
                  child: InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PassengerLists()),);},
                      child:Container(
                        padding: const EdgeInsets.all(12.0),
                        margin: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(b.busDate, style: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),),
                            Row(children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                        width: 120.0,
                                        height: 152.0,
                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            image: new DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(b.busImage)))),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(b.busName, style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold,),),
                                          Text(b.busNumber, style: TextStyle(color: Colors.black54, fontSize: 16),),
                                          Text(b.noSeats + ' мест', style: TextStyle(color: Colors.black54, fontSize: 16),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(b.direction, style: TextStyle(color: Colors.black54, fontSize: 22, fontWeight: FontWeight.bold, ),),
                                  Text('Отправление', style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold, height: 2),),
                                  Text('Дата - ' + b.otpDate, style: TextStyle(color: Colors.black54, fontSize: 16),),
                                  Text('Время - ' + b.otpTime, style: TextStyle(color: Colors.black54, fontSize: 16),),
                                  Text('Прибытие', style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold, height: 2),),
                                  Text('Дата - ' + b.priDate, style: TextStyle(color: Colors.black54, fontSize: 16),),
                                  Text('Время - ' + b.priTime, style: TextStyle(color: Colors.black54, fontSize: 16),),
                                ],
                              ),
                            ],
                            ),
                          ],
                        ),
                      )
                  ),
                );
              }
            }).toList()),
      ),
    );
  }
  List<ScheduleBus> buses = [
    ScheduleBus(
        busName: 'YUTONG',
        busNumber: 'KZ 888 KN 02',
        noSeats: "32",
        busImage: "assets/images/bus.jpg",
        otpDate: "06.02.2020 Thu",
        otpTime: "18:39",
        priDate: "07.02.2020 Thu",
        priTime: "06:10",
        direction: 'Асыката-\nАлматы',
        busDate: 'Сегодня'),

    ScheduleBus(
        busName: 'End2End Test',
        busNumber: 'KZ 123 ABC',
        noSeats: "53",
        busImage: "assets/images/bus5.jpg",
        otpDate: "06.02.2020 Thu",
        otpTime: "19:30",
        priDate: "07.02.2020 Fri",
        priTime: "18:36",
        direction: 'Город Х - \nСарыагаш',
        busDate: 'Завтра'),
  ];
  String text = '';
}
