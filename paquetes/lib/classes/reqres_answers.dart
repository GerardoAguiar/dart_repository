import 'dart:convert';

import 'package:paquetes/classes/PokemonClasses/ability.dart';
import 'package:paquetes/classes/PokemonClasses/gameIndex.dart';
import 'package:paquetes/classes/PokemonClasses/move.dart';
import 'package:paquetes/classes/PokemonClasses/species.dart';
import 'package:paquetes/classes/PokemonClasses/sprites.dart';
import 'package:paquetes/classes/PokemonClasses/stat.dart';
import 'package:paquetes/classes/PokemonClasses/type.dart';
import 'package:paquetes/classes/person.dart';
import 'package:paquetes/classes/pokemon.dart';
import 'package:paquetes/classes/support.dart';

ReqResAnswer reqResAnswerFromJson(String str) => ReqResAnswer.fromJson(json.decode(str));

String reqResAnswerToJson(ReqResAnswer data) => json.encode(data.toJson());

class ReqResAnswer {
    ReqResAnswer({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
        required this.support,
    });

    int page;
    int perPage;
    int total;
    int totalPages;
    List<Person> data;
    Support support;

    factory ReqResAnswer.fromJson(Map<String, dynamic> json) => ReqResAnswer(
        page        : json["page"],
        perPage     : json["per_page"],
        total       : json["total"],
        totalPages  : json["total_pages"],
        data        : List<Person>.from(json["data"].map((x) => Person.fromJson(x))),
        support     : Support.fromJson(json["support"]),
    );

    Map<String, dynamic> toJson() => {
        "page"        : page,
        "per_page"    : perPage,
        "total"       : total,
        "total_pages" : totalPages,
        "data"        : List<dynamic>.from(data.map((x) => x.toJson())),
        "support"     : support.toJson(),
    };
}


// Tarea

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemon {
    Pokemon({
        required this.count,
        required this.next,
        this.previous,
        required this.results,
    });

    int count;
    String next;
    dynamic previous;
    List<ListP> results;

    factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<ListP>.from(json["results"].map((x) => ListP.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

// Pokemon Data

PokemonData pokemonDataFromJson(String str) => PokemonData.fromJson(json.decode(str));

String pokemonDataToJson(PokemonData data) => json.encode(data.toJson());

class PokemonData {
    PokemonData({
        required this.abilities,
        required this.baseExperience,
        required this.forms,
        required this.gameIndices,
        required this.height,
        required this.heldItems,
        required this.id,
        required this.isDefault,
        required this.locationAreaEncounters,
        required this.moves,
        required this.name,
        required this.order,
        required this.pastTypes,
        required this.species,
        required this.sprites,
        required this.stats,
        required this.types,
        required this.weight,
    });

    List<Ability> abilities;
    int baseExperience;
    List<Species> forms;
    List<GameIndex> gameIndices;
    int height;
    List<dynamic> heldItems;
    int id;
    bool isDefault;
    String locationAreaEncounters;
    List<Move> moves;
    String name;
    int order;
    List<dynamic> pastTypes;
    Species species;
    Sprites sprites;
    List<Stat> stats;
    List<Type> types;
    int weight;

    factory PokemonData.fromJson(Map<String, dynamic> json) => PokemonData(
        abilities: List<Ability>.from(json["abilities"].map((x) => Ability.fromJson(x))),
        baseExperience: json["base_experience"],
        forms: List<Species>.from(json["forms"].map((x) => Species.fromJson(x))),
        gameIndices: List<GameIndex>.from(json["game_indices"].map((x) => GameIndex.fromJson(x))),
        height: json["height"],
        heldItems: List<dynamic>.from(json["held_items"].map((x) => x)),
        id: json["id"],
        isDefault: json["is_default"],
        locationAreaEncounters: json["location_area_encounters"],
        moves: List<Move>.from(json["moves"].map((x) => Move.fromJson(x))),
        name: json["name"],
        order: json["order"],
        pastTypes: List<dynamic>.from(json["past_types"].map((x) => x)),
        species: Species.fromJson(json["species"]),
        sprites: Sprites.fromJson(json["sprites"]),
        stats: List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
        weight: json["weight"],
    );

    Map<String, dynamic> toJson() => {
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
        "base_experience": baseExperience,
        "forms": List<dynamic>.from(forms.map((x) => x.toJson())),
        "game_indices": List<dynamic>.from(gameIndices.map((x) => x.toJson())),
        "height": height,
        "held_items": List<dynamic>.from(heldItems.map((x) => x)),
        "id": id,
        "is_default": isDefault,
        "location_area_encounters": locationAreaEncounters,
        "moves": List<dynamic>.from(moves.map((x) => x.toJson())),
        "name": name,
        "order": order,
        "past_types": List<dynamic>.from(pastTypes.map((x) => x)),
        "species": species.toJson(),
        "sprites": sprites.toJson(),
        "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "weight": weight,
    };
}












