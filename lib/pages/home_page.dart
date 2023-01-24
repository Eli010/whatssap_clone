import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // TabController myTabController = TabController(length: 4, vsync: vsync);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Init");
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff128C7E),
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          )
        ],
        // bottom: TabBar(
        //   tabs: [
        //     Text(
        //       "hola",
        //     ),
        //     Text(
        //       "hola",
        //     ),
        //     Text(
        //       "hola",
        //     ),
        //     Text("hola",)
        //   ],
        // ),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff128C7E),
        onPressed: () {},
        child: const Icon(
          Icons.message,
        ),
      ),
    );
  }
}
