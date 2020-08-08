class UserModel {
  String name;
  String username;
  String avatar_url;
  var repos;
  var company;
  String bio;
  var location='';
  var follow;

  UserModel({
    this.avatar_url,
    this.bio,
    this.company,
    this.follow,
    this.location,
    this.name,
    this.repos,
    this.username
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        //field: json[''],
        );
  }

  Map<String, dynamic> toJson() => {};
}
