//后端响应标准接口

class RespModel {
  //错误码，正确码为 0
  final int code;
  //错误信息提示，错误码不等于0的时候，有数据
  final String errorMsg;
  //具体响应内容
  final dynamic data;

  RespModel(this.code, this.errorMsg, this.data);

  static RespModel fromJSON(data){
    return new RespModel(data["code"], data["errorMsg"], data["data"]);
  }
}
