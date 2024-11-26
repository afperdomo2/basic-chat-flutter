import 'package:yes_no_app/models/message.dart';
import 'package:yes_no_app/models/yesno_response.dart';

import 'api_service.dart';

class YesNoService {
  final ApiService _apiService;

  YesNoService() : _apiService = ApiService(baseUrl: 'https://yesno.wtf/api');

  Future<Message> getAnswer() async {
    try {
      final response = await _apiService.get('');
      return YesNoResponse.fromJson(response.data).toMessage();
    } catch (e) {
      throw Exception('Error al obtener respuesta de YesNo: $e');
    }
  }
}
