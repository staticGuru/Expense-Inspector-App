import 'package:flutter/material.dart';
import 'package:personal_expenses_2/models/Transactions.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../screens/all_transactions.dart';

class LastTseeAll extends StatelessWidget {
  final List<Transaction> transactions;

  const LastTseeAll({Key key, this.transactions}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            "Last Transactions",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: ResponsiveFlutter.of(context).fontSize(2.3),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return AllTransactions(
                  listOfTransactions: transactions,
                );
              }));
            },
            child: Text(
              "See All",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: ResponsiveFlutter.of(context).fontSize(1.725),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
