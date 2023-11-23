import 'package:equatable/equatable.dart';

class Voice extends Equatable {
  String? name;
  String? displayName;
  String? localName;
  String? shortName;
  String? gender;
  String? locale;
  String? localeName;
  List<String>? styleList;
  String? sampleRateHertz;
  String? voiceType;
  String? status;
  List<String>? rolePlayList;
  String? wordsPerMinute;

  Voice(
      {this.name,
      this.displayName,
      this.localName,
      this.shortName,
      this.gender,
      this.locale,
      this.localeName,
      this.styleList,
      this.sampleRateHertz,
      this.voiceType,
      this.status,
      this.rolePlayList,
      this.wordsPerMinute});

  Voice.fromJson(Map<String, dynamic> json) {
    name = json["Name"];
    displayName = json["DisplayName"];
    localName = json["LocalName"];
    shortName = json["ShortName"];
    gender = json["Gender"];
    locale = json["Locale"];
    localeName = json["LocaleName"];
    styleList =
        json["StyleList"] == null ? null : List<String>.from(json["StyleList"]);
    sampleRateHertz = json["SampleRateHertz"];
    voiceType = json["VoiceType"];
    status = json["Status"];
    rolePlayList = json["RolePlayList"] == null
        ? null
        : List<String>.from(json["RolePlayList"]);
    wordsPerMinute = json["WordsPerMinute"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Name"] = name;
    _data["DisplayName"] = displayName;
    _data["LocalName"] = localName;
    _data["ShortName"] = shortName;
    _data["Gender"] = gender;
    _data["Locale"] = locale;
    _data["LocaleName"] = localeName;
    if (styleList != null) {
      _data["StyleList"] = styleList;
    }
    _data["SampleRateHertz"] = sampleRateHertz;
    _data["VoiceType"] = voiceType;
    _data["Status"] = status;
    if (rolePlayList != null) {
      _data["RolePlayList"] = rolePlayList;
    }
    _data["WordsPerMinute"] = wordsPerMinute;
    return _data;
  }

  @override
  List<Object?> get props => [
        name,
        displayName,
        localName,
        shortName,
        gender,
        locale,
        sampleRateHertz,
        voiceType,
        status
      ];
}
