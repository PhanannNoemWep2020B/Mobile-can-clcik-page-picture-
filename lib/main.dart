
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(Mobile());
class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
          title: Text("Basic Mobile Apps"),
          actions: <Widget>[
           IconButton(
             icon: Icon(Icons.share, size: 25.0, color: Colors.white,),),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.share),
              ),
              Tab(
                icon: Icon(Icons.people),
              ),
              Tab(
                icon: Icon(Icons.group),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.overthinkingit.com/wp-content/uploads/2010/01/Avatar-Sucks.jpg"),
                    
                  ),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text("avatar@gmail.com"),
                leading: Icon(Icons.email),
              ),
              ListTile(
                title: Text("Facebook"),
                leading: Icon(Icons.account_box),
              ),
            ],

          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Image.network("https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            fit: BoxFit.cover,
            height: 70.0,
            ),
            Image.network("https://i.site.pictures/mqCP7.md.jpg",
            fit: BoxFit.cover,
            height: 70.0,
            ),
            Image.network("http://wallup.net/wp-content/uploads/2015/12/74165-nature-HDR-river-trees-mountain-landscape.jpg",
              fit: BoxFit.cover,
              height: 70.0,
            ),
          ],
        ),
        //Footer
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(icon: Icon(Icons.home),),
                IconButton(icon: Icon(Icons.person),),
                IconButton(icon: Icon(Icons.share),),
                IconButton(icon: Icon(Icons.search),),
              ],
            ),
          ),
        ),
        floatingActionButton: SpeedDial(
          marginRight: 18,
          marginBottom: 20,
         animatedIcon: AnimatedIcons.menu_close,
         animatedIconTheme: IconThemeData(size: 22.0),
         overlayColor: Colors.greenAccent,
         overlayOpacity: 0.3,
         children: [
           SpeedDialChild(
             child: Icon(Icons.settings_phone),
             backgroundColor: Colors.blue,
             label: 'Phone Call',
             labelStyle: TextStyle(fontSize: 17.0, color: Colors.redAccent),
             onTap: () => print('Phone'),
           ),
           SpeedDialChild(
             child: Icon(Icons.settings_voice),
             backgroundColor: Colors.blue,
             label: 'Voice',
             labelStyle: TextStyle(fontSize: 17.0, color: Colors.orange),
             onTap: () => print("voice"),
           ),
           SpeedDialChild(
             child: Icon(Icons.speaker),
             backgroundColor: Colors.blue,
             label: 'Speaker',
             labelStyle: TextStyle(fontSize: 17.0, color: Colors.redAccent,
               
             ),
           ),
         ],
        ),
      ),
      ),
    );
  }
}