import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:keras_demo/models/prediction.dart';
import 'package:keras_demo/screens/drawing_painter.dart';
import 'package:keras_demo/screens/prediction_widget.dart';
import 'package:keras_demo/services/recognizer.dart';
import 'package:keras_demo/utils/constants.dart';

class DrawScreen extends StatefulWidget {
  @override
  _DrawScreenState createState() => _DrawScreenState();
}

class _DrawScreenState extends State<DrawScreen> {
  final _points = List<Offset>();
  final _recognizer = Recognizer();
  List<Prediction> _prediction;
  bool initialize = false;

  @override
  void initState() {
    super.initState();
    _initModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digit Recognizer',
        style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'MNIST database of handwritten digits',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'It has training set of 60,000 examples, and a test set of 10,000 examples',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
          SizedBox(
            height: 10,
          ),
          _drawCanvasWidget(),
          SizedBox(
            height: 10,
          ),
          PredictionWidget(
            predictions: _prediction,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.clear,
        color: Colors.black,),
        onPressed: () {
          setState(() {
            _points.clear();
            _prediction.clear();
          });
        },
      ),
    );
  }

  Widget _drawCanvasWidget() {
    return Container(
      width: Constants.canvasSize + Constants.borderSize * 2,
      height: Constants.canvasSize + Constants.borderSize * 2,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: Constants.borderSize,
        ),
      ),
      child: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          Offset _localPosition = details.localPosition;
          if (_localPosition.dx >= 0 &&
              _localPosition.dx <= Constants.canvasSize &&
              _localPosition.dy >= 0 &&
              _localPosition.dy <= Constants.canvasSize) {
            setState(() {
              _points.add(_localPosition);
            });
          }
        },
        onPanEnd: (DragEndDetails details) {
          _points.add(null);
          _recognize();
        },
        child: CustomPaint(
          painter: DrawingPainter(_points),
        ),
      ),
    );
  }



  void _initModel() async {
    var res = await _recognizer.loadModel();
  }

  Future<Uint8List> _previewImage() async {
    return await _recognizer.previewImage(_points);
  }

  void _recognize() async {
    List<dynamic> pred = await _recognizer.recognize(_points);
    setState(() {
      _prediction = pred.map((json) => Prediction.fromJson(json)).toList();
    });
  }
}
