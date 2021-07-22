

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

double _currentSliderValue = 0;
Color getColor() {
  if (_currentSliderValue <= 10)
    return Colors.red;
  else if (_currentSliderValue <= 20)
    return Colors.orange;
  else if (_currentSliderValue <= 30)
    return Colors.amber;
  else if (_currentSliderValue <= 40)
    return Colors.pink;
  else if (_currentSliderValue <= 50)
    return Colors.green;
  else
    return Colors.green;
}
String feedback(){
  if (_currentSliderValue <= 10)
    return 'Sorry, we will show you something better the next time';
  else if (_currentSliderValue <= 20)
    return 'Hope to improve on our feed';
  else if (_currentSliderValue <= 30)
    return 'Hmm, lets see if we can find something more exciting';
  else if (_currentSliderValue <= 40)
    return 'This is nice, isnt it? We shall get you the best one.';
  else if (_currentSliderValue <= 50)
    return 'Glad you liked this a lot';
  else
    return '';
}
class Q4 extends StatefulWidget {
  const Q4({Key? key}) : super(key: key);

  @override
  _Q4State createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz App")),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20.00,
            ),
            FadeInImage.memoryNetwork(
              image: 
                  "https://images.unsplash.com/photo-1541890289-b86df5bafd81?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=728&q=80",
              placeholder: kTransparentImage,
              height: 200.0,
            ),
            Text(
              "Rate the above image on the range of 10-50",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20.00,
            ),
            Slider(
              value: _currentSliderValue,
              activeColor: getColor(),
              min: 0,
              max: 50,
              divisions: 10,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                  if (_currentSliderValue < 10) {}
                });
              },
            ),
            SizedBox(
              height: 20.00,
            ),
            Text(
              "$_currentSliderValue",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[900],
                fontSize: 10.0,
                fontWeight: FontWeight.normal,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20.00,
            ),
            Text(
              feedback(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: getColor(),
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20.00,
            ),
            ElevatedButton.icon(onPressed:(){Navigator.pushNamed(context, '/page5');},
            label: Text('Next'), 
            icon:Icon(
               Icons.next_plan,
               color: Colors.blue[900],
            ),),
          ],
        ),
      ),
    );
  }
}
