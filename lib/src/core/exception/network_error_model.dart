class NetworkErrorModel{
   int? statusCode;
   String? statusMessage;

   NetworkErrorModel({this.statusCode, this.statusMessage});

  NetworkErrorModel.fromJson(Map<String, dynamic> json) {
    statusCode =  json['status_code'];
    statusMessage = json['status_message'];
  }
}