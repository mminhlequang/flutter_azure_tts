import 'package:flutter_azure_tts/src/voices/voice_model.dart';

class Ssml {
  Ssml({
    required this.voice,
    required this.text,
    required this.speed,
    this.style,
  });

  final Voice voice;
  final String text;
  final double speed;
  final String? style;

  String get buildSsml {
    return "<speak version='1.0' "
            "xmlns='http://www.w3.org/2001/10/synthesis' "
            "xml:lang='${voice.locale}'>"
            "<voice xml:lang='${voice.locale}' "
            "xml:gender='${voice.gender}' "
            "name='${voice.shortName}'>" +
        (style != null
            ? "<mstts:express-as style='$style' rate='$speed>$text</mstts:express-as>"
            : "<prosody rate='$speed'> $text <\/prosody>") +
        "<\/voice><\/speak>";
  }
}
