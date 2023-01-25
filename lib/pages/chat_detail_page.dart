import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                // mainAxisAlignment: MainAxisAlignment,
                children: const [
                  Text(
                    "Alejandra Rosamaria Perez",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "ult. vez hoy a la 1:51 p. m. ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white70),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Center(
        child: Text('Bienvenido ChatDetail Page'),
      ),
    );
  }
}
