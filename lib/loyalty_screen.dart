import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './provider/loyalty_rules.dart';
import 'package:provider/provider.dart';
import './rules_card.dart';
class Loyalty extends StatefulWidget {
  @override
  _LoyaltyState createState() => _LoyaltyState();
}

class _LoyaltyState extends State<Loyalty> {
  @override
  Widget build(BuildContext context) {
    final rulesData = Provider.of<Rules>(context);
    final rules = rulesData.items;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Loyalty Discount',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
                onTap: (){
                  setState(() {
                    
                  });
                },
                          child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      ' New Loyalty Rules ',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    Icon(Icons.add, size: 30, color: Colors.grey)
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: rules.length,
                  itemBuilder: (ctx, i) {
                    return RulesCard(rules[i]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
