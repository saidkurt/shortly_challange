enum HTTP_TYPE { GET, POST, PUT, DELETE }

extension HTTP_REQUEST_TYPE on HTTP_TYPE {
  String get name {
    switch (this) {
      case HTTP_TYPE.GET:
        return "GET";
      case HTTP_TYPE.POST:
        return "POST";
      case HTTP_TYPE.PUT:
        return "PUT";
      case HTTP_TYPE.DELETE:
        return "POST";
    }
  }
}
