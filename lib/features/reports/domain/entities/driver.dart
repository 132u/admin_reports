import 'package:auth_showcasing_app/features/reports/domain/entities/passport.dart';

class DriverEntity {
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final DateTime? birthDate;
  final PassportEntity? passport;

  const DriverEntity({
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.birthDate,
    required this.passport,
  });
}