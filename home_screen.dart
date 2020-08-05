import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
  with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
        color: Theme.of(context).primaryColor
        ),
        title: Text('Kids Foundation',
        style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
      ),
      ),
        bottom: TabBar(
          controller: _tabController,
            indicatorWeight: 3,
            labelColor: Theme.of(context).primaryColor,
            labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600
            ),
            unselectedLabelStyle: TextStyle(fontSize: 18.0,
            ),
            tabs: <Widget>[
          Tab(text: 'ABOUT US',),
          Tab(text: 'Classroom'),
        ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),

          child: Text(
            'The KIDS Foundation is a leading injury prevention and injury recovery not for profit organisation directly reaching more than 30,000 children each year. Our goal is to teach children to be safe and create a better life for those living with serious injury and burns.',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          fontSize:24.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
      ),
          ),
              ),
            ],
          ),
        ],
    ),
    );
  }
}
