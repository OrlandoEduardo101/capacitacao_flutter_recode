class PokemonModel {
  int id;
  String name;
  String img;
  List<String> type;
  var number;
  var height;
  var weigth;

  PokemonModel(
      {this.id,
      this.name,
      this.height,
      this.number,
      this.type,
      this.weigth,
      this.img});

      factory PokemonModel.fromJson(Map<String, dynamic> json) {
        return PokemonModel(
            id: json['id'],
            number: json['num'],
            name: json['name'],
            img: json['img']);
    //type = json['type'].cast<String>();
  }


}
