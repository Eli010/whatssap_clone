import 'package:codigo6_whatsapp_clone/models/chat_model.dart';
import 'package:codigo6_whatsapp_clone/models/message_model.dart';

class DataDummy {
  List<ChatModel> chats = [
    ChatModel(
        avatar:
            "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=600",
        name: "Lisa Simpson",
        message: "Hola como estás?",
        time: "14:23",
        date: "12/02",
        isTyping: false,
        countMessage: 0),
    ChatModel(
      avatar:
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=600",
      name: "Winner Santana",
      message: "I fine End you?",
      time: "14:23",
      date: "12/02",
      isTyping: true,
      countMessage: 2,
    ),
    ChatModel(
        avatar:
            "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&w=600",
        name: "Jendrizon Santana",
        message: "Hola Mundo",
        time: "12:03",
        date: "12/04",
        isTyping: true,
        countMessage: 3)
  ];
  List<MessageModel> messages = [
    MessageModel(
      message: "Hola Como estas?",
      type: "me",
      time: "9:40 p. m.",
    ),
    MessageModel(
      message: "Bien y tú?",
      type: "other",
      time: "9:42 p. m.",
    ),
    MessageModel(
      message: "i am great",
      type: "me",
      time: "9:43 p. m.",
    ),
    MessageModel(
      message: "how do you do?",
      type: "me",
      time: "9:44 p. m.",
    ),
    MessageModel(
      message: "i watch tv end you ?",
      type: "other",
      time: "9:45 p. m.",
    ),
  ];
  /*
  List<Map<String, String>> chats = [
    {
      "avatar":
          "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Lian Santana",
      "message": "Hola como estás?",
      "time": "14:23",
      "date": "12/02"
    },
    {
      "avatar":
          "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Sandra Mendoza",
      "message": "Hwiiii",
      "time": "14:23",
      "date": "12/02"
    },
    {
      "avatar":
          "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Winner Santana",
      "message": "I fine End you?",
      "time": "14:23",
      "date": "12/02"
    },
    {
      "avatar":
          "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&w=600",
      "name": "Jendrizon Santana",
      "message": "Hola ",
      "time": "14:23",
      "date": "12/02"
    }
  ];*/
}
