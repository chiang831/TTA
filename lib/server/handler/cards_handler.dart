import 'dart:async';

import 'package:tta/shared/card.dart';

class CardsHandler {
  Future handle(HttpRequest request) async {
    List<Card> cards = await queryAllCards();

    cards.forEach((card) =>
        request.response.write(card.A_Name + ' ' + card.A_Type + '\n'));
    request.response.close();
  }
}
