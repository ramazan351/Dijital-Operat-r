import 'package:flutter/material.dart';
import 'package:flutter_digital_operator/ui/turkcell.dart';
import 'package:provider/provider.dart';
import 'package:flutter_digital_operator/ui/tabbar_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  Color mainColor;
  int _selectedIndex = 0;
  int _selectedIndexBottom = 0;

  @override
  void initState() {
    super.initState();
    mainColor = Colors.blue.shade800;
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
      print("Selected Index: " + _tabController.index.toString());
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndexBottom = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2, //iki eleman(turkcell/pasaj)
      child: Scaffold(
        body: bodyPage(context),
        appBar: AppBar(
          leading: Visibility(visible: false, child: Icon(Icons.menu)),
          backgroundColor: mainColor,
          actions: [
            IconButton(
                iconSize: screenSize.height * 0.045,
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ), //BİLDİRİM İCONU
                onPressed: null)
          ],
          title: AppBarTitleWidget(
            context: context,
            controller: _tabController,
            change: changeColor,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 12),
          iconSize: 22,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Hesabım',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.filter_none_outlined),
              label: 'Paketler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined),
              label: 'İşlemler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Uygulamalar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_outline),
              label: 'Yardım',
            ),
          ],
          currentIndex: _selectedIndexBottom,
          selectedItemColor:
              _selectedIndex == 1 ? Colors.amber : Colors.blue.shade900,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  TabBarView bodyPage(BuildContext ctx) {
    return TabBarView(controller: _tabController, children: [
      BottomBarPages.bottomBarPagesList.elementAt(_selectedIndexBottom),
      Center(child: Text("PASAJ"))
    ]);
  }

  changeColor(int index) {
    index == 1
        ? setState(() {
            mainColor = Color(0xffffc900);
          })
        : setState(() {
            mainColor = Colors.blue.shade700;
          });
  }
}
