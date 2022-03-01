import 'package:flutter/material.dart';

class fee_payments_faq extends StatelessWidget {

  List Faq_list = [
    {
      "title": "How much is the course fee?",
      "answer":
      " The course fee for different courses vary. You can go to our list of courses pick a course that you prefer and see for the course fee. "
    },
    {
      "title": "Can I pay the course fee by installments?",
      "answer":
      "You can pay the course fee in three installments maximum after enrolling in the course. Besides we offer discounts at different times that will deduct the course fee according to its percentage"
    },
    {
      "title": "What type of payments are accepted?",
      "answer":
      "We accept Visa, American Express and Master Card. We also accept payment by Bkash. The number is 01990779766."
    },
    {
      "title": "Why the course fee is so high?",
      "answer":
      "We believe in quality of learning. The standard of learning that we offer is worth what you will pay."
    },
    {
      "title": "Do you give money refund?",
      "answer":
      "No. After enrollment we don't allow money refund even if you want to cancel your admission. But if for any reason your class doesn't start within 2 months of the admission date then after 2 months company will refund your money. We will refund the full amount except the admission fee that is BDT 1000."
    },
    {
      "title": "What is the minimum required down payment?",
      "answer":
      "The minimum required down payment for any course is TK 8,500/- and rest of the amount can be paid in installments."
    },
    {
      "title": "Can I pay my course fee in following 5 months or doing a job in CIT?",
      "answer":
      "Sorry sir, you can not  provide your payments in such a way, you have to pay your admission fee and course fee in miximum 4 installments.First of all you have pay 7000 taka(1000 add fee +6000 course fee) for admission purpose and last payment  would be maximum 4000 taka between these  you have to pay your  remaining fees."
    },


  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Faq_list.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 1.0,
            child: ExpansionTile(
                title: Text(
                  Faq_list[index]["title"],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  textAlign: TextAlign.left,
                ),
                children: <Widget>[
                  Divider(),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        Faq_list[index]["answer"],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                        textAlign: TextAlign.left,
                      )),
                  Divider()
                ]),
          );
        });
  }
}

