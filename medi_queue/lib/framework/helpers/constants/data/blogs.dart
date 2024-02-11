import 'package:flutter/physics.dart';

class Blogs {
  int id = 0;
  String title = "";
  String postedBy = "";
  String postedByDesg = "";
  String postedTime = "";
  Blogs(this.id, this.title, this.postedBy, this.postedByDesg, this.postedTime);
}

List<Blogs> blogsList = [
  Blogs(1000, "Why Men Should Stay on Top of Health Screenings",
      "Dr. Daniel Lee", "Urologist", "24 Jan 2024, 9.30 PM"),
  Blogs(1001, "Why Physicals Are Especially Important for Teens and Young Men",
      "Dr. Kyle Bardet", "Consultant of Cardiology", "30 Jan 2024, 9.30 PM"),
  Blogs(1002, "Self Management Is the Key to Unlocking a Bright Future",
      "Marilyn Marencik", "Nurse Practitioner", "01 Jan 2024, 9.30 PM"),
  Blogs(1003, "How to Set Yourself up for a Restful Night of Sleep",
      "Elizabeth Rainville", "Physician Assistant", "01 Jan 2024, 9.30 PM"),
  Blogs(1004, "An Effective Low Maintenance Birth Control Option",
      "Dr. Sajida Khanom", "Nurse Practitioner", "07 Jan 2024, 9.30 PM"),
  Blogs(1005, "Why Men Should Stay on Top of Health Screenings",
      "Dr. Daniel Lee", "Urologist", "24 Jan 2024, 9.30 PM"),
  Blogs(1006, "Why Physicals Are Especially Important for Teens and Young Men",
      "Dr. Kyle Bardet", "Consultant of Cardiology", "30 Jan 2024, 9.30 PM"),
  Blogs(1007, "Self Management Is the Key to Unlocking a Bright Future",
      "Marilyn Marencik", "Nurse Practitioner", "01 Jan 2024, 9.30 PM"),
  Blogs(1008, "How to Set Yourself up for a Restful Night of Sleep",
      "Elizabeth Rainville", "Physician Assistant", "01 Jan 2024, 9.30 PM"),
  Blogs(1009, "An Effective Low Maintenance Birth Control Option",
      "Dr. Sajida Khanom", "Nurse Practitioner", "07 Jan 2024, 9.30 PM"),
];
