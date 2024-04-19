import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color color;
  const MyCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Balance",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),

              //visaICon
              Image.asset("assets/icons/visa.png", width: 70, fit: BoxFit.cover)
            ],
          ),
          Text(
            "\$$balance",
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 23),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "***** ${cardNumber.toString().substring(cardNumber.toString().length - 4, cardNumber.toString().length)}",
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                "$expiryMonth / $expiryYear",
                style: const TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
