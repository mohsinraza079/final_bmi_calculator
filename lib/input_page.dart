import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_text_file.dart';
import 'container_file.dart';

const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deActiveColor;
  Color femaleColor = deActiveColor;
  void updateColor(int gender){
    if(gender==1){
      maleColor = activeColor;
      femaleColor = deActiveColor;
    }
    if(gender==2){
      maleColor = deActiveColor;
      femaleColor = activeColor;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector (
                      onTap: ()
                      {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            updateColor(2);
                          });
                        },
                        child: RepeatContainerCode(
                          colors: maleColor,
                          cardWidget: RepeatTextandIconeWidget(
                            iconData: FontAwesomeIcons.male,
                            label: 'MALE',
                          ),
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: RepeatContainerCode(
                      colors: femaleColor,
                      cardWidget: RepeatTextandIconeWidget(
                        iconData: FontAwesomeIcons.female,
                        label: 'FEMALE',
                      ),

                    )
                  ),
                ],
              )
          ),

          Expanded(
            child: RepeatContainerCode(colors: Color(0xFF1D1E33), ),
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




