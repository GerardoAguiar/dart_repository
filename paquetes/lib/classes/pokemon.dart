class ListP {
    ListP({
        required this.name,
        required this.url,
    });

    String name;
    String url;

    factory ListP.fromJson(Map<String, dynamic> json) => ListP(
        name: json['name'],
        url: json['url'],
    );

    Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
    };
}
