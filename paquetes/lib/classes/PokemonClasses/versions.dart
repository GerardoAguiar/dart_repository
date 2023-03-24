import 'package:paquetes/classes/PokemonClasses/generationI.dart';
import 'package:paquetes/classes/PokemonClasses/generationIi.dart';
import 'package:paquetes/classes/PokemonClasses/generationIii.dart';
import 'package:paquetes/classes/PokemonClasses/generationIv.dart';
import 'package:paquetes/classes/PokemonClasses/generationV.dart';
import 'package:paquetes/classes/PokemonClasses/generationVii.dart';
import 'package:paquetes/classes/PokemonClasses/generationViii.dart';
import 'package:paquetes/classes/PokemonClasses/home.dart';

class Versions {
    Versions({
        required this.generationI,
        required this.generationIi,
        required this.generationIii,
        required this.generationIv,
        required this.generationV,
        required this.generationVi,
        required this.generationVii,
        required this.generationViii,
    });

    GenerationI generationI;
    GenerationIi generationIi;
    GenerationIii generationIii;
    GenerationIv generationIv;
    GenerationV generationV;
    Map<String, Home> generationVi;
    GenerationVii generationVii;
    GenerationViii generationViii;

    factory Versions.fromJson(Map<String, dynamic> json) => Versions(
        generationI: GenerationI.fromJson(json["generation-i"]),
        generationIi: GenerationIi.fromJson(json["generation-ii"]),
        generationIii: GenerationIii.fromJson(json["generation-iii"]),
        generationIv: GenerationIv.fromJson(json["generation-iv"]),
        generationV: GenerationV.fromJson(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"]).map((k, v) => MapEntry<String, Home>(k, Home.fromJson(v))),
        generationVii: GenerationVii.fromJson(json["generation-vii"]),
        generationViii: GenerationViii.fromJson(json["generation-viii"]),
    );

    Map<String, dynamic> toJson() => {
        "generation-i": generationI.toJson(),
        "generation-ii": generationIi.toJson(),
        "generation-iii": generationIii.toJson(),
        "generation-iv": generationIv.toJson(),
        "generation-v": generationV.toJson(),
        "generation-vi": Map.from(generationVi).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "generation-vii": generationVii.toJson(),
        "generation-viii": generationViii.toJson(),
    };
}