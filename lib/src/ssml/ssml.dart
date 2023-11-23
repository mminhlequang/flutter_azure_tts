import 'package:flutter_azure_tts/src/voices/voice_model.dart';

class Ssml {
  Ssml({
    required this.voice,
    required this.text,
    required this.speed,
    this.customInfos,
  });

  final Voice voice;
  final String text;
  final double speed;
  final String? customInfos;

  String get buildSsml {
    return "<speak version='1.0' "
            "xmlns='http://www.w3.org/2001/10/synthesis' "
            "xml:lang='${voice.locale}'>"
            "<voice xml:lang='${voice.locale}' " +
        (customInfos != null ? "$customInfos " : "") +
        "xml:gender='${voice.gender}' "
            "name='${voice.shortName}'>"
            "<prosody rate='$speed'>"
            "$text"
            "<\/prosody><\/voice><\/speak>";
  }
}
