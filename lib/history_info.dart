class HistoryInfo{
  final String? deviceId;
  final String? feederName;
  final String? feederType;
  final String? serviceBand;
  final int? status;
  final int? voltageSupplied;
  final int? voltageSupplied1;
  final int? voltageSupplied2;
  final int? voltageSupplied3;
  final int? currentSupplied;
  final int? currentSupplied1;
  final int? currentSupplied2;
  final int? currentSupplied3;
  final String? communityId;
  final String? communityName;
  final String? stateName;
  final String? stateCode;
  final String? lgaName;
  final String? lgaCode;
  final String? hostAddress;
  final String? hostName;
  final String? longitude;
  final String? latitude;
  final int? batteryLevel;
  final int? signalStrength;
  final String? supplyZoneId;
  final int? clientId;




  HistoryInfo({required this.deviceId, this.feederName, this.feederType, this.serviceBand, this.status,
    this.voltageSupplied, this.voltageSupplied1, this.voltageSupplied2, this.voltageSupplied3,
    this.currentSupplied, this.currentSupplied1, this.currentSupplied2, this.currentSupplied3,
    this.communityId, this.communityName, this.stateName, this.stateCode, this.lgaName, this.lgaCode,
    this.hostAddress, this.hostName, this.longitude, this.latitude, this.batteryLevel, this.signalStrength,
    this.supplyZoneId, this.clientId});
}
