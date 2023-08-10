import 'package:dio/dio.dart';
import 'package:yes_no_app/infrastructure/models/yes_no.model.dart';

import '../../domain/entities/message.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getYesNoAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJson(response.data);

    return yesNoModel.toMessageEntity();
  }
}
