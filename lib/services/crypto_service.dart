import 'dart:convert';
import 'package:http/http.dart' as http;

class CryptoService {
  static Future<double> getXRPPrice() async {
    const url = 'https://api.mypapit.net/crypto/XRPMYR.json';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final priceString = data['last_trade'];

      // Convert the string to double
      return double.tryParse(priceString) ?? 0.0;
    } else {
      throw Exception('Failed to load XRP price');
    }
  }
}
