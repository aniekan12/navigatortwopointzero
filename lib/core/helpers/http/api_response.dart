Map<String, dynamic> apiResponse(
    {String? message, Map<String, dynamic>? data, bool? status}) {
  var resp = {
    'status': status ?? false,
    'data': data ?? {},
    'message': message,
  };
  return resp;
}
