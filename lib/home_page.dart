import 'package:flutter/material.dart';
import 'package:pulse_button/pulse_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var temp = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PulseButton(temp * 99),
            const SizedBox(
              height: 20,
            ),
            Slider(
              value: temp,
              onChanged: (value) {
                setState(() {
                  temp = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
