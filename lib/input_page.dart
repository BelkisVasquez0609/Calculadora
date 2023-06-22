import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculadora_belkis_vasquez/card_container.dart';
import 'package:calculadora_belkis_vasquez/constants.dart';
import 'package:calculadora_belkis_vasquez/square_rounded_button.dart';
import 'package:calculadora_belkis_vasquez/icon_content.dart';
import 'package:calculadora_belkis_vasquez/ResultPage.dart';

enum Gender{
  male,
  female
}

final Color activeCardColor = Color(0XFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  var selectedGender;
  int height = 200;
  int weight = 50;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI_Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardContainer(
                    color: selectedGender == Gender.male ? kactiveCardColor : kinactiveCardColor,
                    card_child: iconContent(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                    onPress: (){
                      setState(() {
                        selectedGender =  Gender.male;
                      });
                    },
                  ),
                  CardContainer(
                    color: selectedGender == Gender.female ? kactiveCardColor : kinactiveCardColor,
                    card_child: iconContent(
                      text: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                    onPress: (){
                      setState(() {
                        selectedGender =  Gender.female;
                      });
                    },
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Expanded(
                   child: CardContainer(
                   color: kactiveCardColor,
                     card_child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Height"),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.baseline,
                         textBaseline: TextBaseline.alphabetic,

                         children: [
                           Text(
                             height.toString(),
                             style: kNumberTextStyle,
                           ),
                           Text(
                             'cm',
                             style: kTextStyle,
                           ),
                         ],
                       ),
                       SliderTheme(
                         //Personalizando componente del slider
                           data: SliderTheme.of(context).copyWith(
                               thumbShape: RoundSliderThumbShape(
                                   enabledThumbRadius: 15.0
                               ),
                               overlayShape: RoundSliderOverlayShape(
                                   overlayRadius: 30.0
                               ),
                               overlayColor: Color(0X29EB1555),
                               thumbColor: Color(0XFFEB1555),
                               activeTrackColor: Color(0XFFEB1555),
                               inactiveTrackColor: Color(0X29EB1555)
                           ),
                           child: Slider(
                               value: height.toDouble(),
                               min: 10.0,
                               max: 250,
                               onChanged: (newValue){
                                 setState(() {
                                   height = newValue.round();
                                 });
                               })
                       )
                     ],
                 ),
                     onPress: (){},
                 )
                 ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   CardContainer(
                     color: kactiveCardColor,
                     card_child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'WEIGHT',
                           style: kTextStyle,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.baseline,
                           textBaseline: TextBaseline.alphabetic,
                           children: [
                             Text(
                               weight.toString(),
                               style: kNumberTextStyle,
                             ),
                             Text(
                               'kg',
                               style: kTextStyle,
                             ),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SquareRoundedButton(
                                 icon: FontAwesomeIcons.minus,
                                 color: kSquareRoundedButtonDefaultColor,
                                 height: 50.0,
                                 width: 50.0,
                                 onPressed: (){
                                   setState(() {
                                     if(weight > 0){
                                       weight--;
                                     }
                                   });
                                 }
                             ),
                             SizedBox(
                               width: 10.0,
                             ),
                             SquareRoundedButton(
                                 icon: FontAwesomeIcons.plus,
                                 color: kSquareRoundedButtonDefaultColor,
                                 height: 50.0,
                                 width: 50.0,
                                 onPressed: (){
                                   setState(() {
                                       weight ++;
                                   });
                                 }
                             ),
                           ],
                         )
                       ],
                     ),
                     onPress: (){},
                   ),
                   CardContainer(
                     color: kactiveCardColor,
                     card_child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'AGE',
                           style: kTextStyle,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.baseline,
                           textBaseline: TextBaseline.alphabetic,
                           children: [
                             Text(
                               age.toString(),
                               style: kNumberTextStyle,
                             ),
                             Text(
                               'year',
                               style: kTextStyle,
                             ),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             SquareRoundedButton(
                                 icon: FontAwesomeIcons.minus,
                                 color: kSquareRoundedButtonDefaultColor,
                                 height: 50.0,
                                 width: 50.0,
                                 onPressed: (){
                                   setState(() {
                                     if(age > 0){
                                       age--;
                                     }
                                   });
                                 }
                             ),
                             SizedBox(
                               width: 10.0,
                             ),
                             SquareRoundedButton(
                                 icon: FontAwesomeIcons.plus,
                                 color: kSquareRoundedButtonDefaultColor,
                                 height: 50.0,
                                 width: 50.0,
                                 onPressed: (){
                                   setState(() {
                                     age ++;
                                   });
                                 }
                             ),
                           ],
                         )
                       ],
                     ),
                     onPress: (){},
                   )
                ],
              ),
            ),
            Container(
              color: kactiveCardColor,
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              //GestureDetector para manejar el objeto hijo
              child: GestureDetector(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                        elevation: 0.0,
                        child: Icon(FontAwesomeIcons.arrowRightLong),
                        constraints: BoxConstraints.tightFor(
                            height: 50.0,
                            width: 150.0
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0
                          ),
                          side: BorderSide(width: 3.0, color: Colors.white),
                        ),
                        fillColor: Colors.transparent,
                        onPressed: (){
                          if(weight.toDouble()!=0.0){
                            double result = bmiCalculation(height.toDouble(), weight.toDouble());
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context){
                                  return ResultPage(data: result,);
                                })
                            );
                          }
                          else{
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Error'),
                                  content: Text('No se puede igresar un peso menor que 1kg. Por favor ingrese otra cantidad'),
                                  actions: [
                                    TextButton(
                                      child: Text('Cerrar'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        }
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

double bmiCalculation (double height, double weight){
  double base = (height/100);
  return weight / pow(base, 2);
}


