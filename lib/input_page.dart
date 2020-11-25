import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_text_file.dart';
import 'container_file.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: RepeatContainerCode(
                      colors: Color(0xFF1D1E33),
                      cardWidget: RepeatTextandIconeWidget(
                        iconData: FontAwesomeIcons.male,
                        label: 'MALE',
                      ),
                    )
                  ),
                  Expanded(
                    child: RepeatContainerCode(
                      colors: Color(0xFF1D1E33),
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




