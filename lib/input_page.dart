import 'package:final_bmi_calculator/constant_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_text_file.dart';
import 'container_file.dart';
import 'constant_file.dart';


enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int sliderHeight=180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: RepeatContainerCode(
                        onPressed: (){
                          setState(() {
                            selectGender = Gender.male;
                          });
                        },
                        colors: selectGender == Gender.male?activeColor:deActiveColor,
                        cardWidget: RepeatTextandIconeWidget(
                          iconData: FontAwesomeIcons.male,
                          label: 'MALE',
                        ),
                      ),

                  ),
                  Expanded(
                      child: RepeatContainerCode(
                        onPressed: (){
                          setState(() {
                            selectGender = Gender.female;
                          });
                        },
                        colors: selectGender == Gender.female?activeColor:deActiveColor,
                        cardWidget: RepeatTextandIconeWidget(
                          iconData: FontAwesomeIcons.female,
                          label: 'FEMALE',
                        ),

                      ),

                  ),
                ],
              )
          ),

          Expanded(
            child: RepeatContainerCode(
              colors: Color(0xFF1D1E33),
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('HEIGHT',style: kLabelStyle ,),
                  Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(sliderHeight.toString(),style: kNumberStyle),
                      Text('cm',style: kLabelStyle,),

                    ],

                  ),
                  Slider(
                    value: sliderHeight.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue ){
                      setState(() {
                        sliderHeight = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),

          Expanded(
            child:  Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(colors: Color(0xFF1D1E33),)
                ),
                Expanded(
                    child: RepeatContainerCode(colors: Color(0xFF1D1E33),)
                ),
              ],
            )
          ),
        ],
      )
    );
  }
}




