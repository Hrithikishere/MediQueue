class Surgeon {
  String docName = "";
  String docDesg = "Surgeon";
  String docQualifications = "";
  String rating = "";
  String imageAddress = "";
  Surgeon(this.docName, this.docQualifications, this.rating, this.imageAddress);
}

List<Surgeon> surgeonList = [
  Surgeon(
      "Dr. Sayyedul Islam",
      "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
      "4.9",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFFIwX8z0TW_flwJVc4X41tiK6JqsBmyzaYOon-Nj-45ZumA6UvgkSiPN6mp5m_lm8bQA&usqp=CAU"),
  Surgeon(
      "Dr. Sayyedul Islam",
      "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
      "4.9",
      "https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/39b134c5-e032-463e-ae1b-b91a08b1cb43/2022-09-06-KP-Ratnesar-Neethi-0218.jpg?format=1500w"),
];

// List<Blogs> blogsList = [
//   Blogs(
//       1000,
//       "Why Men Should Stay on Top of Health Screenings",
//       "Dr. Daniel Lee",
//       "Urologist",
//       "24 Jan 2024, 9.30 PM",
//       "Historically, men have been hesitant to seek medical attention when something seems wrong with their health. Also, men aren't as likely as women to have preventive screenings and checkups with their health care team. This is a problem because early detection of a medical issue is the best way to improve effectiveness of condition treatment and management. Delaying or avoiding a checkup or screening could lead to a treatable situation turning deadly. While some screenings, such as HIV and hepatitis C, are recommended to have once, other screenings for certain cancers should be performed regularly.Vaccines are important to prevent infectious diseases. Vaccinations for men are administered at different intervals throughout adulthood.So, men, reconsider your reservations and talk to your health care team about potentially lifesaving screening.Men older than 50 should have a yearly physical exam, and men younger than 50 should have a physical exam every three to five years. Even if you're feeling healthy, a regular checkup with your health care team is a good way to validate your health or identify a problem in its early stages."),
