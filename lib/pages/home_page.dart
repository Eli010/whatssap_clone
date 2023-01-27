import 'package:codigo6_whatsapp_clone/pages/chats_page.dart';
import 'package:codigo6_whatsapp_clone/pages/estado_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //late = este controlador va ser inicializado luego
  late TabController myTabController;
  @override
  void initState() {
    super.initState();
    myTabController = TabController(length: 4, vsync: this);
    print("Init");
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color(0xff128C7E),
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
        bottom: TabBar(
          controller: myTabController,
          indicatorColor: Colors.white,
          indicatorWeight: 3.5,
          unselectedLabelColor: Colors.white54,
          tabs: const [
            Tab(
              // text: "Hola",
              icon: Icon(Icons.people_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Estados",
            ),
            Tab(
              text: "Llamadas",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: myTabController, children: [
        const Center(
          child: Text("Comunidad"),
        ),
        ChatsPage(),
        EstadosPage(),
        const Center(
          child: Text("Llamadas"),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: const Color(0xff128C7E),
        onPressed: () {},
        child: const Icon(
          Icons.message,
        ),
      ),
    );
  }
}
