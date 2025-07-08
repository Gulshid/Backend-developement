import 'package:http/http.dart' as http;

class Api {
  static const baseUrl = "";

  static addProduct(Map pdata) async {
    try {
      final res = await http.post(Uri.parse('uri'), body: pdata);

      if (res.statusCode == 200) {}
    } catch (e) {
      print('Error adding product: $e');
    }
  }
}
