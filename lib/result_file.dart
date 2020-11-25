import 'package:flutter/material.dart';
import 'constant_file.dart';
import 'container_file.dart';
import 'input_page.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
             child: Container(
               child: Text('Your Result',style: kTitleStyleS2,),
             ),
          ),
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultText,
                  ),
                  Text(
                    '18.3',
                    style: kBMiTextStyle,
                  ),
                  Text(
                    'BMI is low you should have to work more',
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child:  GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
              } ,
              child: Container(

                child: Center(
                    child: Text('ReCalculate',style: kLargeButtonStyle,)),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 20.0,
              ),
            ),
          ),
        ],

    )
    );
  }
}