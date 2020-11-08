import 'package:flutter/material.dart';
import 'schedule.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus App'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child:  ListView(
          children: <Widget>[
            Container(
              width: 100,
              height: 20,
            ),
            Text('Test Company',style: TextStyle(fontSize: 30, color: Colors.grey),textAlign: TextAlign.center),
            SizedBox(
              height: 40,
            ),
            Text('Barat Maira', style: TextStyle(fontSize: 40, color: Colors.black54, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            Divider(
              color: Colors.black54,
              thickness: 3,
            ),
            ListTile(leading: Icon(Icons.money, size: 40.0, color: Colors.black54),title: Text('Продажа билетов', style: TextStyle(fontSize: 25.0, color: Colors.black54, fontWeight: FontWeight.bold),), onTap: (){},),
            ListTile(leading: Icon(Icons.engineering,size: 40.0, color: Colors.black54), title: Text('Список администраторов', style: TextStyle(fontSize: 25.0, color: Colors.black54, fontWeight: FontWeight.bold),), onTap: (){},),
            ListTile(leading: Icon(Icons.directions_bus,size: 40.0, color: Colors.black54), title: Text('Автобусы', style: TextStyle(fontSize: 26.0, color: Colors.black54, fontWeight: FontWeight.bold),),onTap: (){},),
            ListTile(leading: Icon(Icons.equalizer,size: 40.0, color: Colors.black54), title: Text('Статистика', style: TextStyle(fontSize: 26.0, color: Colors.black54, fontWeight: FontWeight.bold),),onTap: (){},),
            ListTile(leading: Icon(Icons.airline_seat_recline_normal_outlined,size: 40.0, color: Colors.black54), title: Text('Пассажиры', style: TextStyle(fontSize: 26.0, color: Colors.black54, fontWeight: FontWeight.bold),),onTap: (){},),
            ListTile(leading: Icon(Icons.date_range,size: 40.0, color: Colors.black54), title: Text('Расписание', style: TextStyle(fontSize: 26.0, color: Colors.black54, fontWeight: FontWeight.bold),), onTap: (){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context) => SchedulePage()),);},),
            ListTile(leading: Icon(Icons.book,size: 40.0, color: Colors.black54), title: Text('История', style: TextStyle(fontSize: 26.0, color: Colors.black54, fontWeight: FontWeight.bold),), onTap: (){},),
            ListTile(leading: Icon(Icons.settings,size: 40.0, color: Colors.black54), title: Text('Настройки', style: TextStyle(fontSize: 26.0, color: Colors.black54, fontWeight: FontWeight.bold),), onTap: (){},)
          ],
        ),
      ),
    );
  }
}