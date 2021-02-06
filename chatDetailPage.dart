class ChatMessage {
  String name;
  String messageContent;
  String messageType;
  ChatMessage({this.messageContent, this.messageType, this.name});
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello", messageType: "receiver"),
  ChatMessage(messageContent: "How Are you ?", messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey Kriss, I am  fine bro. wbu?", messageType: "sender"),
  ChatMessage(messageContent: "i am very well", messageType: "receiver"),
  ChatMessage(
      messageContent: "Is there any thing wrong?", messageType: "sender"),
];
