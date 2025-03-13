// messaging.dart
abstract class Message {
  void send();
}

class TextMessage extends Message {
  String content;

  TextMessage(this.content);

  @override
  void send() {
    print('Sending text message: $content');
  }
}

class ImageMessage extends Message {
  String imageUrl;

  ImageMessage(this.imageUrl);

  @override
  void send() {
    print('Sending image message from URL: $imageUrl');
  }
}

class VideoMessage extends Message {
  String videoUrl;

  VideoMessage(this.videoUrl);

  @override
  void send() {
    print('Sending video message from URL: $videoUrl');
  }
}

void main() {
  print("Task 1: Messaging App");
  Message textMsg = TextMessage('Hello, world!');
  Message imageMsg = ImageMessage('http://example.com/image.jpg');
  Message videoMsg = VideoMessage('http://example.com/video.mp4');
  textMsg.send();
  imageMsg.send();
  videoMsg.send();
}