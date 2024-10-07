import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 37, 138),
        toolbarHeight: 60,
        // profile logo
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color.fromARGB(0, 95, 37, 158),
              ),
            ),
            child: const Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 95, 37, 138),
              size: 30,
            ),
          ),
        ), // profile logo

        // title
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Add Address",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                // icon
                Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 35,
                  color: Colors.white,
                ),
              ],
            ),
            Text(
              "Narhe",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ), // title

        // icon row
        actions: const [
          // OR scanner
          Icon(
            Icons.qr_code_scanner,
            color: Colors.white,
            size: 35,
          ),

          SizedBox(
            width: 5,
          ),
          // Notification
          Icon(
            Icons.notifications_none_rounded,
            color: Colors.white,
            size: 35,
          ),

          SizedBox(
            width: 5,
          ),
          // help
          Icon(
            Icons.help_outline_rounded,
            color: Colors.white,
            size: 35,
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: ListView(
          children: [
            // image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.grey,
                child: Image.asset("assets/home1.jpg", fit: BoxFit.cover),
              ),
            ),

            // container1
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "Transfer Money",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // 1
                        Column(
                          children: [
                            // icon
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 107, 39, 159),
                              ),
                              child: const Icon(
                                Icons.person_3_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // 2
                        Column(
                          children: [
                            // icon
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 107, 39, 159),
                              ),
                              child: const Icon(
                                Icons.account_balance_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // 3
                        Column(
                          children: [
                            // icon
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 107, 39, 159),
                              ),
                              child: const Icon(
                                Icons.lock_clock,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            // const SizedBox(
                            //   width: 80,
                            //   child: Text(
                            //     "To Self Account",
                            //     style: TextStyle(
                            //       fontSize: 13,
                            //       fontWeight: FontWeight.w500,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        // 4
                        Column(
                          children: [
                            // icon
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 107, 39, 159),
                              ),
                              child: const Icon(
                                Icons.account_balance_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            // const SizedBox(
                            //   width: 100,
                            //   child: Text(
                            //     "Check Bank Balance",
                            //     style: TextStyle(
                            //       fontSize: 13,
                            //       fontWeight: FontWeight.w500,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          SizedBox(width: 7),
                          SizedBox(
                            width: 90,
                            child: Text(
                              "To Mobile Number",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              "To Bank/UPI ID",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 9),
                          SizedBox(
                            width: 75,
                            child: Text(
                              "To Self Account",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Text(
                              "Check Bank Balance",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 42,
                            // width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Row(
                              children: [
                                Text(
                                  "UPI Lite:",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Try Now",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        Color.fromARGB(255, 95, 37, 138),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(95, 37, 138, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                           Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right:4.0),
                                  child: Icon(
                                    Icons.qr_code_sharp
                                  ),
                                ),
                                SizedBox(
                                  width:145,
                                  child: Text(
                                    "UPI ID: xyz12345@axl",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:4,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // three button
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right:3.0),
                          child: Icon(
                            Icons.account_balance_wallet_outlined,
                            size: 35,
                            color: Color.fromARGB(255, 95, 37, 138),
                          ),
                        ),
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                              "PhonePe",
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.w600,
                              ),
                             ),
                             Text(
                              "Wallet",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                             ),
                           ],
                         ),
                       ),
                       
                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right:3.0),
                          child: Icon(
                            Icons.card_giftcard,
                            size: 35,
                            color: Color.fromARGB(255, 95, 37, 138),
                          ),
                        ),
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                              "Explore",
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.w600,
                              ),
                             ),
                             Text(
                              "Rewards",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                             ),
                           ],
                         ),
                       ),
                       
                      ],
                    ),
                  ),

                  Container(
                     width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: const Row(
                      children: [
                       
                        Padding(
                          padding: EdgeInsets.only(right:3.0),
                          child: Icon(
                            Icons.volume_up_outlined,   
                            size: 35,
                            color: Color.fromARGB(255, 95, 37, 138),
                          ),
                        ),
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                              "Invite",
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.w00,
                              ),
                             ),
                             Text(
                              "Now",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                             ),
                           ],
                         ),
                       ),
                       
                      ],
                    ),
                  ),
                ],
              ),
            ),
          
          // container 3
          Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Recharge & Pay Bills",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right:14),
                          padding: const EdgeInsets.all(7),
                          // width: 70,
                          // height: 30,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:  Colors.deepPurple[100],
                          ),
                          child: const Row(
                            children: [
                              Text(
                                "View All",
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // 1
                        Icon(
                          Icons.mobile_friendly,
                          size: 40,
                          color:  Color.fromARGB(255, 107, 39, 159),
                        ),
                        // 2
                         Icon(
                          Icons.wallet_travel,
                          size: 40,
                          color: Color.fromARGB(255, 107, 39, 159),
                        ),
                        // 3
                         Icon(
                          Icons.credit_card_rounded,
                          size: 40,
                          color: Color.fromARGB(255, 107, 39, 159),
                        ),
                        // 4
                        Icon(
                          Icons.house_siding_outlined,
                          size: 40,
                          color: Color.fromARGB(255, 107, 39, 159),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 7),
                          SizedBox(
                            width: 90,
                            child: Text(
                              "Mobile Recharge",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              "Loan Repayment",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 9),
                          SizedBox(
                            width: 90,
                            child: Text(
                              "Credit Card Payment",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width:24),
                          SizedBox(
                            width: 50,
                            child: Text(
                              "Rent",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          
          // container 4
          Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Loan",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right:14),
                          padding: const EdgeInsets.all(7),
                          // width: 70,
                          // height: 30,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:  Colors.deepPurple[100],
                          ),
                          child: const Row(
                            children: [
                              Text(
                                "View All",
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // 1
                        Icon(
                          Icons.credit_score_rounded,
                          size: 40,
                          color:  Color.fromARGB(255, 107, 39, 159),
                        ),
                        // 2
                         Icon(
                          Icons.bar_chart,
                          size: 40,
                          color: Color.fromARGB(255, 107, 39, 159),
                        ),
                        // 3
                         Icon(
                          Icons.mobile_screen_share,
                          size: 40,
                          color: Color.fromARGB(255, 107, 39, 159),
                        ),
                        // 4
                        Icon(
                          Icons.electric_bike_rounded,
                          size: 40,
                          color: Color.fromARGB(255, 107, 39, 159),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 7),
                          SizedBox(
                            width: 90,
                            child: Text(
                              "Credit Score",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              "Gold Loan",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 9),
                          SizedBox(
                            width: 90,
                            child: Text(
                              "Mutual Fund Loan",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width:5),
                          SizedBox(
                            width: 70,
                            child: Text(
                              "Bike Loan",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          
          // container 5
           Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Insurance",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right:14),
                          padding: const EdgeInsets.all(7),
                          // width: 70,
                          // height: 30,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:  Colors.deepPurple[100],
                          ),
                          child: const Row(
                            children: [
                              Text(
                                "View All",
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // 1
                        Icon(
                          Icons.pedal_bike,
                          size: 40,
                          color:  Color.fromARGB(255, 107, 39, 159),
                        ),
                        // 2
                         Icon(
                          Icons.car_repair_outlined,
                          size: 40,
                          color: Color.fromARGB(255, 107, 39, 159),
                        ),
                        // 3
                         Icon(
                          Icons.monitor_heart,
                          size: 40,
                          color: Color.fromARGB(255, 107, 39, 159),
                        ),
                        // 4
                        Icon(
                          Icons.local_fire_department,
                          size: 40,
                          color: Color.fromARGB(255, 107, 39, 159),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 20),
                          SizedBox(
                            width: 90,
                            child: Text(
                              "Bike",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              "Car",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 9),
                          SizedBox(
                            width: 70,
                            child: Text(
                              "Health",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width:33),
                          SizedBox(
                            width: 50,
                            child: Text(
                              "Life",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_rupee_rounded),
            label: 'Loan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shield_moon_outlined),
            label: 'School',
          ),
         
          
        ], 
      ),
    );
  }
}
