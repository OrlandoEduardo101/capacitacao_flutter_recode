class Pokemon {
  int id;
  String name;
  List<String> type;
  String img;
  String number;
  String height;
  String weigth;


  Pokemon({this.id, this.name, this.img, this.type, this.number, this.weigth, this.height});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
        id: json['id'],
        number: json['num'],
        name: json['name'],
        img: json['img']);

    //type = json['type'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['num'] = this.number;
    data['name'] = this.name;
    data['img'] = this.img;
    data['type'] = this.type;
    return data;
  }
}
