import 'package:calculadora_belkis_vasquez/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({ required this.data});
  final double data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Page'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text((
              //Ultimo dos decimales
                  data.toStringAsFixed(2)),
                  style: kNumberTextStyle),
              Text(
                  WeightCalculate(data),
                  style: kTextStyle
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String WeightCalculate(double peso) {
    //Female
    if (peso < 16) {
      return 'Severe Thinness';
    } else if (peso >= 16 && peso <= 17) {
      return 'Moderate Thinness';
    } else if (peso >= 17.1 && peso <= 18.5) {
      return 'Mild Thinness';
    }else if (peso >= 18.6 && peso <= 25) {
      return 'Normal';
    }else if (peso >= 25.1 && peso <= 30) {
      return 'Overweight';
    }else if (peso >= 30.1 && peso <= 35) {
      return 'Obese Class 1';
    } else if (peso >= 35.1 && peso <= 40) {
      return 'Obese Class 2';
    }else if (peso > 40) {
      return 'Obese Class 3';
    }
    else {
      return 'Out of range';
    }
}
