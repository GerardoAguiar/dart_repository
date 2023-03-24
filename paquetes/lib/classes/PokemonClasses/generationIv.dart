import 'package:paquetes/classes/PokemonClasses/sprites.dart';

class GenerationIv {
    GenerationIv({
        required this.diamondPearl,
        required this.heartgoldSoulsilver,
        required this.platinum,
    });

    Sprites diamondPearl;
    Sprites heartgoldSoulsilver;
    Sprites platinum;

    factory GenerationIv.fromJson(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: Sprites.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: Sprites.fromJson(json["heartgold-soulsilver"]),
        platinum: Sprites.fromJson(json["platinum"]),
    );

    Map<String, dynamic> toJson() => {
        "diamond-pearl": diamondPearl.toJson(),
        "heartgold-soulsilver": heartgoldSoulsilver.toJson(),
        "platinum": platinum.toJson(),
    };
}
