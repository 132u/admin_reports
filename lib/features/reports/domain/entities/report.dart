import 'package:auth_showcasing_app/features/reports/domain/entities/driver.dart';
import 'package:equatable/equatable.dart';

class ReportEntity extends Equatable{
  final int? id;
  final DriverEntity? driver;  
  final DateTime? startDate;
  final DateTime? endDate;
  final DateTime? publishedAt;
  final double? price;
  final bool? withVAT;
  final bool? withoutVAT;
  final bool? cash;
  final int? priceByHour;
  final bool? isHourly;
  final String? description;
  final String? address;

  const ReportEntity({
     required this.id,
     required this.driver,
     required this.startDate,
     required this.endDate,
     required this.publishedAt,
     required this.price,
     required this.withVAT,
     required this.withoutVAT,
     required this.isHourly,
     required this.priceByHour,
     required this.cash,
     required this.description,
     required this.address,
  });
  
  @override
  List<Object?> get props{
    return [
      id,
      driver,
      startDate,
      endDate,
      publishedAt,
      price,
      withVAT,
      withoutVAT,
      isHourly,
      priceByHour,
      cash,
      description,
      address,
    ];
  }
}

