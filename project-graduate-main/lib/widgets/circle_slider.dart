import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircleSlider extends StatelessWidget {
  const CircleSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      initialValue: 50, // Initial value
      max: 100, // Maximum value
      appearance: CircularSliderAppearance(
        customColors: CustomSliderColors(
          progressBarColors: [Colors.red, Colors.blue], // Customize progress bar colors
          trackColor: Colors.grey, // Customize track color
          // shadowColor: Colors.black, // Customize shadow color
          shadowMaxOpacity: 0.1, // Set shadow maximum opacity
        ),
        customWidths: CustomSliderWidths(
          progressBarWidth: 2, // Set progress bar width
          trackWidth: 7, // Set track width
          shadowWidth: 14, // Set shadow width
        ),
        size: 80, // Set the slider's size
        startAngle: 150, // Set the starting angle
        angleRange: 240, // Set the angle range
        infoProperties: InfoProperties(
          // Customize label style
          mainLabelStyle: const TextStyle(fontSize: 24, color: Colors.blue),
          modifier: (double value) {
            // Display value as a percentage
            return '${value.toStringAsFixed(0)}%';
            // return '${Icon(Icons.assist_walker)}';
          },
        ),
        spinnerMode: false, // Disable spinner mode
        animationEnabled: true, // Enable animation
      ),
      onChange: (double value) {
        // Handle value change here
      },
    );
  }
}
