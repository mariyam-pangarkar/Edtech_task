import 'package:edtech_task/Audiopage.dart';
import 'package:edtech_task/NotificationPage.dart';
import 'package:edtech_task/RewardsPage.dart';
import 'package:edtech_task/campuspage.dart';
import 'package:edtech_task/channelpage.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;
  final List<String> _titles = [
    'Campus',
    'Channels',
    'Audio',
    'Rewards',
    'Notifications',
  ];
  // They are different screen pages which i called from this list which will display on the body
  final List<Widget> _pages = [
    const CampusPage(), 
    const ChannelPage(),
    const AudioPage(),
    const RewardsPage(),
    const NotificationsPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: ClipOval(
                child: Image.asset(
              'images/profile.png',
              fit: BoxFit.fill,
            )),
          ),
        ),
        title: Text(_titles[_selectedIndex]),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.message),
          )
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(
        children: <Widget>[
          BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Campus',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.network_locked),
                label: 'Channels',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.audiotrack),
                label: 'Audio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Rewards',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xff16C083),
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
          ),
          Positioned(
            top: 0,
            left: MediaQuery.of(context).size.width * _selectedIndex / 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 6,
                height: 5,
                decoration: const BoxDecoration(
                  color: Color(0xff16C083),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton:Container(
        width: 56,
        height: 56,
                                decoration: BoxDecoration(
                                  color: Color(0xff16C083),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Color(0xff16C083), width: 3),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
    );
  }
}
