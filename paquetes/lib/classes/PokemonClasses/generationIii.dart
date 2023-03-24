import 'package:paquetes/classes/PokemonClasses/gold.dart';
import 'package:paquetes/classes/PokemonClasses/officialArtwork.dart';

class GenerationIii {
    GenerationIii({
        required this.emerald,
        required this.fireredLeafgreen,
        required this.rubySapphire,
    });

    OfficialArtwork emerald;
    Gold fireredLeafgreen;
    Gold rubySapphire;

    factory GenerationIii.fromJson(Map<String, dynamic> json) => GenerationIii(
        emerald: OfficialArtwork.fromJson(json["emerald"]),
        fireredLeafgreen: Gold.fromJson(json["firered-leafgreen"]),
        rubySapphire: Gold.fromJson(json["ruby-sapphire"]),
    );

    Map<String, dynamic> toJson() => {
        "emerald": emerald.toJson(),
        "firered-leafgreen": fireredLeafgreen.toJson(),
        "ruby-sapphire": rubySapphire.toJson(),
    };
}