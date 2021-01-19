import 'package:flutter/material.dart';

class MyErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: Colors.purple[300],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset('assets/images/Error.png'),
              ),
              Text(
                "Check Profile ID !",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans',
                ),
              ),
              Text(
                "We couldn't find such User..",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'OpenSans', 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              OutlineButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.white),
                highlightedBorderColor: Colors.white54,
                onPressed: ()=>Navigator.pop(context),
                child: Text(
                  "Go Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'OpenSans',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
