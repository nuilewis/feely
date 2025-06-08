
enum AppState { initial, submitting, success, error }

enum AuthState { authenticated, unauthenticated }

enum ButtonType { primary, secondary, outline, text }

enum ChipType { filter, info }

enum Gender { male, female }

enum AppChipType { filter, info }


enum UserType {
  user(value: "User"),
  admin(value: "Admin");

  final String value;
  const UserType({required this.value});
}

enum MemberType {
  member(value: "Member"),
  notMember(value: "NotMember"); //Todo: verify the different enums

  final String value;
  const MemberType({required this.value});
}
