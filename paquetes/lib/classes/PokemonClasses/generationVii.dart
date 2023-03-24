import 'package:paquetes/classes/PokemonClasses/dreamWorld.dart';
import 'package:paquetes/classes/PokemonClasses/home.dart';

class GenerationVii {
    GenerationVii({
        required this.icons,
        required this.ultraSunUltraMoon,
    });

    DreamWorld icons;
    Home ultraSunUltraMoon;

    factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
        icons: DreamWorld.fromJson(json["icons"]),
        ultraSunUltraMoon: Home.fromJson(json["ultra-sun-ultra-moon"]),
    );

    Map<String, dynamic> toJson() => {
        "icons": icons.toJson(),
        "ultra-sun-ultra-moon": ultraSunUltraMoon.toJson(),
    };
}