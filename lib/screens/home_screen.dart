import 'package:facebook/constans/my_colors.dart';
import 'package:facebook/screens/tab_frends_screen.dart';
import 'package:facebook/screens/tab_home_screeen.dart';
import 'package:facebook/screens/tab_notification_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Facebook',
              style: TextStyle(fontWeight: FontWeight.w900,fontSize:40),
            ),
           Row(

             children: [
               Container(
                 decoration: BoxDecoration(
                     color: Colors.lightBlue,
                     borderRadius: BorderRadius.all(Radius.circular(10))
                 ),
                 child: Icon(Icons.add,size:32),
               ),
               SizedBox(width: 10,),
               Container(
                 decoration: BoxDecoration(
                     color: Colors.lightBlue,
                     borderRadius: BorderRadius.all(Radius.circular(10))
                 ),
                 child: Icon(Icons.search,size:32),
               ),
               SizedBox(width: 10,),
               Container(
                 decoration: BoxDecoration(
                     color: Colors.lightBlue,
                     borderRadius: BorderRadius.all(Radius.circular(10))
                 ),
                 child: Icon(Icons.mark_email_unread_outlined,size:32),
               )
             ],
           )
          ],
        ),
        backgroundColor: MyColors.blue,
        bottom: TabBar(
          labelColor: MyColors.white,
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.people)),
            Tab(icon: Icon(Icons.tv)),
            Tab(icon: Icon(Icons.doorbell)),
            Tab(icon: Icon(Icons.menu)),


          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Tab_Home_Screen(),
          Tab_Friends_Screen(),
          Tab_Home_Screen(),
          NotificationScreen(),
          Center(child: Text('Tab 3 Content')),
        ],
      ),
    );
  }
}
