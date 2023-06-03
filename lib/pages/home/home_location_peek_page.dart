import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import '../../components/post_widget.dart';

class HomeLocationPeekPage extends StatelessWidget {
  HomeLocationPeekPage({super.key});

  GlobalKey<ContainedTabBarViewState> tabHomeKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainedTabBarView(
        key: tabHomeKey,
        tabBarProperties: const TabBarProperties(
          labelColor: Colors.redAccent,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.redAccent,
        ),
        tabs: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.location_on_outlined, size: 20),
              SizedBox(width: 5),
              Text(
                'Seoul, Korea',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // Icon(Icons.location_on_outlined, size: 20),
              Text(
                'Peek',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
        views: [
          HomeLocationDetailPage(),
          HomePeekDetailPage(),
        ],
      ),
    );
  }
}

class HomePeekDetailPage extends StatelessWidget {
  const HomePeekDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'input city',
              labelText: 'Paris, France',
              labelStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey[400],
            ),
          ),
        ),
        Expanded(child: HomeLocationDetailPage()),
        // HomeLocationDetailPage(),
      ],
    );
  }
}

Widget HomeLocationDetailPage() {
  return Padding(
    padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
    child: ListView(
      children: [...List.generate(10, (index) => PostWidget())],
    ),
  );
}
