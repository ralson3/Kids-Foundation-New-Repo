import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.amber[700],
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Image(
          image: new AssetImage("assets/background.jpg"),
          fit: BoxFit.fill,
   //       colorBlendMode: BlendMode.darken,
   //       color: Colors.amber,
        ),

    

        new Theme(
          data: new ThemeData(
              brightness: Brightness.dark,
              inputDecorationTheme: new InputDecorationTheme(
              //  hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle:
                new TextStyle(color: Colors.white, fontSize: 25.0, backgroundColor: Colors.blueAccent),
              )),
          isMaterialAppTheme: true,

         

          child: new Column(


            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
				        children: <Widget>[                 
                      Image.asset(
                        "assets/logo.jpg",
                        width:80,
                        height: 70,
                      ),
                  

                    ],
                  ),
            Opacity(opacity: 0.75,
            child: Column()
            ),
              new Container(
                padding: const EdgeInsets.all(20.0),
                alignment: Alignment.bottomCenter,
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Enter Email", fillColor: Colors.black87),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Password",
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.blueAccent,
                        splashColor: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("Login"),
                        onPressed: () {},
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                      ),
                       new MaterialButton(
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.blueAccent,
                        splashColor: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("SignUP"),
                        onPressed: () {},
                          )
                    ],
                  ),
                ),
              )
            ], 
          ),
        ),
      ]
      ),
    );
  }
}
