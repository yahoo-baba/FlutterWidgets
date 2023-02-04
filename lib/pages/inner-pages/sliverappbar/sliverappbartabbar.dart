import 'package:flutter/material.dart';

class SliverAppBarTabBar extends StatefulWidget {
  const SliverAppBarTabBar({super.key});

  @override
  State<SliverAppBarTabBar> createState() => _SliverAppBarTabBarState();
}

class _SliverAppBarTabBarState extends State<SliverAppBarTabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: false,
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Goa', textScaleFactor: 1),
                  background: Image.asset(
                    'assets/images/beach.jpeg',
                    fit: BoxFit.fill,
                  ),
                  stretchModes: [StretchMode.zoomBackground],
                ),
                //collapsedHeight: 100,
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.flight), text: "Tab 1"),
                      Tab(icon: Icon(Icons.directions_transit), text: "Tab 2"),
                      Tab(icon: Icon(Icons.directions_car), text: "Tab 3"),
                    ],
                  ),
                ),
                pinned: false,
              ),
            ];
          },
          body: TabBarView(
            children: [
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
    _SliverAppBarDelegate(this._tabBar);

    final TabBar _tabBar;

    @override
    double get minExtent => _tabBar.preferredSize.height;
    @override
    double get maxExtent => _tabBar.preferredSize.height;

    @override
    Widget build(
        BuildContext context, double shrinkOffset, bool overlapsContent) {
      return new Container(
        child: _tabBar,
      );
    }

    @override
    bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
      return false;
    }
  }
