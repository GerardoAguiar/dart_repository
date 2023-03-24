import 'package:paquetes/classes/PokemonClasses/crystal.dart';
import 'package:paquetes/classes/PokemonClasses/gold.dart';

class GenerationIi {
    GenerationIi({
        required this.crystal,
        required this.gold,
        required this.silver,
    });

    Crystal crystal;
    Gold gold;
    Gold silver;

    factory GenerationIi.fromJson(Map<String, dynamic> json) => GenerationIi(
        crystal: Crystal.fromJson(json["crystal"]),
        gold: Gold.fromJson(json["gold"]),
        silver: Gold.fromJson(json["silver"]),
    );

    Map<String, dynamic> toJson() => {
        "crystal": crystal.toJson(),
        "gold": gold.toJson(),
        "silver": silver.toJson(),
    };
}