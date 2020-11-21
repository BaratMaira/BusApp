import 'package:flutter/material.dart';
import 'passengerList.dart';
import 'package:toast/toast.dart';

class PassengerLists extends StatefulWidget {
  @override
  PassengerListsState createState() => PassengerListsState();
}

class PassengerListsState extends State<PassengerLists> {
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
                  return passengerInfo(p, context);
                }).toList()),
          ],
        ),
      ),
    );
  }

  Widget passengerInfo(Passengers, BuildContext context) {
    return Material(
      child: InkWell(
          onTap: () {
            showModalBottomSheet<void>(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 500,
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text('Информация о пассажире', style: TextStyle(color: Colors.black, fontSize: 22, height: 2),),),
                        Container(
                            margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.circular(10.0),
                                boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 0.4,)]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none),
                                  hintStyle: TextStyle(color: Colors.black),
                                  hintText: Passengers.name,
                                  fillColor: Colors.white70),
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [BoxShadow( color: Colors.grey, blurRadius: 2.0,)
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none),
                                  hintStyle: new TextStyle(color: Colors.black),
                                  hintText: Passengers.phone,
                                  fillColor: Colors.white70),
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 2.0, spreadRadius: 0.4)
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none),
                                  hintStyle: new TextStyle(color: Colors.green),
                                  hintText: Passengers.email,
                                  fillColor: Colors.green[700]),
                            )),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0, left: 30, bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Место', style: TextStyle(color: Colors.black54, fontSize: 18,),),
                                  Container(
                                    padding: const EdgeInsets.all(20),
                                    margin: const EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                        boxShadow: [
                                          BoxShadow(color: Colors.grey, blurRadius: 2.0, spreadRadius: 0.4, offset: Offset(0, 2),)
                                        ]),
                                    child: Text(Passengers.seat + ' ' + Passengers.type, style: TextStyle(color: Colors.black54, fontSize: 18,),),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0, left: 60, bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Цена', style: TextStyle(color: Colors.black54, fontSize: 18,),),
                                  Container(
                                    padding: const EdgeInsets.only(top: 10, bottom: 20, left: 40, right: 40),
                                    margin: const EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0, spreadRadius: 0.4, offset: Offset(0, 2),)
                                        ]),
                                    child: Text(Passengers.price, style: TextStyle(color: Colors.black, fontSize: 18,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(children: <Widget>[
                          Container(
                              height: 50,
                              margin: const EdgeInsets.only(left: 40, top: 5, bottom: 10, right: 10),
                              decoration: BoxDecoration(color: Colors.green, borderRadius: new BorderRadius.circular(15.0),),
                              child: OutlineButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.green),
                                child: Text("ИЗМЕНИТЬ", style: TextStyle(color: Colors.white, fontSize: 20),),
                              )),
                          Container(
                              height: 50,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: new BorderRadius.circular(20.0),
                              ),
                              child: OutlineButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.green),
                                child: Text("ОТПРАВИТЬ ЧЕК", style: TextStyle(color: Colors.white, fontSize: 20),),
                              )),
                        ]),
                        Container(
                            height: 50,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(20.0),),
                            child: OutlineButton(
                              onPressed: () {
                                showAlertBox(Passengers.name, context);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              borderSide: BorderSide(color: Colors.green),
                              child: Text("ОТМЕНИТЬ ПОКУПКУ БИЛЕТА", style: TextStyle(color: Colors.white, fontSize: 20),),
                            )),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            padding: const EdgeInsets.all(0),
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(Passengers.name, style: TextStyle(color: Colors.black54, fontSize: 22),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(child: Text(Passengers.seat, style: TextStyle(color: Colors.black54, fontSize: 22,),),),
                    Text(Passengers.type, style: TextStyle(color: Colors.black54, fontSize: 16),)
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(30.0),),
                  child: Text(Passengers.status, style: TextStyle(color: Colors.white, fontSize: 18,),),
                ),
              ],
            ),
          ),
      ),
    );
  }

  List<Passengers> passengers = [
    Passengers(name: 'Aigerim', seat: '0 A', type: 'верхний', status: 'OFFLINE', phone: '8-(705)-567-76-54', email: 'Почта', price: '3000'),
    Passengers(name: 'Arslan', seat: '0 B', type: 'верхний', status: 'OFFLINE', phone: '8-(708)-315-76-53', email: 'Почта', price: '3500'),
    Passengers(name: 'ASSELYA', seat: '1', type: 'нижний', status: 'ONLINE', phone: '8-(778)-267-74-54', email: 'Почта', price: '4000'),
    Passengers(name: 'TEMIRLAN', seat: '1', type: 'верхний', status: 'ONLINE', phone: '8-(700)-124-56-54', email: 'Почта', price: '3000'),
    Passengers(name: 'Нет имени', seat: '0 A', type: 'нижний', status: 'no type'),
    Passengers(name: 'Нет имени', seat: '0 B', type: 'нижний', status: 'no type'),
    Passengers(name: 'Нет имени', seat: '2', type: 'нижний', status: 'no type'),
  ];

  String text = '';

  showAlertBox(passenger, BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text("НЕТ", style: TextStyle(color: Colors.green, fontSize: 16)),
      onPressed: () {
        Navigator.of(context).pop();
        Navigator.of(context).pop();
      },
    );

    Widget okButton = FlatButton(
      child: Text("ДА", style: TextStyle(color: Colors.green, fontSize: 16)),
      onPressed: () {
        setState(() {passengers.removeWhere((element) => element.name == passenger);});
        Navigator.of(context).pop();
        Navigator.of(context).pop();
        Toast.show("Билет удален", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM, backgroundColor: Colors.blue);
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Вы хотите отменить покупку билета?"),
      actions: [cancelButton, okButton],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

