import 'package:paquetes/classes/PokemonClasses/dreamWorld.dart';
import 'package:paquetes/classes/PokemonClasses/home.dart';
import 'package:paquetes/classes/PokemonClasses/officialArtwork.dart';

class Other {
    Other({
        required this.dreamWorld,
        required this.home,
        required this.officialArtwork,
    });

    DreamWorld dreamWorld;
    Home home;
    OfficialArtwork officialArtwork;

    factory Other.fromJson(Map<String, dynamic> json) => Other(
        dreamWorld: DreamWorld.fromJson(json["dream_world"]),
        home: Home.fromJson(json["home"]),
        officialArtwork: OfficialArtwork.fromJson(json["official-artwork"]),
    );

    Map<String, dynamic> toJson() => {
        "dream_world": dreamWorld.toJson(),
        "home": home.toJson(),
        "official-artwork": officialArtwork.toJson(),
    };
}