import 'package:flutter/material.dart';
import 'scheduleBus.dart';

class Schedule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Расписание'),
        backgroundColor: Colors.green,
      ),
      body: SchedulePage(),
    );
  }
}

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Расписание",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: buses.map((p) {
              if (p.busName != text) {
                return busDetailCard(p, context);
              }
            }).toList()),
      ),
    );
  }
  SchedulePage({Key key, this.title}) : super(key: key);
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
  final String title;

  Widget busDetailCard(ScheduleBus, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            ScheduleBus.busDate,
            style: TextStyle(
                color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                        width: 120.0,
                        height: 150.0,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(ScheduleBus.busImage)))),
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(ScheduleBus.busName, style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
                          Text(ScheduleBus.busNumber, style: TextStyle(color: Colors.black54, fontSize: 16),),
                          Text(ScheduleBus.noSeats + ' мест', style: TextStyle(color: Colors.black54, fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(ScheduleBus.direction, style: TextStyle(color: Colors.black54, fontSize: 22, fontWeight: FontWeight.bold, ),),
                  Text('Отправление', style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold, height: 2),),
                  Text('Дата - ' + ScheduleBus.otpDate, style: TextStyle(color: Colors.black54, fontSize: 16),),
                  Text('Время - ' + ScheduleBus.otpTime, style: TextStyle(color: Colors.black54, fontSize: 16),),
                  Text('Прибытие', style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold, height: 2),),
                  Text('Дата - ' + ScheduleBus.priDate, style: TextStyle(color: Colors.black54, fontSize: 16),),
                  Text('Время - ' + ScheduleBus.priTime, style: TextStyle(color: Colors.black54, fontSize: 16),),
                ],
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: OutlineButton(
                onPressed: () {
                },
                borderSide: BorderSide(color: Colors.green),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Text(
                  "Удалить рейс",
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              )),
        ],
      ),
    );
  }
}
