enum MessageType { text, image, system }

class ChatMessage {
  final String id;
  final String senderId;
  final String senderName;
  final String message;
  final MessageType type;
  final DateTime timestamp;
  final bool isMe;
  final String? imageUrl;

  ChatMessage({
    required this.id,
    required this.senderId,
    required this.senderName,
    required this.message,
    this.type = MessageType.text,
    required this.timestamp,
    required this.isMe,
    this.imageUrl,
  });
}
