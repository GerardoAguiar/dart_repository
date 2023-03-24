import 'package:paquetes/classes/PokemonClasses/species.dart';
import 'package:paquetes/classes/PokemonClasses/versionGroupDetail.dart';

class Move {
    Move({
        required this.move,
        required this.versionGroupDetails,
    });

    Species move;
    List<VersionGroupDetail> versionGroupDetails;

    factory Move.fromJson(Map<String, dynamic> json) => Move(
        move: Species.fromJson(json["move"]),
        versionGroupDetails: List<VersionGroupDetail>.from(json["version_group_details"].map((x) => VersionGroupDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "move": move.toJson(),
        "version_group_details": List<dynamic>.from(versionGroupDetails.map((x) => x.toJson())),
    };
}
