
class LoginInfo {

  late final String message;
// create a object of data class
  late final Data data;

// ************* json serialization of LoginInfo class

LoginInfo.fromjson(Map<String, dynamic>json){
  this.message = json['message'];
  this.data = Data.fromjson(json['data']);

}

Map<String , dynamic> tojson (){
final json =<String , dynamic>{} ;
json['message'] = this.message;
json['data'] = data.tojson();
return json;

}

}

// ******* data class
class Data {

  late final String UserName;
  late final String UserEmail;
  late final String userId;
  late final String Token;

Data({
    required this.UserName,
    required this.UserEmail,
    required this.userId,
    required this.Token,
}) ;

// ************* json serialization of data class
Data.fromjson(Map<String, dynamic> json){
  this.UserName = json['UserName'];
  this.UserEmail = json['UserEmail'];
  this.userId = json['userId'];
  this.Token = json['token'];
}

Map<String, dynamic> tojson (){
  final json = <String ,dynamic>{};
  json['UserName'] = this.UserName;
  json['UserEmail'] = this.UserEmail;
  json['userId'] = this.userId;
  json['token'] = this.Token;

  return json ;
}

}

