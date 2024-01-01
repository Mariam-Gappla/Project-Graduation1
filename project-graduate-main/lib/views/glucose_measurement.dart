import 'package:diabetes/widgets/custom_button.dart';
import 'package:diabetes/widgets/custom_text_field.dart';
import 'package:diabetes/widgets/custom_text_field_center_text.dart';
import 'package:diabetes/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GlucoseMeasurement extends StatefulWidget {
  const GlucoseMeasurement({super.key});

  @override
  State<GlucoseMeasurement> createState() => _GlucoseMeasurementState();
}

class _GlucoseMeasurementState extends State<GlucoseMeasurement> {
  Color _color1 = Colors.grey;
  Color _color2 = Colors.grey;
  Color _color3 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'قياس السكر',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Icon(
              FontAwesomeIcons.arrowRight,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const CustomTextFieldCenterlable(
                lable: '16-11-2023',
                suffixIcon: FontAwesomeIcons.calendar,
                fillColor: Colors.white,
              ),
              const SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _toggleColor(1);
                        },
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                          color: _color1,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.droplet,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const Text('قياس السكر'),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _toggleColor(2);
                        },
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                          color: _color2,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.weightScale,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const Text('وزن'),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _toggleColor(3);
                        },
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                          color: _color3,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.handHoldingDroplet,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const Text('قياس السكر'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              const CustomTextField(
                hint: 'قياس السكر',
                fillColor: Colors.white,
                obscure: true,
                prefixIcon: FontAwesomeIcons.listNumeric,
                // showBorder: false,
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomTextField(
                hint: 'اسم الوجبه',
                fillColor: Colors.white,
                prefixIcon: FontAwesomeIcons.chevronCircleDown,

                // showBorder: false,
              ),
              const SizedBox(
                height: 36,
              ),
              CustomButton(
                text: 'حفظ',
                textcolor: Colors.white,
                color: Colors.black,
              ),
              const SizedBox(
                height: 21,
              ),
              const Text('او'),
              const SizedBox(
                height: 11,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                        text: 'بلوتوث',
                        width: 129,
                        height: 65,
                        circular: 15,
                        textcolor: Colors.white,
                        color: Colors.black,
                        icon: Icons.bluetooth),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Expanded(
                    child: CustomButton(
                      width: 129,
                      height: 65,
                      circular: 15,
                      text: 'واي فاي',
                      textcolor: Colors.white,
                      color: Color(0xff298363),
                      icon: Icons.wifi,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'تتبع قياس السكر',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              RadioButton(),
              
            ],
          ),
        ),
      ),
    );
    
  }
  void _toggleColor(int buttonNumber) {
    setState(() {
      _color1 = (buttonNumber == 1) ? Colors.black : Colors.grey;
      _color2 = (buttonNumber == 2) ? Colors.black : Colors.grey;
      _color3 = (buttonNumber == 3) ? Colors.black : Colors.grey;
    });
  }
}

