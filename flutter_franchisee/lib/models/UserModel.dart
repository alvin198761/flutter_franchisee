//用户实体
class UserModel {
  final int id;
  final String name;
  final String icon;
  final String password;
  final String gender;

  UserModel(this.id, this.name, this.icon, this.gender, this.password);

  static UserModel fromJSON(data) {
    return UserModel(data['id'], data['name'], data['icon'], data['gender'],
        data['password']);
  }

  Map<String, dynamic> toJSON() => {
        "id": this.id,
        "name": this.name,
        "icon": this.icon,
        "gender": this.gender,
        "password": this.password
      };
}
