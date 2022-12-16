import 'package:flutter/material.dart';

class newEventScreen extends StatefulWidget {
  const newEventScreen({super.key});

  @override
  State<newEventScreen> createState() => _newEventScreenState();
}

class _newEventScreenState extends State<newEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text("New Event"),
       backgroundColor: Color.fromARGB(255, 56, 49, 145),
      ),
       backgroundColor: Color.fromARGB(255, 130, 114, 223),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
        
          children: [
            Padding(padding: EdgeInsets.fromLTRB(30, 80, 30, 80)),
            TextField( 
              style: TextStyle(color: Colors.white),
              cursorColor: Color.fromARGB(255, 130, 114, 223),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                hintText: "Event", hintStyle: TextStyle(color: Color.fromARGB(255, 216, 214, 214)),
                labelText: "Add Event", labelStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Color.fromARGB(255, 56, 49, 145),
              prefixIcon: Icon(Icons.event,
          
              color: Colors.white,
             ),
              focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(40),
        borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 56, 49, 145),),
      ),
             border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 56, 49, 145),),
              borderRadius: BorderRadius.circular(40)),
             ),
             controller: _textEditingController,
            ),
          SizedBox(height: 30,),
            SizedBox(
              height: 50,
              width: 330,
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 191, 180, 255),
                      shape:  RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(30)
              ),
                    ),
                    onPressed: (){
                    String newEventText = _textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                  }, child: Text("ADD"));
                }
              ),
            ),
          ],
        ),
      ),
      );
    
  }
}