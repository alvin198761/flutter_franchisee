//加盟商实体类
class FranModel {
  final int id;
  final String name;
  final String head;
  final DateTime createDate;
  final String remark;
  final int status;
  final String phoneNo;

  FranModel(this.id, this.name, this.head, this.createDate, this.remark,
      this.status, this.phoneNo);

  static FranModel fromJSON(data) {
    return FranModel(
        data["id"],
        data["name"],
        data["head"],
        DateTime.fromMicrosecondsSinceEpoch(data["create_date"]),
        data["remark"],
        data["status"],
        data["phone_no"]);
  }

  Map<String, dynamic> toJSON() => {
        "id": this.id,
        "name": this.name,
        "head": this.head,
        "create_date": this.createDate.millisecondsSinceEpoch,
        "remark": this.remark,
        "status": this.status,
        "phone_no": this.phoneNo
      };
}
