import 'package:flutter_grocery/pages/modal/Grocery.dart';
import 'package:flutter_grocery/pages/modal/Orders.dart';

class ParamType {
  String title = "";
  Grocery grocery = Grocery();
  // ignore: missing_required_param
  Orders orders = Orders();
  int heroId = 0;

  ParamType({this.title, this.grocery, this.heroId, this.orders});
}
