import 'package:gcloud/db.dart';

@Kind()
class Card extends Model {
  Card();

  @StringProperty()
  String A_Name;

  @StringProperty()
  String A_Type;

  @StringProperty()
  String Description;

  factory Card.fromJson(Map<String, dynamic> map) {
    Card card = new Card();
    card
      ..A_Name = map['A_Name']
      ..A_Type = map['A_Type']
      ..Description = map['Description'];
    return card;
  }

  Map toJson() =>
      {'A_Name': A_Name, 'A_Type': A_Type, 'Description': Description};
}
