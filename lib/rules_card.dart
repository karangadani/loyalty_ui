import 'package:flutter/material.dart';
import 'package:loyalty_ui/provider/loyalty_rules.dart';

class RulesCard extends StatefulWidget {
  LoyaltyRules lr;

  RulesCard(this.lr);

  @override
  _RulesCardState createState() => _RulesCardState();
}

class _RulesCardState extends State<RulesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      padding: EdgeInsets.only(top: 20,left: 20,bottom: 2,right: 5),
      child: Table(
        children: [
          TableRow(
            children: [
              Text('Orders',style: TextStyle(fontWeight: FontWeight.bold),),
              Text(widget.lr.orders.toStringAsFixed(0)),
              SizedBox(width: 10,),
              Text("Type",style: TextStyle(fontWeight: FontWeight.bold),),
              Text(widget.lr.type),
            ]
          ),
          TableRow(
            children: [
              Text('Amount',style: TextStyle(fontWeight: FontWeight.bold),),
              Text(widget.lr.amount.toStringAsFixed(0)),
              SizedBox(width: 10,),
              Text("Repeat",style: TextStyle(fontWeight: FontWeight.bold),),
              Text(widget.lr.repeat ? 'Yes' : 'No'),
            ]
          ),
          TableRow(
            children: [
              Text('Discount',style: TextStyle(fontWeight: FontWeight.bold),),
              Text((widget.lr.amount*1/100).toStringAsFixed(0)),
              SizedBox(width: 10,),
              Switch(value: widget.lr.repeat,
              activeColor: Colors.red,
               onChanged: (i)
              {
                setState(() {
                  widget.lr.repeat = !widget.lr.repeat;
                });
              }),
              SizedBox(),
            ]
          ),
        ],
      ),
    );
  }
}
