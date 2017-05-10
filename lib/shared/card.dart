import 'package:gcloud/db.dart';

@Kind()
class Card extends Model {
  @StringProperty()
  String A_Name;

  @StringProperty()
  String A_Type;
}
