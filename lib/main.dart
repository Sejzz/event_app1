import 'package:event/new_event.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
final List<Widget> _list = [
   
    ];
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Event Schedular"),
         backgroundColor: Color.fromARGB(255, 56, 49, 145),),
        backgroundColor: Color.fromARGB(255, 130, 114, 223),
        body: ListView.builder(
          itemCount: _list.length, //item count is the number of time the list builder will call this function
        padding: EdgeInsets.only(top: 20),
         itemBuilder: ((context, index) =>
           Container(
            width: MediaQuery.of(context).size.width,
           // height:  70,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
           child: Container(width: MediaQuery.of(context).size.width,
           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            _list[index]
            //Text(_list[index]),
           ],
           ),),
            ),
          )
          
         )
          ),


floatingActionButton: Builder(
 
  builder: (context) {
    return     FloatingActionButton(
      backgroundColor:  Color.fromARGB(255, 56, 49, 145),
      onPressed: () async {
    String newText = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context)=> newEventScreen()));   //we need the context so we will wrap the FAB with a builder
    setState(() {
      _list.add(Text(newText));
    });
    },
    child: Icon(Icons.add),
    );
  }
),
        
        ),
     
    );
  }
}
