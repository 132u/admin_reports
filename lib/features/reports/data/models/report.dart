import 'package:auth_showcasing_app/features/reports/data/models/driver.dart';
import 'package:auth_showcasing_app/features/reports/domain/entities/report.dart';

class ReportModel extends ReportEntity {
  const ReportModel({
    required super.id,
    required super.driver,
    required super.startDate,
    required super.endDate,
    required super.publishedAt,
    required super.price,
    required super.withVAT,
    required super.withoutVAT,
    required super.isHourly,
    required super.priceByHour,
    required super.cash,
    required super.description,
    required super.address,
  });

  ReportModel.fromJson(Map<String, Object?> json)
      : this(
          id: json['id'] as int,
          driver: json['driver'] as DriverModel,
          startDate: json['startDate'] as DateTime,
          endDate: json['endDate'] as DateTime,
          publishedAt: json['publishedAt'] as DateTime,
          price: json['price'] as double,
          withVAT: json['withVAT'] as bool,
          withoutVAT: json['withoutVAT'] as bool,
          isHourly: json['isHourly'] as bool,
          priceByHour: json['priceByHour'] as int,
          cash: json['cash'] as bool,
          description: json['description'] as String,
          address: json['address'] as String,
        );

  ReportModel copyWith({
    int? id,
    DriverModel? driver,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? publishedAt,
    double? price,
    bool? withVAT,
    bool? withoutVAT,
    bool? cash,
    int? priceByHour,
    bool? isHourly,
    String? address,
    String? description,
  }) {
    return ReportModel(
        id: id ?? this.id,
        driver: driver ?? this.driver,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        publishedAt: publishedAt ?? this.publishedAt,
        price: price ?? this.price,
        withVAT: withVAT ?? this.withVAT,
        withoutVAT: withoutVAT ?? this.withoutVAT,
        isHourly: isHourly ?? this.isHourly,
        priceByHour: priceByHour ?? this.priceByHour,
        cash: cash ?? this.cash,
        description: description ?? this.description,
        address: address ?? this.address);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'driver': driver,
      'startDate': startDate,
      'endDate': endDate,
      'publishedAt': publishedAt,
      'price': price,
      'withVAT': withVAT,
      'withoutVAT': withoutVAT,
      'isHourly': isHourly,
      'priceByHour': priceByHour,
      'cash': cash,
      'description': description,
      'address': address,
    };
  }
}