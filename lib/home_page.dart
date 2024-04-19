import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/widgets/more_info.dart';
import 'package:wallet_app_ui/widgets/my_button.dart';
import 'package:wallet_app_ui/widgets/my_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              //AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100], shape: BoxShape.circle),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
              const SizedBox(height: 25),

              //Cards
              SizedBox(
                height: 180,
                child: PageView(
                  controller: controller,
                  children: [
                    MyCard(
                      balance: 63562.2,
                      cardNumber: 2323434,
                      expiryMonth: 12,
                      expiryYear: 25,
                      color: Colors.blue.shade800,
                    ),
                    const MyCard(
                      balance: 12594.2,
                      cardNumber: 3224581,
                      expiryMonth: 12,
                      expiryYear: 23,
                      color: Colors.deepPurple,
                    ),
                    MyCard(
                      balance: 13490.2,
                      cardNumber: 2123231,
                      expiryMonth: 1,
                      expiryYear: 24,
                      color: Colors.green.shade700,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              //Indicators
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                    dotWidth: 20, dotColor: Colors.grey, spacing: 3),
              ),

              //3-buttons -> send + pay + bill
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send
                  MyButton(
                    iconPath: "assets/icons/send-money.png",
                    btnName: "Send",
                  ),

                  //pay
                  MyButton(
                    iconPath: "assets/icons/credit-card.png",
                    btnName: "Pay",
                  ),

                  //bill
                  MyButton(
                    iconPath: "assets/icons/bill.png",
                    btnName: "Bills",
                  ),
                ],
              ),
              const SizedBox(height: 30),

              //stats + transaction
              const MoreInfo(
                titleNAme: "Statistics",
                subTitle: "Payment and Income",
                iconPath: "assets/icons/statistics.png",
              ),
              const SizedBox(height: 15),

              const MoreInfo(
                titleNAme: "Transactions",
                subTitle: "Trasaction History",
                iconPath: "assets/icons/transaction.png",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: Colors.pink,
          child: const Icon(Icons.monetization_on_rounded,
              color: Colors.white, size: 32),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Iconsax.home,
              size: 32,
              color: Colors.pink[300],
            ),
            const Icon(Iconsax.setting, size: 32, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
