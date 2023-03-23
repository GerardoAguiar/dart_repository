import 'dart:convert';

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