import 'dart:async';

import 'package:angular2/core.dart';

import 'package:tta/shared/card.dart';

import 'card_component.dart';
import 'service/card_service.dart';

@Component(
  selector: 'cards-gallery',
  template: '''
    <div style="display: flex; flex-wrap: wrap;">
      <card *ngFor="let card of cards" [card]="card">
      </card>
    </div>
  ''',
  directives: const [CardComponent],
)
class CardsGalleryComponent implements OnInit {
  final CardService _cardService;

  List<Card> cards;

  CardsGalleryComponent(this._cardService);

  @override
  void ngOnInit() {
    getCards();
  }

  Future<Null> getCards() async {
    cards = await _cardService.getCards();
  }
}
