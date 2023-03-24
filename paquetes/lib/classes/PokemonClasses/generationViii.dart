import 'package:paquetes/classes/PokemonClasses/dreamWorld.dart';

class GenerationViii {
    GenerationViii({
        required this.icons,
    });

    DreamWorld icons;

    factory GenerationViii.fromJson(Map<String, dynamic> json) => GenerationViii(
        icons: DreamWorld.fromJson(json["icons"]),
    );

    Map<String, dynamic> toJson() => {
        "icons": icons.toJson(),
    };
}