import 'package:paquetes/classes/PokemonClasses/species.dart';

class VersionGroupDetail {
    VersionGroupDetail({
        required this.levelLearnedAt,
        required this.moveLearnMethod,
        required this.versionGroup,
    });

    int levelLearnedAt;
    Species moveLearnMethod;
    Species versionGroup;

    factory VersionGroupDetail.fromJson(Map<String, dynamic> json) => VersionGroupDetail(
        levelLearnedAt: json["level_learned_at"],
        moveLearnMethod: Species.fromJson(json["move_learn_method"]),
        versionGroup: Species.fromJson(json["version_group"]),
    );

    Map<String, dynamic> toJson() => {
        "level_learned_at": levelLearnedAt,
        "move_learn_method": moveLearnMethod.toJson(),
        "version_group": versionGroup.toJson(),
    };
}