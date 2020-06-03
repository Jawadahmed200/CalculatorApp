import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
var num1=0,num2=0,res=0;
final TextEditingController t1=new TextEditingController(text: "0");
final TextEditingController t2=new TextEditingController(text: "0");
void doAddition(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    res=num1+num2;
  });
}
void doSubtraction(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    res=num1-num2;
  });
}

void doMultipication(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    res=num1*num2;
  });
}
void doDivision(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    try {
      res=num1~/num2;
    } catch (e) {
      res=0;
    }
    
  });
}

void doClear(){
  setState(() {
    t1.text="0";
    t2.text="0";
    res=0;
  });
}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text("Calculator"),
        ),
      ),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Output : $res",style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.purple
            ),),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 1",
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 2",
              ),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doSubtraction,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("x"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doMultipication,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: doDivision,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.teal,
                  textColor: Colors.black,
                  onPressed: doClear,
                )
              ],
            )
          ],
        )

      ),
    );
  }
}