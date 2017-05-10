import 'dart:async';

import 'package:gcloud/db.dart';

import 'package:tta/shared/card.dart';

import 'json_utils.dart';

class CardsHandler {
  Future handle(HttpRequest request) async {
    List<Card> cards = await queryAllCards();

    sendJSONResponse(request, {'data': cards});
  }
}

Future<List<Card>> queryAllCards() async {
  return await (dbService.query(Card).run()).toList();
}
