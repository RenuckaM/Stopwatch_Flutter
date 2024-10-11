import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(StopwatchApp());

class StopwatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stopwatch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StopwatchHome(),
    );
  }
}

class StopwatchHome extends StatefulWidget {
  @override
  _StopwatchHomeState createState() => _StopwatchHomeState();
}

class _StopwatchHomeState extends State<StopwatchHome> {
  Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    if (_timer != null && _timer!.isActive) return;
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {}); // Update the UI every 100ms
    });
    _stopwatch.start();
  }

  void _stopTimer() {
    _stopwatch.stop();
    _timer?.cancel();
  }

  void _resetTimer() {
    _stopwatch.reset();
    setState(() {}); // Update the UI to reflect the reset
  }

  String _formatDuration(Duration duration) {
    String hours = (duration.inHours).toString().padLeft(2, '0');
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    String milliseconds =
        (duration.inMilliseconds % 1000).toString().padLeft(3, '0');
    return "$hours:$minutes:$seconds:$milliseconds";
  }

  @override
  Widget build(BuildContext context) {
    final elapsed = _stopwatch.elapsed;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stopwatch',
          style: TextStyle(
            color: Colors.white, // Change this to your desired color
          ),
        ),
        backgroundColor: Color.fromARGB(255, 79, 135, 224),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 68, 219, 246),
              Color.fromARGB(255, 100, 148, 227),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _formatDuration(elapsed),
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _startTimer,
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      backgroundColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadowColor: Colors.black,
                      elevation: 10,
                    ),
                    child: Text(
                      'Start',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: _stopTimer,
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      backgroundColor: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadowColor: Colors.black,
                      elevation: 10,
                    ),
                    child: Text(
                      'Pause',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: _resetTimer,
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadowColor: Colors.black,
                      elevation: 10,
                    ),
                    child: Text(
                      'Stop',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
