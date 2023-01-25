import 'package:codigo6_whatsapp_clone/data/data_dummy.dart';
import 'package:codigo6_whatsapp_clone/widgets/item_chats_widget.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  DataDummy mandarina = DataDummy();
  @override
  Widget build(BuildContext context) {
    print(mandarina.chats);
    return ListView.builder(
        itemCount: mandarina.chats.length,
        itemBuilder: (
          context,
          int index,
        ) {
          // print(mandarina.chats[index]);
          return ItemChatsWidgets(
            dataChat: mandarina.chats[index],
          );
        });
  }
}
