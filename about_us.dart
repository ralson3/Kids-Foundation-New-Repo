import 'package:flutter/material.dart';

class AboutUS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
    Padding(
    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),

    child: Text(
    'The KIDS Foundation is a leading injury prevention and injury recovery not for profit organisation directly reaching more than 30,000 children each year. Our goal is to teach children to be safe and create a better life for those living with serious injury and burns.',
    style: TextStyle(
    color: Theme.of(context).primaryColor,
    fontSize:18.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 2.0,
    ),
    ),
    ),
          Image(height: 400.0, width: double.maxFinite, image: AssetImage('assets/images/home.jpg'
          ),
            fit: BoxFit.cover,
          ),
        ],
    );
  }
}

