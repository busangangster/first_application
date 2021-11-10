import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Datepicker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String date = "";
  DateTime selectedDate = DateTime.now();
  DateTime toDay = DateTime.now();
  List<int> days = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Datepicker"),
      ),
      body: _buildStaticListView(),
      floatingActionButton : FloatingActionButton(
        onPressed: () {
          _selectDate(context);
        },
        child: Icon(Icons.add),
      ),

      );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
        days.add(selectedDate.difference(toDay).inDays);
      });
  }
  _buildStaticListView() {
    return ListView.builder(
      itemCount: days.length,
        itemBuilder: (BuildContext context, index) {
      return ListTile(
        title: Text("D - ${days[index]}",
        style: TextStyle(fontSize: 23),),
        trailing: Icon(Icons.delete),

      );
    });
  }
}
