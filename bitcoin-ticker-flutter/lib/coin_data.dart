import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
    'AUD',
    'BRL',
    'CAD',
    'CNY',
    'EUR',
    'GBP',
    'HKD',
    'IDR',
    'ILS',
    'INR',
    'JPY',
    'MXN',
    'NOK',
    'NZD',
    'PLN',
    'RON',
    'RUB',
    'SEK',
    'SGD',
    'USD',
    'ZAR'
];

const String APIkey = '';

const String baseURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {

    Future<dynamic> getCoinData(String coin, String currency) async {
        print("Getting...");
        http.Response coinResponse = await http.get(
            Uri.parse(baseURL + '/$coin/$currency?apikey=$APIkey')
        );

        return jsonDecode(coinResponse.body)['rate'];
    }
}

