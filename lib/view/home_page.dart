import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // ignore: unused_field
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Key"),
        bottom: const TabBar(tabs: [
          Tab(text: 'Apple'),
          Tab(text: 'Tesla'),
          Tab(text: 'Busines'),
          Tab(text: 'Technology'),
          Tab(text: 'Magazine'),
        ]),
      ),
    );
  }

  // List<Widget> _newsBody = [];
}
