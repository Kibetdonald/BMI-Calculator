// ignore_for_file: prefer_final_fields, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult= " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
              //  color: HexColor("#1C1C1C"),
              fontSize: 18,
              fontWeight: FontWeight.w300),
        ),
        // backgroundColor: Colors.transparent,
         
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: HexColor("#1C1C1C"),
      body: SingleChildScrollView(
        child:Column(
          children:  [
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                      color: HexColor("#FCC91C"),
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8),
                      )

                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                      color: HexColor("#FCC91C"),
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8),
                      )

                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _w/ (_h * _h);
                  if (_bmiResult >25){
                    _textResult= "Begin exercising";
                  }
                  else if (_bmiResult>=18.5 && _bmiResult<=25){
                     _textResult= "You are in good shape";
                  }else{
                    _textResult="You're under weight";
                  }

                  }
                  

                );
              },
              child: Container(
                child: Text("Calculate", 
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                  color: HexColor("#FCC91C")

                ),),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
               child: Text(_bmiResult.toStringAsFixed(2), 
               style: TextStyle(
                 fontSize: 90,
                 color: HexColor("#FCC91C"),
                 fontWeight: FontWeight.w400,

                 ),
                

               ),
            ),
            const SizedBox(height: 30,),
             Visibility(
               visible: _textResult.isNotEmpty,
               child: Container(
                child: Text(_textResult,
                 style: TextStyle(
                   fontSize: 28,
                   fontWeight: FontWeight.w400,
                   color: HexColor("#FCC91C") 
                   ),
                  

                 ),
            ),
             ),
            const SizedBox(height: 40),
            
            Container(
              child: Text("Track your BMI and stay healthy!",
               
              style: 
              TextStyle(
                color: HexColor("#FAFAFA") ,
                fontWeight: FontWeight.w400,
                fontSize: 18) ,),
            )
          ],
        ) ,)
    );
  }
}
