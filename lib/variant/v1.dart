import 'package:flutter/material.dart';

class V1 extends StatefulWidget {
  const V1({super.key});

  @override
  State<V1> createState() => _V1State();
}

class _V1State extends State<V1> {
  double _width = 100.0;
  double _height = 100.0;
  double _radius = 0.0;

  void _onChangeWidth(double value) {
    setState(() {
      _width = value;
    });
  }

  void _onChangeHeight(double value) {
    setState(() {
      _height = value;
    });
  }

  void _onChangeBorderRadius(double value) {
    setState(() {
      _radius = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Row(
          children: [
            const Text("Width: "),
            Text(
              _width.toStringAsFixed(2),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          value: _width,
          min: 50.0,
          max: 250.0,
          onChanged: _onChangeWidth,
        ),

       
        Row(
          children: [
            const Text("Height: "),
            Text(
              _height.toStringAsFixed(2),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          value: _height,
          min: 50.0,
          max: 250.0,
          onChanged: _onChangeHeight,
        ),

       
        Row(
          children: [
            const Text("Radius: "),
            Text(
              _radius.toStringAsFixed(2),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          value: _radius,
          min: 0.0,
          max: 100.0,
          onChanged: _onChangeBorderRadius,
        ),

        const SizedBox(height: 40),

        
        Center(
          child: Container(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(_radius),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
