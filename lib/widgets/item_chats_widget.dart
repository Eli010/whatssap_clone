import 'package:codigo6_whatsapp_clone/models/chat_model.dart';
import 'package:codigo6_whatsapp_clone/pages/chat_detail_page.dart';
import 'package:flutter/material.dart';

class ItemChatsWidgets extends StatelessWidget {
  ChatModel dataChat;

  ItemChatsWidgets({
    required this.dataChat,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChatDetailPage()));
        },
        leading: CircleAvatar(
          radius: 22,
          backgroundColor: Colors.black12,
          backgroundImage: NetworkImage(
            dataChat.avatar,
            // dataChat["avatar"] ?? "No image",
          ),
        ),
        title: Text(
          dataChat.name,
          // dataChat["name"] ?? "",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: dataChat.isTyping == true
            ? Text(
                dataChat.message,
                // dataChat["message"] ?? "",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Colors.black54,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            : Container(
                child: Text(
                  "Escribiendo...",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.green,
                  ),
                ),
              ),
        trailing: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dataChat.time,
              // dataChat["time"] ?? "",
            ),
            const SizedBox(
              height: 10,
            ),
            dataChat.countMessage > 0
                ? CircleAvatar(
                    radius: 10,
                    backgroundColor: const Color(0xff10CE5F),
                    child: Text(
                      dataChat.countMessage.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                : Container(
                    child: Text(""),
                  ),
          ],
        ),
      ),
    );
  }
}
