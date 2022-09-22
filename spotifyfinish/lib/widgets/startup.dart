import 'package:flutter/material.dart';
import 'package:spotifyfinish/widgets/getstarted.dart';


class StartUpWidget extends StatefulWidget {
  bool click;
  StartUpWidget({required this.click});

  @override
  State<StartUpWidget> createState() => _StartUpWidgetState();
}

class _StartUpWidgetState extends State<StartUpWidget> {
  // double _myDuration = 300;
  Color _color = Colors.red;
  double _seconds = 2;
  bool _click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => GetStarted(),
              ),
            );
          });
        },
        child: Container(
          //margin: EdgeInsets.only(top: 10),
          child: AnimatedCrossFade(
            firstChild: Image.asset('assets/spotifyLogo.png',color: Colors.yellow),
            secondChild: Image.asset('assets/spotifyLogoGreen.png'),
            duration: Duration(seconds: 2),
            firstCurve: Curves.linear,
            secondCurve: Curves.elasticIn,
            crossFadeState: widget.click
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
          ),
        ),
      )),
    );
  }
}
