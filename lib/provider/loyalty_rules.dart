import 'package:flutter/cupertino.dart';

class LoyaltyRules with ChangeNotifier{
  final double orders;
  final String type;
  final double amount;
  bool repeat;
  bool active;

  LoyaltyRules({this.orders,this.type,this.amount,this.repeat = false,this.active =false});

}
class Rules with ChangeNotifier{
List<LoyaltyRules> _items = [
  LoyaltyRules(
    orders: 15,
    type: 'All',
    amount: 5000,
    repeat: false,
    active: false,
  ),
];

List<LoyaltyRules> get items {
  return [..._items];
}

void addRules (LoyaltyRules lr){
final newRule = LoyaltyRules(
  orders: lr.orders,
  amount: lr.amount,
  active: lr.active,
  repeat: lr.repeat,
  type: lr.type,
);
_items.add(newRule);
notifyListeners();
}
}