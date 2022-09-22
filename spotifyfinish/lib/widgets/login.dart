import 'package:flutter/material.dart';
import 'package:spotifyfinish/main.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            child: Container(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/loginGreen.png'),
            ),
          ),
          SizedBox(
            child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 100),
              child: Image.asset('assets/loginSpotifyText.png'),
            ),
          ),
          SizedBox(
            child: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 175),
                child: Container(
                  child: Text(
                    'Millions of songs, free on spotify',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          SizedBox(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              alignment: Alignment.center,
              child: Container(
                width: 320,
                height: 430,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        'Login Account',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      width: 250,
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          controller: _controller,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 12),
                              hintText: 'Email or username',
                              filled: true,
                              hoverColor: Colors.green,
                              fillColor: Colors.white,
                              hintStyle: TextStyle(
                                color: Color(0xff1ED760),
                                fontSize: 13,
                              ),
                              focusColor: Colors.white,
                              //hintStyle: ,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff1ED760), width: 1),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              suffixIcon: IconButton(
                                  icon: Image.asset('assets/loginMail.png'),
                                  onPressed: (() {
                                    setState(() {
                                      _controller.clear();
                                    });
                                  }))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                      width: 250,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          controller: _controller,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 12),
                              hintText: 'Password',
                              filled: true,
                              hoverColor: Colors.green,
                              fillColor: Colors.white,
                              hintStyle: TextStyle(
                                color: Color(0xffE3E3E3),
                                fontSize: 13,
                              ),
                              focusColor: Colors.white,
                              //hintStyle: ,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffE3E3E3), width: 1),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              suffixIcon: IconButton(
                                  icon: Image.asset('assets/loginPassword.png'),
                                  onPressed: (() {
                                    setState(() {
                                      _controller.clear();
                                    });
                                  }))),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20,left: 37),
                          child: Text(
                            'Remember Me',
                            style: TextStyle(
                                color: Color(0xffDADADA),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20,right: 40),
                          child: Image.asset('assets/loginToggleButton.png'),
                        )
                      ],
                    ),
                    Container(
                width: 250,
                height: 40,
                margin: EdgeInsets.only(bottom: 20, top: 30),
                //alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: Color(0xff1ED760),
                    borderRadius: BorderRadius.circular(20)),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => MyHomePage(),
                        ),
                      );
                    });
                  },
                  child: Center(
                    child: Text(
                      ' LOG IN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(0),
                    //alignment: Alignment.topLeft,
                    width: 100,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color(0xffE3E3E3)
                    ),
                  ),
                  Text(
                      ' Or',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffE3E3E3),
                        fontWeight: FontWeight.bold,
                        fontSize: 8,
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(0),
                    //alignment: Alignment.topLeft,
                    width: 100,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color(0xffE3E3E3)
                    ),
                  ),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 55,
                    child: Container(
                      margin: EdgeInsets.only(left: 35,right: 0,top: 0),
                      child: IconButton(onPressed: () {  }, icon: Image.asset('assets/loginGoogle.png'),
                  
                      )
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 55,
                    child: Container(
                      margin: EdgeInsets.only(right: 35,top: 0),
                      child: IconButton(onPressed: () {  }, icon: Image.asset('assets/loginFacebook.png'),
                  
                      )
                    ),
                  ),
                  
                ],
              ),
              GestureDetector(
                onTap:() {},
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  child:Text(
                        ' Forget Password?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffE3E3E3),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                ),
              )

                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 80,left: 58),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                          "Don't have an account?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 80,right: 85),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                          "Sign up now",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
