class Doctor {
  int id;
  String name = "";
  String desg = "";
  String qualifications = "";
  String biography = "";
  String qualificationsDetails = "";
  String information = "";
  String imageAddress = "";
  double rating;
  int experienceLevel;

  Doctor(
    this.id,
    this.name,
    this.desg,
    this.qualifications,
    this.biography,
    this.qualificationsDetails,
    this.information,
    this.imageAddress,
    this.experienceLevel,
    this.rating,
  );
}

List<Doctor> doctorList = [
  Doctor(
    1111,
    "Dr. Md. Sayeedul",
    "Cancer Specialist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFFIwX8z0TW_flwJVc4X41tiK6JqsBmyzaYOon-Nj-45ZumA6UvgkSiPN6mp5m_lm8bQA&usqp=CAU",
    5,
    4.9,
  ),
  Doctor(
    1112,
    "Dr. Karim Hasan",
    "Therapist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://osh.imgix.net/nappy-waxbill/production/portraits/1841511797-Jose-Donatien.jpg?auto=compress%2Cformat&crop=focalpoint&fit=crop&fp-x=0.5&fp-y=0.5&h=600&q=70&w=800&s=12f1c537d1b8c841b99c83cbecae7d5b",
    5,
    4.9,
  ),
  Doctor(
    1113,
    "Dr. Zakir Khan",
    "Dentist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/ef66ba74-e5e7-452f-bc82-842d718520da/2022-08-04-KP-Lee-Jeffrey-0055.jpg",
    5,
    4.9,
  ),
  //---surgeon

  Doctor(
    1114,
    "Dr. Mahir Hossain",
    "Surgeon",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/ef66ba74-e5e7-452f-bc82-842d718520da/2022-08-04-KP-Lee-Jeffrey-0055.jpg",
    5,
    4.9,
  ),
  Doctor(
    1115,
    "Dr. Farzana Rahman",
    "Surgeon",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/39b134c5-e032-463e-ae1b-b91a08b1cb43/2022-09-06-KP-Ratnesar-Neethi-0218.jpg?format=1500w",
    5,
    4.9,
  ),
  Doctor(
    1116,
    "Dr. Mohammad Ullah",
    "Surgeon",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXPytx7Nc3cqTGbeRybqxn071anGSMyDrec3gnzvv5aJZXIELTe_d2xjgWLXoFayStLgE&usqp=CAU",
    5,
    4.9,
  ),
  Doctor(
    1117,
    "Dr. Ratri Zaman",
    "Surgeon",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiEKfiloz1TaLifTCg0O79dLdRJ2t4BMMWDiIYlBfypFXDLKsZfOPH1_OTp37WN8jK10k&usqp=CAU",
    5,
    4.9,
  ),
  //---Ophthalmologist
  Doctor(
    1118,
    "Dr. Mizan Islam",
    "Ophthalmologist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsvPunOo0a3eAs7KJWWfFsSPvHVfUtUk_llA&usqp=CAU",
    5,
    4.9,
  ),
  Doctor(
    1119,
    "Dr. Sayed Rahman",
    "Ophthalmologist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://osh.imgix.net/nappy-waxbill/production/portraits/1841511797-Jose-Donatien.jpg?auto=compress%2Cformat&crop=focalpoint&fit=crop&fp-x=0.5&fp-y=0.5&h=600&q=70&w=800&s=12f1c537d1b8c841b99c83cbecae7d5b",
    5,
    4.9,
  ),
  Doctor(
    1120,
    "Dr. Mohammad Siyam",
    "Ophthalmologist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRYCmbH0qJJEsGZoDvDv8OOYm-SwGNhPZ5ng&usqp=CAU",
    5,
    4.9,
  ),
  Doctor(
    1121,
    "Dr. Sumona Akter",
    "Ophthalmologist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUg7sEj954JqRY8HGUYDrz5XMD571U2w16iisLmhuyOmiDYo-Q0BaNyTITpodN8qNFrCg&usqp=CAU",
    5,
    4.9,
  ),
  //medicine
  Doctor(
    1122,
    "Dr. Sayed Islam",
    "Medicine",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://images.squarespace-cdn.com/content/v1/51ef4493e4b0561c90fa76d6/1573492422363-K8FFCA73TJTHRXB36E54/physician+headshot.jpg?format=750w",
    5,
    4.9,
  ),
  Doctor(
    1123,
    "Dr. Tasnim Rahman",
    "Medicine",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://www.obgynsilverspring.com/wp-content/uploads/sites/2/2023/08/Dr.-Chinwe-Echeazu-update-2.jpg",
    5,
    4.9,
  ),
  Doctor(
    1124,
    "Dr. Tahmid Enam",
    "Medicine",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://media.istockphoto.com/id/1306584974/photo/portrait-of-a-handsome-male-nurse.jpg?s=612x612&w=0&k=20&c=1ii5X3XwTduQBfLrNnw4MVrhaRvAysP-YhaSJN12aFI=",
    5,
    4.9,
  ),
  Doctor(
    1125,
    "Dr. Juthi Akter",
    "Medicine",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdLV_JV1dSizElIg6vCWzaYafBlebJtk6PHN06-yA9FxLrorMO2dxxEHR3zQxANs2b0Gc&usqp=CAU",
    5,
    4.9,
  ),
  //--Cardiologist
  Doctor(
    1126,
    "Dr. Atia Rasida Silvia",
    "Cardiologist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://cdn.goodgallery.com/274bb1d3-b411-4b2a-bf11-30e8078d1335/s/0800/2b2j8gdj/doctor-headshot-white-lab-coat.jpg",
    5,
    4.9,
  ),
  Doctor(
    1127,
    "Dr. Safwan Rahman",
    "Cardiologist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGnZse-bioFo_rpeu-52OVZ913euahPrdU7Q&usqp=CAU",
    5,
    4.9,
  ),
  Doctor(
    1128,
    "Dr. Mohammad Himel",
    "Cardiologist",
    "FCPS, PGT, BDS, (DDC)\n(EX)Associate Professor & Head\nSpeciality in Orthodontics & Cosmetic dentistry",
    "The digestive system speaks a language I understand. After years of training (MBBS, FCPS, MD), I decipher its whispers to diagnose and treat liver, pancreatic, and other gut issues. At Enam Medical College & Hospital, I double down: guiding patients as a Professor and navigating their digestive journeys as a Gastroenterologist. Whether it's chronic pain, liver concerns, or gut health, every victory fuels my passion. Empowering individuals to reclaim their well-being is my mission.",
    "Qualifications:MBBS, MD(Oncology)\nSpecialty: Cancer Specialist\nLanguage Spoken: Bangla, English\nDesignation: Assistant Professor\nInstitute: National Institute of Cancer Research & Hospital, Mohakhali, Dhaka",
    "Chamber Time: Saturday to Thursday (4.00PM to 5.00 PM)\nOff Day: Friday\nFloor Number: 4th floor\nRoom Number:506\nBranch Name & Address:\nIbn Sina Diagnostic & Consultation Center, uttara\nHouse#52, Garib-E-Newaz Avenue, Sector#13, Uttara, Dhaka-1230",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSknFfj8_5xbtj-UdhvKJk8AYyb6sll3t2E7g&usqp=CAU",
    5,
    4.9,
  ),
];
