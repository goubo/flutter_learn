import 'package:flutter/material.dart';
import 'package:komga_read/entity/komga_entity.dart';

class KomgaIndex extends StatelessWidget {
  const KomgaIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("书库"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<KomgaLibrary> itemList = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  void loadData() {}
}
