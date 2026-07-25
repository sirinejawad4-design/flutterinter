void main() {
  const String universityName = 'Lebanese University';

  final String studentName = 'Sirine';
  final int studentAge = 21;
  final double studentAverage = 60.5;
  final bool isRegistered = true;

  String? phoneNumber;
  String? email = 'serinee@gmail.com';

  String displayedPhone = phoneNumber ?? 'No phone number';
  String displayedEmail = email ?? 'No email';

  print('Student Information ');
  print('University: $universityName');
  print('Name: $studentName');
  print('Age: $studentAge');
  print('Average: $studentAverage');
  print('Registered: $isRegistered');
  print('Phone: $displayedPhone');
  print('Email: $displayedEmail');

  if (email != null) {
    print('Email length: ${email.length}');
  }
}