import 'dart:async';
import 'dart:convert';

import 'package:angular2/core.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

import 'package:tta/shared/card.dart';

@Injectable()
class CardService {
  static const _cardsUrl = 'api/cards'; // URL to web API

  final BrowserClient _client;

  CardService(this._client);

  Future<List<Card>> getCards() async {
    try {
      final response = await _client.get(_cardsUrl);
      final heroes = _extractData(response)
          .map((value) => new Card.fromJson(value))
          .toList();
      return heroes;
    } catch (e) {
      throw _handleError(e);
    }
  }

  dynamic _extractData(Response resp) => JSON.decode(resp.body)['data'];

  Exception _handleError(dynamic e) {
    print(e); // for demo purposes only
    return new Exception('Server error; cause: $e');
  }
}
