import 'package:flutter/material.dart';
import 'package:riptide/Screens/Task1_ScreenDesign/HomeScreen/Widgets/featuredwave_viewer.dart';

class ExploreWidget extends StatefulWidget {
  const ExploreWidget({super.key});

  @override
  _ExploreWidget createState() => _ExploreWidget();
}

class _ExploreWidget extends State<ExploreWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  dividerColor: Colors.transparent,
                  indicator: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    )),
                  ),
                  tabs: const [
                    Tab(
                      child: Text(
                        'Recommended',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Nearby',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ]),
              const SizedBox(height: 20),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    RecommendedViewer(),
                    NearbyViewer(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
