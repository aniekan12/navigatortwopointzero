class StatusResponse{
  final bool success;
  final String message;
  final Map<String, dynamic> data;

  StatusResponse({this.success = false, this.message = '', this.data = const {}});

  factory StatusResponse.fromJson(Map json){
    return StatusResponse(
      success: json['status'],
      message: json['message'],
      data: json['data']
    );
  }

  Map<String, dynamic> toJson(StatusResponse response){
    return {
      "status" : response.success,
      "message" : response.message,
      "data" : response.data
    };
  }
}