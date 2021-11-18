import 'package:shortly_challange/core/network/network_parser.dart';
import 'result_model.dart';

class ShorlyResponseModel extends ModelParser {
  bool? ok;
  Result? result;

  ShorlyResponseModel({this.ok, this.result});

  ShorlyResponseModel.fromJson(Map<String, dynamic> json) {
    ok = json['ok'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }
  @override
  fromJson(Map<String, dynamic> json) => ShorlyResponseModel.fromJson(json);
}
