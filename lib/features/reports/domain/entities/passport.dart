class PassportEntity{
  final String? number;
  final DateTime? acquisitionDate;
  final String? address;
  final String? codeAcquisitionPlace;
  final String? nameAcquisitionPlace;

  const PassportEntity({
    required this.number,
    required this.acquisitionDate,
    required this.address,
    required this.codeAcquisitionPlace,
    required this.nameAcquisitionPlace,
  });
}