import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech {
  late FlutterTts flutterTts;

  TextToSpeech() {
    flutterTts = FlutterTts();
    initTts();
  }

  Future<void> initTts() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1.0);
  }

  Future<void> speak(String text) async {
    await flutterTts.speak(text);
  }

  void stop() {
    flutterTts.stop();
  }

  void dispose() {
    flutterTts.stop();
    flutterTts = FlutterTts();
  }
}
