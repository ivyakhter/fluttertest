import 'package:flutter/material.dart';

class course_seminars extends StatelessWidget {
  List Faq_list = [
    {
      "title": "What is the necessity of attending a seminar",
      "answer":
      "By attending our free seminar you will be able to understand the demand of freelancing and scopes of your work in online marketplaces. Besides this you will be able to make a decision on which course is more beneficial for you or goes with your background. You can also participate in open question answer session to clear your doubts on any IT professions."
    },
    {
      "title": "How to register for Free Friday Seminar?",
      "answer":
      "You can directly go to our home page and can click Apply now button. Besides this you can also knock us through Facebook page by sending us your contact details and our representative will contact with you for confirming your seat."
    },
    {
      "title": "What are the courses offered in the institute?",
      "answer":
      "We are offering IT professional training programs. The courses that are offered- Graphic design (Basic & Advanced), Digital Marketing, TV commercials, Image Editing, Web design, Web development, Java Script, 3D Animation, Interior and Exterior design and so on."
    },
    {
      "title": "Do you provide any certification?",
      "answer":
      "Yes, we do provide certification on your type of expertise after completing the course. Besides, we encourage students to attend the BTEB certification that is government recognized. And soon we also will start providing the online certification for different marketplaces."
    },
    {
      "title": "What is Lifetime support?",
      "answer":
      "After completing the course from our institute, our faculty will provide you full support for live projects and will help you to solve any problems faced while interacting with clients. You are always welcome in our premises whenever you are in need"
    },
    {
      "title": "Is there any scholarship offered for us?",
      "answer":
      "Yes, we offer scholarship program for freshers. We arrange exams on different IT related courses. If you have a little knowledge on computer and internet then you will be able to participate in the program. It will help to enhance your skill as well as give you an opportunity to shine."
    },
    {
      "title": "Can we change the course after admission?",
      "answer":
      " Yes, you can change your chosen course after admission but for that you are required to pay BDT 3000 as Course Change Fee. But we aren’t in favor of course change. We suggest that before taking admission you go through the courses guideline and then decide."
    },
    {
      "title": "Can we postpone the course?",
      "answer":
      "Yes. there is an option for postponing the course. You can postpone your course for 4 months. Within 4 months you must join another batch to continue your course or else your admission will be cancelled in whole. For the change of the batch you must pay TK 2000."
    }, {
      "title": "Should I bring my laptop here?",
      "answer":
      "No. Our lab is well equipped and fully organised. We provide lab facilities in all of our professional IT courses. So you don't need to bring your Laptop in the class."
    }, {
      "title": "Is there any Professional Batch or Weekend Batch available for the courses?",
      "answer":
      "Yes, In our courses we do provide the corporate batch facility for the job holders/ woman or industry people. Besides, students can also choose weekend classes. For corporate batch we have only Friday, 4 hours of class per week is available. Besides we also have Friday & Saturday batch available.Few people prefer evening batch to continue the class so for them we have evening classes starting from 6 PM."
    }, {
      "title": "If I miss any class then what should I do?",
      "answer":
      "No worries, we are providing backup classes if by chance you miss the class. For availing the backup class there are some limitations. We allow backup class only for those who have valid     reasons for absenteeism in the class. A student will get a maximum of 4 backup classes throughout the course."
    },
    {
      "title": "Can i get all class videos?",
      "answer":
      " In our professional IT courses, we do provide class videos depending on necessity. We provide videos for classes that are technical and difficult but we don’t provide all class videos. Because, it will make students depend on class video and they will start missing classes. So the course is designed as 50% class videos and 50% practical homework."
    }, {
      "title": "After finishing a course, is there any discount for the next course?",
      "answer":
      " Yes. you will get a discount of 50% on next course fee. If you enroll in another course within 3 months of finishing the previous course."
    }, {
      "title": "Can I continue two different courses at a time?",
      "answer":
      " Yes you can do it if you are able to manage 2 courses parallely. But we suggest you not to continue two courses at once since there is a possibility that it will hamper your productivity. While continuing the course, in every class you will be getting some assignments and you have to practice on a daily basis. That’s why it is quite difficult to manage 2 courses together."
    }, {
      "title": " What is the required PC configuration?",
      "answer":
      "The minimum configuration required is core i5, 4 GB RAM. It will help you in every phase of your online projects."
    }, {
      "title": "Is it possible to generate income during course?",
      "answer":
      " It depends. If you attend regular classes, submit all the home tasks and projects in time, invest your time sincerely in selected course and have a winning attitude, you can definitely reach your goal. Many of our students are winning in the middle of the course. So yes it is possible, will power is the only matter here."
    }, {
      "title": "What is  the education qualification of mentors or teachers?",
      "answer":
      " They are well qualified in their position because CIT is well recognized for its unique module and exceptional training style. And to know more about our industry experts, do join our seminar and talk to them directly. It will help you to understand better."
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
