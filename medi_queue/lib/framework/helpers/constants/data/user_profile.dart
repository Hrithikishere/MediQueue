class UserProfile {
  int id;
  String name;
  String username;
  String email;
  String password;
  String imageAddress;
  String phone;
  int age;
  String gender;
  String address;
  int height;
  int weight;
  String personalInformation;
  String medicalHistory;
  List<int> appointmentList;

  UserProfile(
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.imageAddress,
    this.phone,
    this.age,
    this.gender,
    this.address,
    this.height,
    this.weight,
    this.personalInformation,
    this.medicalHistory,
    this.appointmentList,
  );
}

List<UserProfile> usersList = [
  UserProfile(
    1001,
    'Md. Rahim',
    'rahim',
    'rahim@gmail.com',
    '12345',
    'https://images.squarespace-cdn.com/content/v1/631ba8eed2196a6795698665/e35c4b20-b80a-412f-8048-8ad57c07bd79/2022-02-10-Trinet-Kinh-5690-OneDrive+-+Social+Media.jpg',
    '0185464351',
    23,
    'Male',
    'Uttar Badda, Dhaka, Bangladesh',
    182,
    75,
    'Date of birth : 9 Nov 2000\nPlace of birth: Rajbari\nNationality: Bangladeshi\nSex: Male\nOccupation: Engineer\nContact: 01712-135457\nAddress: House No. 113, Thana Road, Uttar Badda, Dhaka -1212, Bangladesh',
    'Presenting complaint: Nausea, palpitations and cough with white/brown sputum for past week. Unable to concentrate and ‘feeling rough’. Very anxious and agitated. Tachycardia. Patient experiencing suicidal ideation.Past Medical History: Depression, COPD, Type 2 diabetes, Hypertension, Personality disorder.Social History: Lives alone in flat. Independent. Has smoked about 20 cigarettes per day for over 20 years. No alcohol.Impression/Diagnosis: Possible adverse reaction to quetiapine. Lower respiratory tract infection (LRTI). Agranulocytosis.Plan: Liaise with psychiatry team to review medicines, treat LRTI with doxycycline, monitor bowels, ECG.',
    [1001, 1003, 1005, 1007],
  ),
  UserProfile(
    1002,
    'Mst. Rahima',
    'rahima',
    'rahima@gmail.com',
    '12345',
    'http://thispix.com/wp-content/uploads/2015/06/Copy-of-Edit-1798-1-300x300.jpg',
    '0195464351',
    30,
    'Female',
    'Merul Badda, Dhaka, Bangladesh',
    172,
    70,
    'Date of birth : 8 Nov 1994\nPlace of birth: Rajbari\nNationality: Bangladeshi\nSex: Female\nOccupation: Engineer\nContact: 01712-135457\nAddress: House No. 113, Thana Road, Uttar Badda, Dhaka -1212, Bangladesh',
    'Presenting complaint: Nausea, palpitations and cough with white/brown sputum for past week. Unable to concentrate and ‘feeling rough’. Very anxious and agitated. Tachycardia. Patient experiencing suicidal ideation.Past Medical History: Depression, COPD, Type 2 diabetes, Hypertension, Personality disorder.Social History: Lives alone in flat. Independent. Has smoked about 20 cigarettes per day for over 20 years. No alcohol.Impression/Diagnosis: Possible adverse reaction to quetiapine. Lower respiratory tract infection (LRTI). Agranulocytosis.Plan: Liaise with psychiatry team to review medicines, treat LRTI with doxycycline, monitor bowels, ECG.',
    [1002, 1004, 1006, 1008],
  ),
];
