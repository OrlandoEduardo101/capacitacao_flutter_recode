class PokemonModel {
  int id;
  String name;
  String img;
  List<String> type;
  var number;
  var height;
  var weight;

  PokemonModel(
      {this.id,
      this.name,
      this.height,
      this.number,
      this.type,
      this.weight,
      this.img});

      factory PokemonModel.fromJson(Map<String, dynamic> json) {
        return PokemonModel(
            id: json['id'],
            number: json['num'],
            name: json['name'],
            img: json['img'],
            weight: json['weight'],
            height: json['height'],
            type: json['type'].cast<String>());
  }


}




/*import 'dart:convert';

PokemonModel pokemonModelFromJson(String str) => PokemonModel.fromJson(json.decode(str));

String pokemonModelToJson(PokemonModel data) => json.encode(data.toJson());

class PokemonModel {
    PokemonModel({
        this.id,
        this.number,
        this.name,
        this.img,
        this.type,
        this.height,
        this.weight,
        this.candy,
        this.candyCount,
        this.egg,
        this.spawnChance,
        this.avgSpawns,
        this.spawnTime,
        this.multipliers,
        this.weaknesses,
        this.nextEvolution,
    });

    int id;
    String number;
    String name;
    String img;
    List<String> type;
    String height;
    String weight;
    String candy;
    int candyCount;
    String egg;
    double spawnChance;
    int avgSpawns;
    String spawnTime;
    List<double> multipliers;
    List<String> weaknesses;
    List<NextEvolution> nextEvolution;

    factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        id: json["id"],
        number: json["num"],
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((x) => x)),
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candyCount: json["candy_count"],
        egg: json["egg"],
        spawnChance: json["spawn_chance"].toDouble(),
        avgSpawns: json["avg_spawns"],
        spawnTime: json["spawn_time"],
        multipliers: List<double>.from(json["multipliers"].map((x) => x.toDouble())),
        weaknesses: List<String>.from(json["weaknesses"].map((x) => x)),
        nextEvolution: List<NextEvolution>.from(json["next_evolution"].map((x) => NextEvolution.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "num": number,
        "name": name,
        "img": img,
        "type": List<dynamic>.from(type.map((x) => x)),
        "height": height,
        "weight": weight,
        "candy": candy,
        "candy_count": candyCount,
        "egg": egg,
        "spawn_chance": spawnChance,
        "avg_spawns": avgSpawns,
        "spawn_time": spawnTime,
        "multipliers": List<dynamic>.from(multipliers.map((x) => x)),
        "weaknesses": List<dynamic>.from(weaknesses.map((x) => x)),
        "next_evolution": List<dynamic>.from(nextEvolution.map((x) => x.toJson())),
    };
}

class NextEvolution {
    NextEvolution({
        this.number,
        this.name,
    });

    String number;
    String name;

    factory NextEvolution.fromJson(Map<String, dynamic> json) => NextEvolution(
        number: json["num"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "num": number,
        "name": name,
    };
}
*/

/*
class PokemonModel {
  int id;
  String number;
  String name;
  String img;
  List<String> type;
  String height;
  String weight;
  String candy;
  int candyCount;
  String egg;
  double spawnChance;
  int avgSpawns;
  String spawnTime;
  List<double> multipliers;
  List<String> weaknesses;
  List<NextEvolution> nextEvolution;

  PokemonModel(
      {this.id,
      this.number,
      this.name,
      this.img,
      this.type,
      this.height,
      this.weight,
      this.candy,
      this.candyCount,
      this.egg,
      this.spawnChance,
      this.avgSpawns,
      this.spawnTime,
      this.multipliers,
      this.weaknesses,
      this.nextEvolution});

  PokemonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
    height = json['height'];
    weight = json['weight'];
    candy = json['candy'];
    candyCount = json['candy_count'];
    egg = json['egg'];
    spawnChance = json['spawn_chance'];
    avgSpawns = json['avg_spawns'];
    spawnTime = json['spawn_time'];
    multipliers = json['multipliers'].cast<double>();
    weaknesses = json['weaknesses'].cast<String>();
    if (json['next_evolution'] != null) {
      nextEvolution = new List<NextEvolution>();
      json['next_evolution'].forEach((v) {
        nextEvolution.add(new NextEvolution.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['num'] = this.number;
    data['name'] = this.name;
    data['img'] = this.img;
    data['type'] = this.type;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['candy'] = this.candy;
    data['candy_count'] = this.candyCount;
    data['egg'] = this.egg;
    data['spawn_chance'] = this.spawnChance;
    data['avg_spawns'] = this.avgSpawns;
    data['spawn_time'] = this.spawnTime;
    data['multipliers'] = this.multipliers;
    data['weaknesses'] = this.weaknesses;
    if (this.nextEvolution != null) {
      data['next_evolution'] =
          this.nextEvolution.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NextEvolution {
  String number;
  String name;

  NextEvolution({this.number, this.name});

  NextEvolution.fromJson(Map<String, dynamic> json) {
    number = json['num'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num'] = this.number;
    data['name'] = this.name;
    return data;
  }
}*/