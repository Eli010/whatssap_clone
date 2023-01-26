import 'package:codigo6_whatsapp_clone/data/data_dummy.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  DataDummy mandarina = DataDummy();

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
              const SizedBox(
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
              icon: const Icon(Icons.video_call_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.phone),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.amber,
              child: Image.network(
                "https://www.todofondos.net/wp-content/uploads/fondo-de-pantalla-predeterminado-de-whatsapp-557x1024.png",
                fit: BoxFit.cover,
              ),
            ),
            ListView.builder(
              itemCount: mandarina.messages.length,
              itemBuilder: (context, int index) {
                return Align(
                  alignment: mandarina.messages[index].type == "me"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: mandarina.messages[index].type == "me"
                          ? const Color(0xffE1FFC6)
                          : const Color(0xffEFFFFF),
                      borderRadius: mandarina.messages[index].type == "me"
                          ? const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(0),
                            )
                          : const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(10),
                            ),
                    ),
                    // height: 37,
                    margin: const EdgeInsets.all(6.0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 3,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      // crossAxisAlignment: CrossAxisAlignment.baseline,
                      // textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(mandarina.messages[index].message),
                        const SizedBox(
                          width: 5,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          heightFactor: 2,
                          child: Text(
                            mandarina.messages[index].time,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Align(
                          // widthFactor: 1,
                          alignment: Alignment.bottomCenter,
                          heightFactor: 2,
                          child: mandarina.messages[index].type == "me"
                              ? Icon(
                                  Icons.check,
                                  size: 12,
                                  color: Color(0xff53BDEB),
                                )
                              : Container(),
                        ),
                        Align(
                          widthFactor: 0,
                          alignment: Alignment.bottomCenter,
                          heightFactor: 2,
                          child: mandarina.messages[index].type == "me"
                              ? Icon(
                                  Icons.check,
                                  size: 12,
                                  color: Color(0xff53BDEB),
                                )
                              : Container(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 60,
                width: double.infinity,
                // width: MediaQuery.of(context).size.width,
                // color: Colors.green,
                child: Row(
                  children: [
                    // Icon(Icons.emoji_emotions),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 14),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.emoji_emotions,
                            color: Color(0xff8796A2),
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.attach_file_outlined,
                                color: Color(0xff8796A2),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.camera_alt,
                                color: Color(0xff8796A2),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          hintText: "Mensaje",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          // suffixIcon:
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: const CircleAvatar(
                        radius: 23,
                        backgroundColor: Color.fromARGB(255, 30, 169, 111),
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )

        //  Stack(
        //   alignment: Alignment.center,
        //   clipBehavior: Clip.none,
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.purple,
        //     ),
        //     Positioned(
        //       right: -50,
        //       top: 50,
        //       // height: 50,
        //       child: Container(
        //         width: 150,
        //         height: 150,
        //         color: Colors.pink,
        //       ),
        //     ),
        //     Container(
        //       width: 70,
        //       height: 70,
        //       color: Colors.orange,
        //     ),
        //   ],
        // ),
        );
  }
}
