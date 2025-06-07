final RegExp emailRegex = RegExp(
  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
);

bool isValidEmail(String email) => emailRegex.hasMatch(email);


final RegExp phoneRegex = RegExp(
  r'^\+?[0-9]{7,15}$',
);

bool isValidPhone(String phone) => phoneRegex.hasMatch(phone);
