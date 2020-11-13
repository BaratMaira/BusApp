import 'package:flutter/material.dart';
import 'passengerList.dart';

class PassengerLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Пассажиры",
        ),
      ),
      body: Material(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('Имя', style: TextStyle(color: Colors.black54,fontSize: 22),),
                    Text('Место',style: TextStyle(color: Colors.black54,fontSize: 22,),),
                    Text('Тип', style: TextStyle(color: Colors.black54,fontSize: 22,),),
                  ]),
            ),
            Column(
                children: passengers.map((p) {
                  return  Container(
                    padding: const EdgeInsets.all(0),
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(p.name, style: TextStyle(color: Colors.black54,fontSize: 22,),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(p.seat,style: TextStyle(color: Colors.black54,fontSize: 22,),),
                            Text(p.type,style: TextStyle(color: Colors.black54, fontSize: 16),)
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: new BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Text(p.status,style: TextStyle(color: Colors.white,fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList()),
          ],
        ),
      ),
    );
  }

  List<Passengers> passengers = [
    Passengers(name: 'Aigerim', seat: '0 A', type: 'верхний', status: 'OFFLINE'),
    Passengers(name: 'Arslan', seat: '0 B', type: 'верхний', status: 'OFFLINE'),
    Passengers(name: 'ASSELYA', seat: '1', type: 'нижний', status: 'ONLINE'),
    Passengers(name: 'TEMIRLAN', seat: '1', type: 'верхний', status: 'ONLINE'),
    Passengers(name: 'Нет имени', seat: '0 A', type: 'нижний', status: 'no type'),
    Passengers(name: 'Нет имени', seat: '0 B', type: 'нижний', status: 'no type'),
    Passengers(name: 'Нет имени', seat: '2', type: 'нижний', status: 'no type'),
  ];
  String text = '';
}
