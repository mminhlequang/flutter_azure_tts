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
    if (style != null)
      return """
<speak version="1.0" xmlns="http://www.w3.org/2001/10/synthesis" xmlns:mstts="https://www.w3.org/2001/mstts" xml:lang="${voice.locale}">
    <voice xml:lang='${voice.locale}' name="${voice.shortName}">
        <mstts:express-as style="$style" styledegree="2">
           "$text"
        </mstts:express-as>
    </voice>
</speak>
""";
    else
      return """
<speak version="1.0" xmlns="http://www.w3.org/2001/10/synthesis" xmlns:mstts="https://www.w3.org/2001/mstts" xml:lang="${voice.locale}">
    <voice xml:lang='${voice.locale}' name="${voice.shortName}">
        <prosody rate='$speed'>
           "$text"
        <\/prosody>
    </voice>
</speak>
""";
    return "<speak version='1.0' "
            "xmlns='http://www.w3.org/2001/10/synthesis' "
            "xml:lang=''>"
            "<voice xml:lang='${voice.locale}' "
            "xml:gender='${voice.gender}' "
            "name='${voice.shortName}'>" +
        (style != null
            ? "<mstts:express-as style='$style'>"
                "$text"
                "<\/mstts:express-as>"
            : "<prosody rate='$speed'>"
                "$text"
                "<\/prosody>") +
        "<\/voice><\/speak>";
  }
}
