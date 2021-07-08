import 'package:flutter/material.dart';
import 'package:flutter_digital_operator/ui/bottombar_pages.dart';
import 'package:flutter_digital_operator/ui/draggable_widget.dart';
import 'package:flutter_digital_operator/ui/floattinbutton_widget.dart';
import 'package:flutter_digital_operator/ui/tabbar_widget.dart';
import 'package:flutter_digital_operator/ui/textfiled_widget.dart';
import 'package:flutter_digital_operator/ui/user_tabcar_widget.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
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
    return Stack(
      children: [
        DefaultTabController(
          length: 2, //iki eleman(turkcell/pasaj)
          child: Scaffold(
            floatingActionButton: MyFloatingActionButton(),
            body: bodyPage(context),
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
        ),
        MyDraggableWidget()
      ],
    );
  }

  bodyPage(BuildContext ctx) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (BuildContext bCtx, bool _bool) {
        return [
          SliverAppBar(
            floating: true,
            snap: true,
            actions: [
              IconButton(
                  iconSize: MediaQuery.of(context).size.height * 0.045,
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ), //BİLDİRİM İCONU
                  onPressed: null),
            ],
            backgroundColor: mainColor,
            title: MyAppBarTitleWidget(
              context: context,
              controller: _tabController,
              change: changeColor,
            ),
          ),
          SliverToBoxAdapter(child: MyTabCard()),
          SliverToBoxAdapter(child: TextFFieldWidget()),
        ];
      },
      body: TabBarView(controller: _tabController, children: [
        BottomBarPages.bottomBarPagesList.elementAt(_selectedIndexBottom),
        Center(child: Text("PASAJ"))
      ]),
    );
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
