import 'package:flutter/material.dart';
import 'package:kids_foundation_app/screens/home_screen.dart';
import 'package:kids_foundation_app/screens/login_screen.dart';


class UserLoginScreen extends StatelessWidget {

  _buildDrawerOption(Icon icon, String title, Function onTap){
    return ListTile(leading: icon, title: Text(title, style: TextStyle(fontSize: 20.0,
    ),
    ),
      onTap: onTap,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(

        children: <Widget>[
          Image(height: 200.0, width: double.infinity, image: AssetImage('assets/images/login.JPG'
          ),
            fit: BoxFit.cover,
          ),
              SizedBox(width: 6.0),
              Text("SeeMore",
                style: TextStyle(color: Colors.red,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
          _buildDrawerOption(Icon(Icons.dashboard), 'Home', () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()
          ),
          ),
          ),
          Expanded(child: Align(alignment: FractionalOffset.bottomCenter,

          child: _buildDrawerOption(
            Icon(Icons.directions_run),
            'logout',
                () => Navigator.pushReplacement(
              context,
            MaterialPageRoute(
              builder: (_) => LoginScreen(),
            ),
          ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
