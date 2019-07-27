
class user{
  String name;
  String mobileNo;
  String code='ini';//pin Number
  String request_id="ini";//Token

  user({this.name, this.mobileNo});

  Map<String,dynamic>toJson(){
    return {'name':name,
      'number':mobileNo};
  }

  Map<String,dynamic>mobiletoJson(){
    return {'mobileNo':mobileNo};
  }

  user.fromJson(Map<String,dynamic> json){
    code=json['code'];
    request_id=json['request_id'];
  }
}