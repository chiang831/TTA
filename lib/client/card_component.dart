import 'package:angular2/core.dart';

import 'package:tta/shared/card.dart';

@Component(
  selector: 'card',
  templateUrl: 'card_component.html',
  styleUrls: const ['card_component.css'],
)
class CardComponent {
   @Input()
   Card card;
}