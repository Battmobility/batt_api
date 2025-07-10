// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'batt_kit.enums.swagger.dart' as enums;

part 'batt_kit.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class AddVehicleLocationRequest {
  const AddVehicleLocationRequest({
    this.from,
    this.name,
    this.vehicleBaseLocationId,
  });

  factory AddVehicleLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$AddVehicleLocationRequestFromJson(json);

  static const toJsonFactory = _$AddVehicleLocationRequestToJson;
  Map<String, dynamic> toJson() => _$AddVehicleLocationRequestToJson(this);

  @JsonKey(name: 'from')
  final DateTime? from;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'vehicleBaseLocationId')
  final String? vehicleBaseLocationId;
  static const fromJsonFactory = _$AddVehicleLocationRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddVehicleLocationRequest &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.vehicleBaseLocationId, vehicleBaseLocationId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleBaseLocationId,
                  vehicleBaseLocationId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(vehicleBaseLocationId) ^
      runtimeType.hashCode;
}

extension $AddVehicleLocationRequestExtension on AddVehicleLocationRequest {
  AddVehicleLocationRequest copyWith({
    DateTime? from,
    String? name,
    String? vehicleBaseLocationId,
  }) {
    return AddVehicleLocationRequest(
      from: from ?? this.from,
      name: name ?? this.name,
      vehicleBaseLocationId:
          vehicleBaseLocationId ?? this.vehicleBaseLocationId,
    );
  }

  AddVehicleLocationRequest copyWithWrapped({
    Wrapped<DateTime?>? from,
    Wrapped<String?>? name,
    Wrapped<String?>? vehicleBaseLocationId,
  }) {
    return AddVehicleLocationRequest(
      from: (from != null ? from.value : this.from),
      name: (name != null ? name.value : this.name),
      vehicleBaseLocationId: (vehicleBaseLocationId != null
          ? vehicleBaseLocationId.value
          : this.vehicleBaseLocationId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AddVehiclesToGroupRequest {
  const AddVehiclesToGroupRequest({this.vehicleIds});

  factory AddVehiclesToGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$AddVehiclesToGroupRequestFromJson(json);

  static const toJsonFactory = _$AddVehiclesToGroupRequestToJson;
  Map<String, dynamic> toJson() => _$AddVehiclesToGroupRequestToJson(this);

  @JsonKey(name: 'vehicleIds', defaultValue: <String>[])
  final List<String>? vehicleIds;
  static const fromJsonFactory = _$AddVehiclesToGroupRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AddVehiclesToGroupRequest &&
            (identical(other.vehicleIds, vehicleIds) ||
                const DeepCollectionEquality().equals(
                  other.vehicleIds,
                  vehicleIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicleIds) ^ runtimeType.hashCode;
}

extension $AddVehiclesToGroupRequestExtension on AddVehiclesToGroupRequest {
  AddVehiclesToGroupRequest copyWith({List<String>? vehicleIds}) {
    return AddVehiclesToGroupRequest(vehicleIds: vehicleIds ?? this.vehicleIds);
  }

  AddVehiclesToGroupRequest copyWithWrapped({
    Wrapped<List<String>?>? vehicleIds,
  }) {
    return AddVehiclesToGroupRequest(
      vehicleIds: (vehicleIds != null ? vehicleIds.value : this.vehicleIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdjacentNonAvailability {
  const AdjacentNonAvailability({
    this.active,
    this.bookingId,
    this.period,
    this.type,
    this.userId,
    this.userName,
  });

  factory AdjacentNonAvailability.fromJson(Map<String, dynamic> json) =>
      _$AdjacentNonAvailabilityFromJson(json);

  static const toJsonFactory = _$AdjacentNonAvailabilityToJson;
  Map<String, dynamic> toJson() => _$AdjacentNonAvailabilityToJson(this);

  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'bookingId')
  final String? bookingId;
  @JsonKey(name: 'period')
  final Period? period;
  @JsonKey(
    name: 'type',
    toJson: adjacentNonAvailabilityTypeNullableToJson,
    fromJson: adjacentNonAvailabilityTypeNullableFromJson,
  )
  final enums.AdjacentNonAvailabilityType? type;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'userName')
  final String? userName;
  static const fromJsonFactory = _$AdjacentNonAvailabilityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdjacentNonAvailability &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.bookingId, bookingId) ||
                const DeepCollectionEquality().equals(
                  other.bookingId,
                  bookingId,
                )) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(bookingId) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      runtimeType.hashCode;
}

extension $AdjacentNonAvailabilityExtension on AdjacentNonAvailability {
  AdjacentNonAvailability copyWith({
    bool? active,
    String? bookingId,
    Period? period,
    enums.AdjacentNonAvailabilityType? type,
    String? userId,
    String? userName,
  }) {
    return AdjacentNonAvailability(
      active: active ?? this.active,
      bookingId: bookingId ?? this.bookingId,
      period: period ?? this.period,
      type: type ?? this.type,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
    );
  }

  AdjacentNonAvailability copyWithWrapped({
    Wrapped<bool?>? active,
    Wrapped<String?>? bookingId,
    Wrapped<Period?>? period,
    Wrapped<enums.AdjacentNonAvailabilityType?>? type,
    Wrapped<String?>? userId,
    Wrapped<String?>? userName,
  }) {
    return AdjacentNonAvailability(
      active: (active != null ? active.value : this.active),
      bookingId: (bookingId != null ? bookingId.value : this.bookingId),
      period: (period != null ? period.value : this.period),
      type: (type != null ? type.value : this.type),
      userId: (userId != null ? userId.value : this.userId),
      userName: (userName != null ? userName.value : this.userName),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiErrorResponse {
  const ApiErrorResponse({this.errors});

  factory ApiErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorResponseFromJson(json);

  static const toJsonFactory = _$ApiErrorResponseToJson;
  Map<String, dynamic> toJson() => _$ApiErrorResponseToJson(this);

  @JsonKey(name: 'errors', defaultValue: <String>[])
  final List<String>? errors;
  static const fromJsonFactory = _$ApiErrorResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiErrorResponse &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errors) ^ runtimeType.hashCode;
}

extension $ApiErrorResponseExtension on ApiErrorResponse {
  ApiErrorResponse copyWith({List<String>? errors}) {
    return ApiErrorResponse(errors: errors ?? this.errors);
  }

  ApiErrorResponse copyWithWrapped({Wrapped<List<String>?>? errors}) {
    return ApiErrorResponse(
      errors: (errors != null ? errors.value : this.errors),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiValidationResponse {
  const ApiValidationResponse({this.validationErrors});

  factory ApiValidationResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiValidationResponseFromJson(json);

  static const toJsonFactory = _$ApiValidationResponseToJson;
  Map<String, dynamic> toJson() => _$ApiValidationResponseToJson(this);

  @JsonKey(name: 'validationErrors')
  final Map<String, dynamic>? validationErrors;
  static const fromJsonFactory = _$ApiValidationResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiValidationResponse &&
            (identical(other.validationErrors, validationErrors) ||
                const DeepCollectionEquality().equals(
                  other.validationErrors,
                  validationErrors,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(validationErrors) ^
      runtimeType.hashCode;
}

extension $ApiValidationResponseExtension on ApiValidationResponse {
  ApiValidationResponse copyWith({Map<String, dynamic>? validationErrors}) {
    return ApiValidationResponse(
      validationErrors: validationErrors ?? this.validationErrors,
    );
  }

  ApiValidationResponse copyWithWrapped({
    Wrapped<Map<String, dynamic>?>? validationErrors,
  }) {
    return ApiValidationResponse(
      validationErrors: (validationErrors != null
          ? validationErrors.value
          : this.validationErrors),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BattFormula {
  const BattFormula({this.minCommitment, this.type, this.warrantyAmount});

  factory BattFormula.fromJson(Map<String, dynamic> json) =>
      _$BattFormulaFromJson(json);

  static const toJsonFactory = _$BattFormulaToJson;
  Map<String, dynamic> toJson() => _$BattFormulaToJson(this);

  @JsonKey(name: 'minCommitment')
  final int? minCommitment;
  @JsonKey(
    name: 'type',
    toJson: battFormulaTypeNullableToJson,
    fromJson: battFormulaTypeNullableFromJson,
  )
  final enums.BattFormulaType? type;
  @JsonKey(name: 'warrantyAmount')
  final int? warrantyAmount;
  static const fromJsonFactory = _$BattFormulaFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BattFormula &&
            (identical(other.minCommitment, minCommitment) ||
                const DeepCollectionEquality().equals(
                  other.minCommitment,
                  minCommitment,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.warrantyAmount, warrantyAmount) ||
                const DeepCollectionEquality().equals(
                  other.warrantyAmount,
                  warrantyAmount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(minCommitment) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(warrantyAmount) ^
      runtimeType.hashCode;
}

extension $BattFormulaExtension on BattFormula {
  BattFormula copyWith({
    int? minCommitment,
    enums.BattFormulaType? type,
    int? warrantyAmount,
  }) {
    return BattFormula(
      minCommitment: minCommitment ?? this.minCommitment,
      type: type ?? this.type,
      warrantyAmount: warrantyAmount ?? this.warrantyAmount,
    );
  }

  BattFormula copyWithWrapped({
    Wrapped<int?>? minCommitment,
    Wrapped<enums.BattFormulaType?>? type,
    Wrapped<int?>? warrantyAmount,
  }) {
    return BattFormula(
      minCommitment: (minCommitment != null
          ? minCommitment.value
          : this.minCommitment),
      type: (type != null ? type.value : this.type),
      warrantyAmount: (warrantyAmount != null
          ? warrantyAmount.value
          : this.warrantyAmount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BatteryStatus {
  const BatteryStatus({
    this.ageInSeconds,
    this.batteryPercentage,
    this.charging,
    this.cruisingRange,
    this.errorMessage,
    this.fetchStatus,
  });

  factory BatteryStatus.fromJson(Map<String, dynamic> json) =>
      _$BatteryStatusFromJson(json);

  static const toJsonFactory = _$BatteryStatusToJson;
  Map<String, dynamic> toJson() => _$BatteryStatusToJson(this);

  @JsonKey(name: 'ageInSeconds')
  final int? ageInSeconds;
  @JsonKey(name: 'batteryPercentage')
  final int? batteryPercentage;
  @JsonKey(
    name: 'charging',
    toJson: batteryStatusChargingNullableToJson,
    fromJson: batteryStatusChargingNullableFromJson,
  )
  final enums.BatteryStatusCharging? charging;
  @JsonKey(name: 'cruisingRange')
  final int? cruisingRange;
  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  @JsonKey(
    name: 'fetchStatus',
    toJson: batteryStatusFetchStatusNullableToJson,
    fromJson: batteryStatusFetchStatusNullableFromJson,
  )
  final enums.BatteryStatusFetchStatus? fetchStatus;
  static const fromJsonFactory = _$BatteryStatusFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BatteryStatus &&
            (identical(other.ageInSeconds, ageInSeconds) ||
                const DeepCollectionEquality().equals(
                  other.ageInSeconds,
                  ageInSeconds,
                )) &&
            (identical(other.batteryPercentage, batteryPercentage) ||
                const DeepCollectionEquality().equals(
                  other.batteryPercentage,
                  batteryPercentage,
                )) &&
            (identical(other.charging, charging) ||
                const DeepCollectionEquality().equals(
                  other.charging,
                  charging,
                )) &&
            (identical(other.cruisingRange, cruisingRange) ||
                const DeepCollectionEquality().equals(
                  other.cruisingRange,
                  cruisingRange,
                )) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality().equals(
                  other.errorMessage,
                  errorMessage,
                )) &&
            (identical(other.fetchStatus, fetchStatus) ||
                const DeepCollectionEquality().equals(
                  other.fetchStatus,
                  fetchStatus,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ageInSeconds) ^
      const DeepCollectionEquality().hash(batteryPercentage) ^
      const DeepCollectionEquality().hash(charging) ^
      const DeepCollectionEquality().hash(cruisingRange) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(fetchStatus) ^
      runtimeType.hashCode;
}

extension $BatteryStatusExtension on BatteryStatus {
  BatteryStatus copyWith({
    int? ageInSeconds,
    int? batteryPercentage,
    enums.BatteryStatusCharging? charging,
    int? cruisingRange,
    String? errorMessage,
    enums.BatteryStatusFetchStatus? fetchStatus,
  }) {
    return BatteryStatus(
      ageInSeconds: ageInSeconds ?? this.ageInSeconds,
      batteryPercentage: batteryPercentage ?? this.batteryPercentage,
      charging: charging ?? this.charging,
      cruisingRange: cruisingRange ?? this.cruisingRange,
      errorMessage: errorMessage ?? this.errorMessage,
      fetchStatus: fetchStatus ?? this.fetchStatus,
    );
  }

  BatteryStatus copyWithWrapped({
    Wrapped<int?>? ageInSeconds,
    Wrapped<int?>? batteryPercentage,
    Wrapped<enums.BatteryStatusCharging?>? charging,
    Wrapped<int?>? cruisingRange,
    Wrapped<String?>? errorMessage,
    Wrapped<enums.BatteryStatusFetchStatus?>? fetchStatus,
  }) {
    return BatteryStatus(
      ageInSeconds: (ageInSeconds != null
          ? ageInSeconds.value
          : this.ageInSeconds),
      batteryPercentage: (batteryPercentage != null
          ? batteryPercentage.value
          : this.batteryPercentage),
      charging: (charging != null ? charging.value : this.charging),
      cruisingRange: (cruisingRange != null
          ? cruisingRange.value
          : this.cruisingRange),
      errorMessage: (errorMessage != null
          ? errorMessage.value
          : this.errorMessage),
      fetchStatus: (fetchStatus != null ? fetchStatus.value : this.fetchStatus),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BillingPrice {
  const BillingPrice({
    this.amount,
    this.changeFromHourlyToDaily,
    this.endDate,
    this.hourlyTotalNotCharged,
    this.hourlyTotalNotChargedExclVat,
    this.km,
    this.kmPrice,
    this.kmPriceExclVat,
    this.kmTotal,
    this.kmTotalExclVat,
    this.startDate,
    this.timeAmount,
    this.timeTotal,
    this.timeTotalExclVat,
    this.total,
    this.totalExclVat,
    this.totalVat,
    this.unit,
    this.unitPrice,
    this.unitPriceExclVat,
    this.vatRate,
  });

  factory BillingPrice.fromJson(Map<String, dynamic> json) =>
      _$BillingPriceFromJson(json);

  static const toJsonFactory = _$BillingPriceToJson;
  Map<String, dynamic> toJson() => _$BillingPriceToJson(this);

  @JsonKey(name: 'amount')
  final int? amount;
  @JsonKey(name: 'changeFromHourlyToDaily')
  final bool? changeFromHourlyToDaily;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'hourlyTotalNotCharged')
  final double? hourlyTotalNotCharged;
  @JsonKey(name: 'hourlyTotalNotChargedExclVat')
  final double? hourlyTotalNotChargedExclVat;
  @JsonKey(name: 'km')
  final int? km;
  @JsonKey(name: 'kmPrice')
  final double? kmPrice;
  @JsonKey(name: 'kmPriceExclVat')
  final double? kmPriceExclVat;
  @JsonKey(name: 'kmTotal')
  final double? kmTotal;
  @JsonKey(name: 'kmTotalExclVat')
  final double? kmTotalExclVat;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'timeAmount')
  final double? timeAmount;
  @JsonKey(name: 'timeTotal')
  final double? timeTotal;
  @JsonKey(name: 'timeTotalExclVat')
  final double? timeTotalExclVat;
  @JsonKey(name: 'total')
  final double? total;
  @JsonKey(name: 'totalExclVat')
  final double? totalExclVat;
  @JsonKey(name: 'totalVat')
  final double? totalVat;
  @JsonKey(
    name: 'unit',
    toJson: billingPriceUnitNullableToJson,
    fromJson: billingPriceUnitNullableFromJson,
  )
  final enums.BillingPriceUnit? unit;
  @JsonKey(name: 'unitPrice')
  final double? unitPrice;
  @JsonKey(name: 'unitPriceExclVat')
  final double? unitPriceExclVat;
  @JsonKey(name: 'vatRate')
  final double? vatRate;
  static const fromJsonFactory = _$BillingPriceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BillingPrice &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(
                  other.changeFromHourlyToDaily,
                  changeFromHourlyToDaily,
                ) ||
                const DeepCollectionEquality().equals(
                  other.changeFromHourlyToDaily,
                  changeFromHourlyToDaily,
                )) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(
                  other.endDate,
                  endDate,
                )) &&
            (identical(other.hourlyTotalNotCharged, hourlyTotalNotCharged) ||
                const DeepCollectionEquality().equals(
                  other.hourlyTotalNotCharged,
                  hourlyTotalNotCharged,
                )) &&
            (identical(
                  other.hourlyTotalNotChargedExclVat,
                  hourlyTotalNotChargedExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.hourlyTotalNotChargedExclVat,
                  hourlyTotalNotChargedExclVat,
                )) &&
            (identical(other.km, km) ||
                const DeepCollectionEquality().equals(other.km, km)) &&
            (identical(other.kmPrice, kmPrice) ||
                const DeepCollectionEquality().equals(
                  other.kmPrice,
                  kmPrice,
                )) &&
            (identical(other.kmPriceExclVat, kmPriceExclVat) ||
                const DeepCollectionEquality().equals(
                  other.kmPriceExclVat,
                  kmPriceExclVat,
                )) &&
            (identical(other.kmTotal, kmTotal) ||
                const DeepCollectionEquality().equals(
                  other.kmTotal,
                  kmTotal,
                )) &&
            (identical(other.kmTotalExclVat, kmTotalExclVat) ||
                const DeepCollectionEquality().equals(
                  other.kmTotalExclVat,
                  kmTotalExclVat,
                )) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )) &&
            (identical(other.timeAmount, timeAmount) ||
                const DeepCollectionEquality().equals(
                  other.timeAmount,
                  timeAmount,
                )) &&
            (identical(other.timeTotal, timeTotal) ||
                const DeepCollectionEquality().equals(
                  other.timeTotal,
                  timeTotal,
                )) &&
            (identical(other.timeTotalExclVat, timeTotalExclVat) ||
                const DeepCollectionEquality().equals(
                  other.timeTotalExclVat,
                  timeTotalExclVat,
                )) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.totalExclVat, totalExclVat) ||
                const DeepCollectionEquality().equals(
                  other.totalExclVat,
                  totalExclVat,
                )) &&
            (identical(other.totalVat, totalVat) ||
                const DeepCollectionEquality().equals(
                  other.totalVat,
                  totalVat,
                )) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.unitPrice, unitPrice) ||
                const DeepCollectionEquality().equals(
                  other.unitPrice,
                  unitPrice,
                )) &&
            (identical(other.unitPriceExclVat, unitPriceExclVat) ||
                const DeepCollectionEquality().equals(
                  other.unitPriceExclVat,
                  unitPriceExclVat,
                )) &&
            (identical(other.vatRate, vatRate) ||
                const DeepCollectionEquality().equals(other.vatRate, vatRate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(changeFromHourlyToDaily) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(hourlyTotalNotCharged) ^
      const DeepCollectionEquality().hash(hourlyTotalNotChargedExclVat) ^
      const DeepCollectionEquality().hash(km) ^
      const DeepCollectionEquality().hash(kmPrice) ^
      const DeepCollectionEquality().hash(kmPriceExclVat) ^
      const DeepCollectionEquality().hash(kmTotal) ^
      const DeepCollectionEquality().hash(kmTotalExclVat) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(timeAmount) ^
      const DeepCollectionEquality().hash(timeTotal) ^
      const DeepCollectionEquality().hash(timeTotalExclVat) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(totalExclVat) ^
      const DeepCollectionEquality().hash(totalVat) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(unitPrice) ^
      const DeepCollectionEquality().hash(unitPriceExclVat) ^
      const DeepCollectionEquality().hash(vatRate) ^
      runtimeType.hashCode;
}

extension $BillingPriceExtension on BillingPrice {
  BillingPrice copyWith({
    int? amount,
    bool? changeFromHourlyToDaily,
    DateTime? endDate,
    double? hourlyTotalNotCharged,
    double? hourlyTotalNotChargedExclVat,
    int? km,
    double? kmPrice,
    double? kmPriceExclVat,
    double? kmTotal,
    double? kmTotalExclVat,
    DateTime? startDate,
    double? timeAmount,
    double? timeTotal,
    double? timeTotalExclVat,
    double? total,
    double? totalExclVat,
    double? totalVat,
    enums.BillingPriceUnit? unit,
    double? unitPrice,
    double? unitPriceExclVat,
    double? vatRate,
  }) {
    return BillingPrice(
      amount: amount ?? this.amount,
      changeFromHourlyToDaily:
          changeFromHourlyToDaily ?? this.changeFromHourlyToDaily,
      endDate: endDate ?? this.endDate,
      hourlyTotalNotCharged:
          hourlyTotalNotCharged ?? this.hourlyTotalNotCharged,
      hourlyTotalNotChargedExclVat:
          hourlyTotalNotChargedExclVat ?? this.hourlyTotalNotChargedExclVat,
      km: km ?? this.km,
      kmPrice: kmPrice ?? this.kmPrice,
      kmPriceExclVat: kmPriceExclVat ?? this.kmPriceExclVat,
      kmTotal: kmTotal ?? this.kmTotal,
      kmTotalExclVat: kmTotalExclVat ?? this.kmTotalExclVat,
      startDate: startDate ?? this.startDate,
      timeAmount: timeAmount ?? this.timeAmount,
      timeTotal: timeTotal ?? this.timeTotal,
      timeTotalExclVat: timeTotalExclVat ?? this.timeTotalExclVat,
      total: total ?? this.total,
      totalExclVat: totalExclVat ?? this.totalExclVat,
      totalVat: totalVat ?? this.totalVat,
      unit: unit ?? this.unit,
      unitPrice: unitPrice ?? this.unitPrice,
      unitPriceExclVat: unitPriceExclVat ?? this.unitPriceExclVat,
      vatRate: vatRate ?? this.vatRate,
    );
  }

  BillingPrice copyWithWrapped({
    Wrapped<int?>? amount,
    Wrapped<bool?>? changeFromHourlyToDaily,
    Wrapped<DateTime?>? endDate,
    Wrapped<double?>? hourlyTotalNotCharged,
    Wrapped<double?>? hourlyTotalNotChargedExclVat,
    Wrapped<int?>? km,
    Wrapped<double?>? kmPrice,
    Wrapped<double?>? kmPriceExclVat,
    Wrapped<double?>? kmTotal,
    Wrapped<double?>? kmTotalExclVat,
    Wrapped<DateTime?>? startDate,
    Wrapped<double?>? timeAmount,
    Wrapped<double?>? timeTotal,
    Wrapped<double?>? timeTotalExclVat,
    Wrapped<double?>? total,
    Wrapped<double?>? totalExclVat,
    Wrapped<double?>? totalVat,
    Wrapped<enums.BillingPriceUnit?>? unit,
    Wrapped<double?>? unitPrice,
    Wrapped<double?>? unitPriceExclVat,
    Wrapped<double?>? vatRate,
  }) {
    return BillingPrice(
      amount: (amount != null ? amount.value : this.amount),
      changeFromHourlyToDaily: (changeFromHourlyToDaily != null
          ? changeFromHourlyToDaily.value
          : this.changeFromHourlyToDaily),
      endDate: (endDate != null ? endDate.value : this.endDate),
      hourlyTotalNotCharged: (hourlyTotalNotCharged != null
          ? hourlyTotalNotCharged.value
          : this.hourlyTotalNotCharged),
      hourlyTotalNotChargedExclVat: (hourlyTotalNotChargedExclVat != null
          ? hourlyTotalNotChargedExclVat.value
          : this.hourlyTotalNotChargedExclVat),
      km: (km != null ? km.value : this.km),
      kmPrice: (kmPrice != null ? kmPrice.value : this.kmPrice),
      kmPriceExclVat: (kmPriceExclVat != null
          ? kmPriceExclVat.value
          : this.kmPriceExclVat),
      kmTotal: (kmTotal != null ? kmTotal.value : this.kmTotal),
      kmTotalExclVat: (kmTotalExclVat != null
          ? kmTotalExclVat.value
          : this.kmTotalExclVat),
      startDate: (startDate != null ? startDate.value : this.startDate),
      timeAmount: (timeAmount != null ? timeAmount.value : this.timeAmount),
      timeTotal: (timeTotal != null ? timeTotal.value : this.timeTotal),
      timeTotalExclVat: (timeTotalExclVat != null
          ? timeTotalExclVat.value
          : this.timeTotalExclVat),
      total: (total != null ? total.value : this.total),
      totalExclVat: (totalExclVat != null
          ? totalExclVat.value
          : this.totalExclVat),
      totalVat: (totalVat != null ? totalVat.value : this.totalVat),
      unit: (unit != null ? unit.value : this.unit),
      unitPrice: (unitPrice != null ? unitPrice.value : this.unitPrice),
      unitPriceExclVat: (unitPriceExclVat != null
          ? unitPriceExclVat.value
          : this.unitPriceExclVat),
      vatRate: (vatRate != null ? vatRate.value : this.vatRate),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BillingPriceResponse {
  const BillingPriceResponse({
    required this.billingPrice,
    required this.dayPrice,
    required this.hourPrice,
    required this.kmPrice,
  });

  factory BillingPriceResponse.fromJson(Map<String, dynamic> json) =>
      _$BillingPriceResponseFromJson(json);

  static const toJsonFactory = _$BillingPriceResponseToJson;
  Map<String, dynamic> toJson() => _$BillingPriceResponseToJson(this);

  @JsonKey(name: 'billingPrice')
  final BillingPrice billingPrice;
  @JsonKey(name: 'dayPrice')
  final double dayPrice;
  @JsonKey(name: 'hourPrice')
  final double hourPrice;
  @JsonKey(name: 'kmPrice')
  final double kmPrice;
  static const fromJsonFactory = _$BillingPriceResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BillingPriceResponse &&
            (identical(other.billingPrice, billingPrice) ||
                const DeepCollectionEquality().equals(
                  other.billingPrice,
                  billingPrice,
                )) &&
            (identical(other.dayPrice, dayPrice) ||
                const DeepCollectionEquality().equals(
                  other.dayPrice,
                  dayPrice,
                )) &&
            (identical(other.hourPrice, hourPrice) ||
                const DeepCollectionEquality().equals(
                  other.hourPrice,
                  hourPrice,
                )) &&
            (identical(other.kmPrice, kmPrice) ||
                const DeepCollectionEquality().equals(other.kmPrice, kmPrice)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(billingPrice) ^
      const DeepCollectionEquality().hash(dayPrice) ^
      const DeepCollectionEquality().hash(hourPrice) ^
      const DeepCollectionEquality().hash(kmPrice) ^
      runtimeType.hashCode;
}

extension $BillingPriceResponseExtension on BillingPriceResponse {
  BillingPriceResponse copyWith({
    BillingPrice? billingPrice,
    double? dayPrice,
    double? hourPrice,
    double? kmPrice,
  }) {
    return BillingPriceResponse(
      billingPrice: billingPrice ?? this.billingPrice,
      dayPrice: dayPrice ?? this.dayPrice,
      hourPrice: hourPrice ?? this.hourPrice,
      kmPrice: kmPrice ?? this.kmPrice,
    );
  }

  BillingPriceResponse copyWithWrapped({
    Wrapped<BillingPrice>? billingPrice,
    Wrapped<double>? dayPrice,
    Wrapped<double>? hourPrice,
    Wrapped<double>? kmPrice,
  }) {
    return BillingPriceResponse(
      billingPrice: (billingPrice != null
          ? billingPrice.value
          : this.billingPrice),
      dayPrice: (dayPrice != null ? dayPrice.value : this.dayPrice),
      hourPrice: (hourPrice != null ? hourPrice.value : this.hourPrice),
      kmPrice: (kmPrice != null ? kmPrice.value : this.kmPrice),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BluetoothToken {
  const BluetoothToken({
    this.deviceId,
    this.encodedToken,
    this.end,
    this.sessionToken,
    this.start,
    this.tokenChunks,
  });

  factory BluetoothToken.fromJson(Map<String, dynamic> json) =>
      _$BluetoothTokenFromJson(json);

  static const toJsonFactory = _$BluetoothTokenToJson;
  Map<String, dynamic> toJson() => _$BluetoothTokenToJson(this);

  @JsonKey(name: 'deviceId')
  final String? deviceId;
  @JsonKey(name: 'encodedToken')
  final String? encodedToken;
  @JsonKey(name: 'end')
  final DateTime? end;
  @JsonKey(name: 'sessionToken')
  final String? sessionToken;
  @JsonKey(name: 'start')
  final DateTime? start;
  @JsonKey(name: 'tokenChunks', defaultValue: <List<String?>>[])
  final List<List<String?>>? tokenChunks;
  static const fromJsonFactory = _$BluetoothTokenFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BluetoothToken &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality().equals(
                  other.deviceId,
                  deviceId,
                )) &&
            (identical(other.encodedToken, encodedToken) ||
                const DeepCollectionEquality().equals(
                  other.encodedToken,
                  encodedToken,
                )) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(other.sessionToken, sessionToken) ||
                const DeepCollectionEquality().equals(
                  other.sessionToken,
                  sessionToken,
                )) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.tokenChunks, tokenChunks) ||
                const DeepCollectionEquality().equals(
                  other.tokenChunks,
                  tokenChunks,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(encodedToken) ^
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(sessionToken) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(tokenChunks) ^
      runtimeType.hashCode;
}

extension $BluetoothTokenExtension on BluetoothToken {
  BluetoothToken copyWith({
    String? deviceId,
    String? encodedToken,
    DateTime? end,
    String? sessionToken,
    DateTime? start,
    List<List<String?>>? tokenChunks,
  }) {
    return BluetoothToken(
      deviceId: deviceId ?? this.deviceId,
      encodedToken: encodedToken ?? this.encodedToken,
      end: end ?? this.end,
      sessionToken: sessionToken ?? this.sessionToken,
      start: start ?? this.start,
      tokenChunks: tokenChunks ?? this.tokenChunks,
    );
  }

  BluetoothToken copyWithWrapped({
    Wrapped<String?>? deviceId,
    Wrapped<String?>? encodedToken,
    Wrapped<DateTime?>? end,
    Wrapped<String?>? sessionToken,
    Wrapped<DateTime?>? start,
    Wrapped<List<List<String?>>?>? tokenChunks,
  }) {
    return BluetoothToken(
      deviceId: (deviceId != null ? deviceId.value : this.deviceId),
      encodedToken: (encodedToken != null
          ? encodedToken.value
          : this.encodedToken),
      end: (end != null ? end.value : this.end),
      sessionToken: (sessionToken != null
          ? sessionToken.value
          : this.sessionToken),
      start: (start != null ? start.value : this.start),
      tokenChunks: (tokenChunks != null ? tokenChunks.value : this.tokenChunks),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BodyStyle {
  const BodyStyle({this.description, this.id});

  factory BodyStyle.fromJson(Map<String, dynamic> json) =>
      _$BodyStyleFromJson(json);

  static const toJsonFactory = _$BodyStyleToJson;
  Map<String, dynamic> toJson() => _$BodyStyleToJson(this);

  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$BodyStyleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BodyStyle &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $BodyStyleExtension on BodyStyle {
  BodyStyle copyWith({String? description, String? id}) {
    return BodyStyle(
      description: description ?? this.description,
      id: id ?? this.id,
    );
  }

  BodyStyle copyWithWrapped({
    Wrapped<String?>? description,
    Wrapped<String?>? id,
  }) {
    return BodyStyle(
      description: (description != null ? description.value : this.description),
      id: (id != null ? id.value : this.id),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BodyStylePage {
  const BodyStylePage({this.bodyStyles});

  factory BodyStylePage.fromJson(Map<String, dynamic> json) =>
      _$BodyStylePageFromJson(json);

  static const toJsonFactory = _$BodyStylePageToJson;
  Map<String, dynamic> toJson() => _$BodyStylePageToJson(this);

  @JsonKey(name: 'bodyStyles', defaultValue: <BodyStyle>[])
  final List<BodyStyle>? bodyStyles;
  static const fromJsonFactory = _$BodyStylePageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BodyStylePage &&
            (identical(other.bodyStyles, bodyStyles) ||
                const DeepCollectionEquality().equals(
                  other.bodyStyles,
                  bodyStyles,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bodyStyles) ^ runtimeType.hashCode;
}

extension $BodyStylePageExtension on BodyStylePage {
  BodyStylePage copyWith({List<BodyStyle>? bodyStyles}) {
    return BodyStylePage(bodyStyles: bodyStyles ?? this.bodyStyles);
  }

  BodyStylePage copyWithWrapped({Wrapped<List<BodyStyle>?>? bodyStyles}) {
    return BodyStylePage(
      bodyStyles: (bodyStyles != null ? bodyStyles.value : this.bodyStyles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Booking {
  const Booking({
    this.adminComments,
    this.billingPrice,
    this.canBeStarted,
    this.cancelDate,
    this.cancelReason,
    this.clientId,
    this.comments,
    this.dateCreated,
    this.id,
    this.invoiceStatus,
    this.lastUpdated,
    this.nextPossibleStatuses,
    this.originalEndDate,
    this.period,
    this.status,
    this.userId,
    this.vehicle,
    this.vehicleUsage,
  });

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  static const toJsonFactory = _$BookingToJson;
  Map<String, dynamic> toJson() => _$BookingToJson(this);

  @JsonKey(name: 'adminComments')
  final String? adminComments;
  @JsonKey(name: 'billingPrice')
  final BillingPrice? billingPrice;
  @JsonKey(name: 'canBeStarted')
  final bool? canBeStarted;
  @JsonKey(name: 'cancelDate')
  final DateTime? cancelDate;
  @JsonKey(name: 'cancelReason')
  final String? cancelReason;
  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'dateCreated')
  final DateTime? dateCreated;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'invoiceStatus',
    toJson: bookingInvoiceStatusNullableToJson,
    fromJson: bookingInvoiceStatusNullableFromJson,
  )
  final enums.BookingInvoiceStatus? invoiceStatus;
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @JsonKey(
    name: 'nextPossibleStatuses',
    toJson: bookingNextPossibleStatusesListToJson,
    fromJson: bookingNextPossibleStatusesListFromJson,
  )
  final List<enums.BookingNextPossibleStatuses>? nextPossibleStatuses;
  @JsonKey(name: 'originalEndDate')
  final DateTime? originalEndDate;
  @JsonKey(name: 'period')
  final Period? period;
  @JsonKey(
    name: 'status',
    toJson: bookingStatusNullableToJson,
    fromJson: bookingStatusNullableFromJson,
  )
  final enums.BookingStatus? status;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  @JsonKey(name: 'vehicleUsage')
  final VehicleUsage? vehicleUsage;
  static const fromJsonFactory = _$BookingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Booking &&
            (identical(other.adminComments, adminComments) ||
                const DeepCollectionEquality().equals(
                  other.adminComments,
                  adminComments,
                )) &&
            (identical(other.billingPrice, billingPrice) ||
                const DeepCollectionEquality().equals(
                  other.billingPrice,
                  billingPrice,
                )) &&
            (identical(other.canBeStarted, canBeStarted) ||
                const DeepCollectionEquality().equals(
                  other.canBeStarted,
                  canBeStarted,
                )) &&
            (identical(other.cancelDate, cancelDate) ||
                const DeepCollectionEquality().equals(
                  other.cancelDate,
                  cancelDate,
                )) &&
            (identical(other.cancelReason, cancelReason) ||
                const DeepCollectionEquality().equals(
                  other.cancelReason,
                  cancelReason,
                )) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality().equals(
                  other.clientId,
                  clientId,
                )) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality().equals(
                  other.comments,
                  comments,
                )) &&
            (identical(other.dateCreated, dateCreated) ||
                const DeepCollectionEquality().equals(
                  other.dateCreated,
                  dateCreated,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                const DeepCollectionEquality().equals(
                  other.invoiceStatus,
                  invoiceStatus,
                )) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdated,
                  lastUpdated,
                )) &&
            (identical(other.nextPossibleStatuses, nextPossibleStatuses) ||
                const DeepCollectionEquality().equals(
                  other.nextPossibleStatuses,
                  nextPossibleStatuses,
                )) &&
            (identical(other.originalEndDate, originalEndDate) ||
                const DeepCollectionEquality().equals(
                  other.originalEndDate,
                  originalEndDate,
                )) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(
                  other.vehicle,
                  vehicle,
                )) &&
            (identical(other.vehicleUsage, vehicleUsage) ||
                const DeepCollectionEquality().equals(
                  other.vehicleUsage,
                  vehicleUsage,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(adminComments) ^
      const DeepCollectionEquality().hash(billingPrice) ^
      const DeepCollectionEquality().hash(canBeStarted) ^
      const DeepCollectionEquality().hash(cancelDate) ^
      const DeepCollectionEquality().hash(cancelReason) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(dateCreated) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(invoiceStatus) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash(nextPossibleStatuses) ^
      const DeepCollectionEquality().hash(originalEndDate) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(vehicleUsage) ^
      runtimeType.hashCode;
}

extension $BookingExtension on Booking {
  Booking copyWith({
    String? adminComments,
    BillingPrice? billingPrice,
    bool? canBeStarted,
    DateTime? cancelDate,
    String? cancelReason,
    String? clientId,
    String? comments,
    DateTime? dateCreated,
    String? id,
    enums.BookingInvoiceStatus? invoiceStatus,
    DateTime? lastUpdated,
    List<enums.BookingNextPossibleStatuses>? nextPossibleStatuses,
    DateTime? originalEndDate,
    Period? period,
    enums.BookingStatus? status,
    String? userId,
    Vehicle? vehicle,
    VehicleUsage? vehicleUsage,
  }) {
    return Booking(
      adminComments: adminComments ?? this.adminComments,
      billingPrice: billingPrice ?? this.billingPrice,
      canBeStarted: canBeStarted ?? this.canBeStarted,
      cancelDate: cancelDate ?? this.cancelDate,
      cancelReason: cancelReason ?? this.cancelReason,
      clientId: clientId ?? this.clientId,
      comments: comments ?? this.comments,
      dateCreated: dateCreated ?? this.dateCreated,
      id: id ?? this.id,
      invoiceStatus: invoiceStatus ?? this.invoiceStatus,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      nextPossibleStatuses: nextPossibleStatuses ?? this.nextPossibleStatuses,
      originalEndDate: originalEndDate ?? this.originalEndDate,
      period: period ?? this.period,
      status: status ?? this.status,
      userId: userId ?? this.userId,
      vehicle: vehicle ?? this.vehicle,
      vehicleUsage: vehicleUsage ?? this.vehicleUsage,
    );
  }

  Booking copyWithWrapped({
    Wrapped<String?>? adminComments,
    Wrapped<BillingPrice?>? billingPrice,
    Wrapped<bool?>? canBeStarted,
    Wrapped<DateTime?>? cancelDate,
    Wrapped<String?>? cancelReason,
    Wrapped<String?>? clientId,
    Wrapped<String?>? comments,
    Wrapped<DateTime?>? dateCreated,
    Wrapped<String?>? id,
    Wrapped<enums.BookingInvoiceStatus?>? invoiceStatus,
    Wrapped<DateTime?>? lastUpdated,
    Wrapped<List<enums.BookingNextPossibleStatuses>?>? nextPossibleStatuses,
    Wrapped<DateTime?>? originalEndDate,
    Wrapped<Period?>? period,
    Wrapped<enums.BookingStatus?>? status,
    Wrapped<String?>? userId,
    Wrapped<Vehicle?>? vehicle,
    Wrapped<VehicleUsage?>? vehicleUsage,
  }) {
    return Booking(
      adminComments: (adminComments != null
          ? adminComments.value
          : this.adminComments),
      billingPrice: (billingPrice != null
          ? billingPrice.value
          : this.billingPrice),
      canBeStarted: (canBeStarted != null
          ? canBeStarted.value
          : this.canBeStarted),
      cancelDate: (cancelDate != null ? cancelDate.value : this.cancelDate),
      cancelReason: (cancelReason != null
          ? cancelReason.value
          : this.cancelReason),
      clientId: (clientId != null ? clientId.value : this.clientId),
      comments: (comments != null ? comments.value : this.comments),
      dateCreated: (dateCreated != null ? dateCreated.value : this.dateCreated),
      id: (id != null ? id.value : this.id),
      invoiceStatus: (invoiceStatus != null
          ? invoiceStatus.value
          : this.invoiceStatus),
      lastUpdated: (lastUpdated != null ? lastUpdated.value : this.lastUpdated),
      nextPossibleStatuses: (nextPossibleStatuses != null
          ? nextPossibleStatuses.value
          : this.nextPossibleStatuses),
      originalEndDate: (originalEndDate != null
          ? originalEndDate.value
          : this.originalEndDate),
      period: (period != null ? period.value : this.period),
      status: (status != null ? status.value : this.status),
      userId: (userId != null ? userId.value : this.userId),
      vehicle: (vehicle != null ? vehicle.value : this.vehicle),
      vehicleUsage: (vehicleUsage != null
          ? vehicleUsage.value
          : this.vehicleUsage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BookingPrice {
  const BookingPrice({
    required this.dayPrice,
    required this.hourPrice,
    required this.kmPrice,
  });

  factory BookingPrice.fromJson(Map<String, dynamic> json) =>
      _$BookingPriceFromJson(json);

  static const toJsonFactory = _$BookingPriceToJson;
  Map<String, dynamic> toJson() => _$BookingPriceToJson(this);

  @JsonKey(name: 'dayPrice')
  final double dayPrice;
  @JsonKey(name: 'hourPrice')
  final double hourPrice;
  @JsonKey(name: 'kmPrice')
  final double kmPrice;
  static const fromJsonFactory = _$BookingPriceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BookingPrice &&
            (identical(other.dayPrice, dayPrice) ||
                const DeepCollectionEquality().equals(
                  other.dayPrice,
                  dayPrice,
                )) &&
            (identical(other.hourPrice, hourPrice) ||
                const DeepCollectionEquality().equals(
                  other.hourPrice,
                  hourPrice,
                )) &&
            (identical(other.kmPrice, kmPrice) ||
                const DeepCollectionEquality().equals(other.kmPrice, kmPrice)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dayPrice) ^
      const DeepCollectionEquality().hash(hourPrice) ^
      const DeepCollectionEquality().hash(kmPrice) ^
      runtimeType.hashCode;
}

extension $BookingPriceExtension on BookingPrice {
  BookingPrice copyWith({
    double? dayPrice,
    double? hourPrice,
    double? kmPrice,
  }) {
    return BookingPrice(
      dayPrice: dayPrice ?? this.dayPrice,
      hourPrice: hourPrice ?? this.hourPrice,
      kmPrice: kmPrice ?? this.kmPrice,
    );
  }

  BookingPrice copyWithWrapped({
    Wrapped<double>? dayPrice,
    Wrapped<double>? hourPrice,
    Wrapped<double>? kmPrice,
  }) {
    return BookingPrice(
      dayPrice: (dayPrice != null ? dayPrice.value : this.dayPrice),
      hourPrice: (hourPrice != null ? hourPrice.value : this.hourPrice),
      kmPrice: (kmPrice != null ? kmPrice.value : this.kmPrice),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BookingsPage {
  const BookingsPage({this.bookings});

  factory BookingsPage.fromJson(Map<String, dynamic> json) =>
      _$BookingsPageFromJson(json);

  static const toJsonFactory = _$BookingsPageToJson;
  Map<String, dynamic> toJson() => _$BookingsPageToJson(this);

  @JsonKey(name: 'bookings', defaultValue: <Booking>[])
  final List<Booking>? bookings;
  static const fromJsonFactory = _$BookingsPageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BookingsPage &&
            (identical(other.bookings, bookings) ||
                const DeepCollectionEquality().equals(
                  other.bookings,
                  bookings,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bookings) ^ runtimeType.hashCode;
}

extension $BookingsPageExtension on BookingsPage {
  BookingsPage copyWith({List<Booking>? bookings}) {
    return BookingsPage(bookings: bookings ?? this.bookings);
  }

  BookingsPage copyWithWrapped({Wrapped<List<Booking>?>? bookings}) {
    return BookingsPage(
      bookings: (bookings != null ? bookings.value : this.bookings),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CancelBookingRequest {
  const CancelBookingRequest({this.bookingId, this.reason});

  factory CancelBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelBookingRequestFromJson(json);

  static const toJsonFactory = _$CancelBookingRequestToJson;
  Map<String, dynamic> toJson() => _$CancelBookingRequestToJson(this);

  @JsonKey(name: 'bookingId')
  final String? bookingId;
  @JsonKey(name: 'reason')
  final String? reason;
  static const fromJsonFactory = _$CancelBookingRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CancelBookingRequest &&
            (identical(other.bookingId, bookingId) ||
                const DeepCollectionEquality().equals(
                  other.bookingId,
                  bookingId,
                )) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bookingId) ^
      const DeepCollectionEquality().hash(reason) ^
      runtimeType.hashCode;
}

extension $CancelBookingRequestExtension on CancelBookingRequest {
  CancelBookingRequest copyWith({String? bookingId, String? reason}) {
    return CancelBookingRequest(
      bookingId: bookingId ?? this.bookingId,
      reason: reason ?? this.reason,
    );
  }

  CancelBookingRequest copyWithWrapped({
    Wrapped<String?>? bookingId,
    Wrapped<String?>? reason,
  }) {
    return CancelBookingRequest(
      bookingId: (bookingId != null ? bookingId.value : this.bookingId),
      reason: (reason != null ? reason.value : this.reason),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeContractCommitmentHints {
  const ChangeContractCommitmentHints({
    this.actionAllowed,
    this.canDecrease,
    this.canIncrease,
    this.changeOption,
    this.currentCommitmentAmountInclVat,
    this.decreaseBlockedReason,
    this.earliestDecreaseDate,
    this.earliestIncreaseDate,
    this.increaseBlockedReason,
  });

  factory ChangeContractCommitmentHints.fromJson(Map<String, dynamic> json) =>
      _$ChangeContractCommitmentHintsFromJson(json);

  static const toJsonFactory = _$ChangeContractCommitmentHintsToJson;
  Map<String, dynamic> toJson() => _$ChangeContractCommitmentHintsToJson(this);

  @JsonKey(name: 'actionAllowed')
  final bool? actionAllowed;
  @JsonKey(name: 'canDecrease')
  final bool? canDecrease;
  @JsonKey(name: 'canIncrease')
  final bool? canIncrease;
  @JsonKey(
    name: 'changeOption',
    toJson: commitmentChangeOptionNullableToJson,
    fromJson: commitmentChangeOptionNullableFromJson,
  )
  final enums.CommitmentChangeOption? changeOption;
  @JsonKey(name: 'currentCommitmentAmountInclVat')
  final double? currentCommitmentAmountInclVat;
  @JsonKey(
    name: 'decreaseBlockedReason',
    toJson: validationErrorCodeNullableToJson,
    fromJson: validationErrorCodeNullableFromJson,
  )
  final enums.ValidationErrorCode? decreaseBlockedReason;
  @JsonKey(name: 'earliestDecreaseDate', toJson: _dateToJson)
  final DateTime? earliestDecreaseDate;
  @JsonKey(name: 'earliestIncreaseDate', toJson: _dateToJson)
  final DateTime? earliestIncreaseDate;
  @JsonKey(
    name: 'increaseBlockedReason',
    toJson: validationErrorCodeNullableToJson,
    fromJson: validationErrorCodeNullableFromJson,
  )
  final enums.ValidationErrorCode? increaseBlockedReason;
  static const fromJsonFactory = _$ChangeContractCommitmentHintsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangeContractCommitmentHints &&
            (identical(other.actionAllowed, actionAllowed) ||
                const DeepCollectionEquality().equals(
                  other.actionAllowed,
                  actionAllowed,
                )) &&
            (identical(other.canDecrease, canDecrease) ||
                const DeepCollectionEquality().equals(
                  other.canDecrease,
                  canDecrease,
                )) &&
            (identical(other.canIncrease, canIncrease) ||
                const DeepCollectionEquality().equals(
                  other.canIncrease,
                  canIncrease,
                )) &&
            (identical(other.changeOption, changeOption) ||
                const DeepCollectionEquality().equals(
                  other.changeOption,
                  changeOption,
                )) &&
            (identical(
                  other.currentCommitmentAmountInclVat,
                  currentCommitmentAmountInclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.currentCommitmentAmountInclVat,
                  currentCommitmentAmountInclVat,
                )) &&
            (identical(other.decreaseBlockedReason, decreaseBlockedReason) ||
                const DeepCollectionEquality().equals(
                  other.decreaseBlockedReason,
                  decreaseBlockedReason,
                )) &&
            (identical(other.earliestDecreaseDate, earliestDecreaseDate) ||
                const DeepCollectionEquality().equals(
                  other.earliestDecreaseDate,
                  earliestDecreaseDate,
                )) &&
            (identical(other.earliestIncreaseDate, earliestIncreaseDate) ||
                const DeepCollectionEquality().equals(
                  other.earliestIncreaseDate,
                  earliestIncreaseDate,
                )) &&
            (identical(other.increaseBlockedReason, increaseBlockedReason) ||
                const DeepCollectionEquality().equals(
                  other.increaseBlockedReason,
                  increaseBlockedReason,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actionAllowed) ^
      const DeepCollectionEquality().hash(canDecrease) ^
      const DeepCollectionEquality().hash(canIncrease) ^
      const DeepCollectionEquality().hash(changeOption) ^
      const DeepCollectionEquality().hash(currentCommitmentAmountInclVat) ^
      const DeepCollectionEquality().hash(decreaseBlockedReason) ^
      const DeepCollectionEquality().hash(earliestDecreaseDate) ^
      const DeepCollectionEquality().hash(earliestIncreaseDate) ^
      const DeepCollectionEquality().hash(increaseBlockedReason) ^
      runtimeType.hashCode;
}

extension $ChangeContractCommitmentHintsExtension
    on ChangeContractCommitmentHints {
  ChangeContractCommitmentHints copyWith({
    bool? actionAllowed,
    bool? canDecrease,
    bool? canIncrease,
    enums.CommitmentChangeOption? changeOption,
    double? currentCommitmentAmountInclVat,
    enums.ValidationErrorCode? decreaseBlockedReason,
    DateTime? earliestDecreaseDate,
    DateTime? earliestIncreaseDate,
    enums.ValidationErrorCode? increaseBlockedReason,
  }) {
    return ChangeContractCommitmentHints(
      actionAllowed: actionAllowed ?? this.actionAllowed,
      canDecrease: canDecrease ?? this.canDecrease,
      canIncrease: canIncrease ?? this.canIncrease,
      changeOption: changeOption ?? this.changeOption,
      currentCommitmentAmountInclVat:
          currentCommitmentAmountInclVat ?? this.currentCommitmentAmountInclVat,
      decreaseBlockedReason:
          decreaseBlockedReason ?? this.decreaseBlockedReason,
      earliestDecreaseDate: earliestDecreaseDate ?? this.earliestDecreaseDate,
      earliestIncreaseDate: earliestIncreaseDate ?? this.earliestIncreaseDate,
      increaseBlockedReason:
          increaseBlockedReason ?? this.increaseBlockedReason,
    );
  }

  ChangeContractCommitmentHints copyWithWrapped({
    Wrapped<bool?>? actionAllowed,
    Wrapped<bool?>? canDecrease,
    Wrapped<bool?>? canIncrease,
    Wrapped<enums.CommitmentChangeOption?>? changeOption,
    Wrapped<double?>? currentCommitmentAmountInclVat,
    Wrapped<enums.ValidationErrorCode?>? decreaseBlockedReason,
    Wrapped<DateTime?>? earliestDecreaseDate,
    Wrapped<DateTime?>? earliestIncreaseDate,
    Wrapped<enums.ValidationErrorCode?>? increaseBlockedReason,
  }) {
    return ChangeContractCommitmentHints(
      actionAllowed: (actionAllowed != null
          ? actionAllowed.value
          : this.actionAllowed),
      canDecrease: (canDecrease != null ? canDecrease.value : this.canDecrease),
      canIncrease: (canIncrease != null ? canIncrease.value : this.canIncrease),
      changeOption: (changeOption != null
          ? changeOption.value
          : this.changeOption),
      currentCommitmentAmountInclVat: (currentCommitmentAmountInclVat != null
          ? currentCommitmentAmountInclVat.value
          : this.currentCommitmentAmountInclVat),
      decreaseBlockedReason: (decreaseBlockedReason != null
          ? decreaseBlockedReason.value
          : this.decreaseBlockedReason),
      earliestDecreaseDate: (earliestDecreaseDate != null
          ? earliestDecreaseDate.value
          : this.earliestDecreaseDate),
      earliestIncreaseDate: (earliestIncreaseDate != null
          ? earliestIncreaseDate.value
          : this.earliestIncreaseDate),
      increaseBlockedReason: (increaseBlockedReason != null
          ? increaseBlockedReason.value
          : this.increaseBlockedReason),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeContractCommitmentHintsApiDataResponse {
  const ChangeContractCommitmentHintsApiDataResponse({this.data});

  factory ChangeContractCommitmentHintsApiDataResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ChangeContractCommitmentHintsApiDataResponseFromJson(json);

  static const toJsonFactory =
      _$ChangeContractCommitmentHintsApiDataResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ChangeContractCommitmentHintsApiDataResponseToJson(this);

  @JsonKey(name: 'data')
  final ChangeContractCommitmentHints? data;
  static const fromJsonFactory =
      _$ChangeContractCommitmentHintsApiDataResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangeContractCommitmentHintsApiDataResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $ChangeContractCommitmentHintsApiDataResponseExtension
    on ChangeContractCommitmentHintsApiDataResponse {
  ChangeContractCommitmentHintsApiDataResponse copyWith({
    ChangeContractCommitmentHints? data,
  }) {
    return ChangeContractCommitmentHintsApiDataResponse(
      data: data ?? this.data,
    );
  }

  ChangeContractCommitmentHintsApiDataResponse copyWithWrapped({
    Wrapped<ChangeContractCommitmentHints?>? data,
  }) {
    return ChangeContractCommitmentHintsApiDataResponse(
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeContractCommitmentRequest {
  const ChangeContractCommitmentRequest({
    this.changeDate,
    this.commitmentAmountInclVat,
    this.memo,
  });

  factory ChangeContractCommitmentRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeContractCommitmentRequestFromJson(json);

  static const toJsonFactory = _$ChangeContractCommitmentRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ChangeContractCommitmentRequestToJson(this);

  @JsonKey(name: 'changeDate', toJson: _dateToJson)
  final DateTime? changeDate;
  @JsonKey(name: 'commitmentAmountInclVat')
  final double? commitmentAmountInclVat;
  @JsonKey(name: 'memo')
  final String? memo;
  static const fromJsonFactory = _$ChangeContractCommitmentRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangeContractCommitmentRequest &&
            (identical(other.changeDate, changeDate) ||
                const DeepCollectionEquality().equals(
                  other.changeDate,
                  changeDate,
                )) &&
            (identical(
                  other.commitmentAmountInclVat,
                  commitmentAmountInclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.commitmentAmountInclVat,
                  commitmentAmountInclVat,
                )) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(changeDate) ^
      const DeepCollectionEquality().hash(commitmentAmountInclVat) ^
      const DeepCollectionEquality().hash(memo) ^
      runtimeType.hashCode;
}

extension $ChangeContractCommitmentRequestExtension
    on ChangeContractCommitmentRequest {
  ChangeContractCommitmentRequest copyWith({
    DateTime? changeDate,
    double? commitmentAmountInclVat,
    String? memo,
  }) {
    return ChangeContractCommitmentRequest(
      changeDate: changeDate ?? this.changeDate,
      commitmentAmountInclVat:
          commitmentAmountInclVat ?? this.commitmentAmountInclVat,
      memo: memo ?? this.memo,
    );
  }

  ChangeContractCommitmentRequest copyWithWrapped({
    Wrapped<DateTime?>? changeDate,
    Wrapped<double?>? commitmentAmountInclVat,
    Wrapped<String?>? memo,
  }) {
    return ChangeContractCommitmentRequest(
      changeDate: (changeDate != null ? changeDate.value : this.changeDate),
      commitmentAmountInclVat: (commitmentAmountInclVat != null
          ? commitmentAmountInclVat.value
          : this.commitmentAmountInclVat),
      memo: (memo != null ? memo.value : this.memo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeContractFormulaHints {
  const ChangeContractFormulaHints({
    this.actionAllowed,
    this.currentCommitmentAmountInclVat,
    this.currentFormula,
    this.currentFormulaEnd,
    this.currentFormulaStart,
    this.hints,
    this.willOverrideFutureFormula,
  });

  factory ChangeContractFormulaHints.fromJson(Map<String, dynamic> json) =>
      _$ChangeContractFormulaHintsFromJson(json);

  static const toJsonFactory = _$ChangeContractFormulaHintsToJson;
  Map<String, dynamic> toJson() => _$ChangeContractFormulaHintsToJson(this);

  @JsonKey(name: 'actionAllowed')
  final bool? actionAllowed;
  @JsonKey(name: 'currentCommitmentAmountInclVat')
  final double? currentCommitmentAmountInclVat;
  @JsonKey(
    name: 'currentFormula',
    toJson: clientContractFormulaNullableToJson,
    fromJson: clientContractFormulaNullableFromJson,
  )
  final enums.ClientContractFormula? currentFormula;
  @JsonKey(name: 'currentFormulaEnd', toJson: _dateToJson)
  final DateTime? currentFormulaEnd;
  @JsonKey(name: 'currentFormulaStart', toJson: _dateToJson)
  final DateTime? currentFormulaStart;
  @JsonKey(name: 'hints', defaultValue: <ChangeToContractFormulaHint>[])
  final List<ChangeToContractFormulaHint>? hints;
  @JsonKey(name: 'willOverrideFutureFormula')
  final bool? willOverrideFutureFormula;
  static const fromJsonFactory = _$ChangeContractFormulaHintsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangeContractFormulaHints &&
            (identical(other.actionAllowed, actionAllowed) ||
                const DeepCollectionEquality().equals(
                  other.actionAllowed,
                  actionAllowed,
                )) &&
            (identical(
                  other.currentCommitmentAmountInclVat,
                  currentCommitmentAmountInclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.currentCommitmentAmountInclVat,
                  currentCommitmentAmountInclVat,
                )) &&
            (identical(other.currentFormula, currentFormula) ||
                const DeepCollectionEquality().equals(
                  other.currentFormula,
                  currentFormula,
                )) &&
            (identical(other.currentFormulaEnd, currentFormulaEnd) ||
                const DeepCollectionEquality().equals(
                  other.currentFormulaEnd,
                  currentFormulaEnd,
                )) &&
            (identical(other.currentFormulaStart, currentFormulaStart) ||
                const DeepCollectionEquality().equals(
                  other.currentFormulaStart,
                  currentFormulaStart,
                )) &&
            (identical(other.hints, hints) ||
                const DeepCollectionEquality().equals(other.hints, hints)) &&
            (identical(
                  other.willOverrideFutureFormula,
                  willOverrideFutureFormula,
                ) ||
                const DeepCollectionEquality().equals(
                  other.willOverrideFutureFormula,
                  willOverrideFutureFormula,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actionAllowed) ^
      const DeepCollectionEquality().hash(currentCommitmentAmountInclVat) ^
      const DeepCollectionEquality().hash(currentFormula) ^
      const DeepCollectionEquality().hash(currentFormulaEnd) ^
      const DeepCollectionEquality().hash(currentFormulaStart) ^
      const DeepCollectionEquality().hash(hints) ^
      const DeepCollectionEquality().hash(willOverrideFutureFormula) ^
      runtimeType.hashCode;
}

extension $ChangeContractFormulaHintsExtension on ChangeContractFormulaHints {
  ChangeContractFormulaHints copyWith({
    bool? actionAllowed,
    double? currentCommitmentAmountInclVat,
    enums.ClientContractFormula? currentFormula,
    DateTime? currentFormulaEnd,
    DateTime? currentFormulaStart,
    List<ChangeToContractFormulaHint>? hints,
    bool? willOverrideFutureFormula,
  }) {
    return ChangeContractFormulaHints(
      actionAllowed: actionAllowed ?? this.actionAllowed,
      currentCommitmentAmountInclVat:
          currentCommitmentAmountInclVat ?? this.currentCommitmentAmountInclVat,
      currentFormula: currentFormula ?? this.currentFormula,
      currentFormulaEnd: currentFormulaEnd ?? this.currentFormulaEnd,
      currentFormulaStart: currentFormulaStart ?? this.currentFormulaStart,
      hints: hints ?? this.hints,
      willOverrideFutureFormula:
          willOverrideFutureFormula ?? this.willOverrideFutureFormula,
    );
  }

  ChangeContractFormulaHints copyWithWrapped({
    Wrapped<bool?>? actionAllowed,
    Wrapped<double?>? currentCommitmentAmountInclVat,
    Wrapped<enums.ClientContractFormula?>? currentFormula,
    Wrapped<DateTime?>? currentFormulaEnd,
    Wrapped<DateTime?>? currentFormulaStart,
    Wrapped<List<ChangeToContractFormulaHint>?>? hints,
    Wrapped<bool?>? willOverrideFutureFormula,
  }) {
    return ChangeContractFormulaHints(
      actionAllowed: (actionAllowed != null
          ? actionAllowed.value
          : this.actionAllowed),
      currentCommitmentAmountInclVat: (currentCommitmentAmountInclVat != null
          ? currentCommitmentAmountInclVat.value
          : this.currentCommitmentAmountInclVat),
      currentFormula: (currentFormula != null
          ? currentFormula.value
          : this.currentFormula),
      currentFormulaEnd: (currentFormulaEnd != null
          ? currentFormulaEnd.value
          : this.currentFormulaEnd),
      currentFormulaStart: (currentFormulaStart != null
          ? currentFormulaStart.value
          : this.currentFormulaStart),
      hints: (hints != null ? hints.value : this.hints),
      willOverrideFutureFormula: (willOverrideFutureFormula != null
          ? willOverrideFutureFormula.value
          : this.willOverrideFutureFormula),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeContractFormulaHintsApiDataResponse {
  const ChangeContractFormulaHintsApiDataResponse({this.data});

  factory ChangeContractFormulaHintsApiDataResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ChangeContractFormulaHintsApiDataResponseFromJson(json);

  static const toJsonFactory =
      _$ChangeContractFormulaHintsApiDataResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ChangeContractFormulaHintsApiDataResponseToJson(this);

  @JsonKey(name: 'data')
  final ChangeContractFormulaHints? data;
  static const fromJsonFactory =
      _$ChangeContractFormulaHintsApiDataResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangeContractFormulaHintsApiDataResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $ChangeContractFormulaHintsApiDataResponseExtension
    on ChangeContractFormulaHintsApiDataResponse {
  ChangeContractFormulaHintsApiDataResponse copyWith({
    ChangeContractFormulaHints? data,
  }) {
    return ChangeContractFormulaHintsApiDataResponse(data: data ?? this.data);
  }

  ChangeContractFormulaHintsApiDataResponse copyWithWrapped({
    Wrapped<ChangeContractFormulaHints?>? data,
  }) {
    return ChangeContractFormulaHintsApiDataResponse(
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeContractFormulaRequest {
  const ChangeContractFormulaRequest({
    this.changeDate,
    this.commitmentAmountInclVat,
    this.formula,
    this.memo,
  });

  factory ChangeContractFormulaRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeContractFormulaRequestFromJson(json);

  static const toJsonFactory = _$ChangeContractFormulaRequestToJson;
  Map<String, dynamic> toJson() => _$ChangeContractFormulaRequestToJson(this);

  @JsonKey(name: 'changeDate', toJson: _dateToJson)
  final DateTime? changeDate;
  @JsonKey(name: 'commitmentAmountInclVat')
  final double? commitmentAmountInclVat;
  @JsonKey(
    name: 'formula',
    toJson: clientContractFormulaNullableToJson,
    fromJson: clientContractFormulaNullableFromJson,
  )
  final enums.ClientContractFormula? formula;
  @JsonKey(name: 'memo')
  final String? memo;
  static const fromJsonFactory = _$ChangeContractFormulaRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangeContractFormulaRequest &&
            (identical(other.changeDate, changeDate) ||
                const DeepCollectionEquality().equals(
                  other.changeDate,
                  changeDate,
                )) &&
            (identical(
                  other.commitmentAmountInclVat,
                  commitmentAmountInclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.commitmentAmountInclVat,
                  commitmentAmountInclVat,
                )) &&
            (identical(other.formula, formula) ||
                const DeepCollectionEquality().equals(
                  other.formula,
                  formula,
                )) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(changeDate) ^
      const DeepCollectionEquality().hash(commitmentAmountInclVat) ^
      const DeepCollectionEquality().hash(formula) ^
      const DeepCollectionEquality().hash(memo) ^
      runtimeType.hashCode;
}

extension $ChangeContractFormulaRequestExtension
    on ChangeContractFormulaRequest {
  ChangeContractFormulaRequest copyWith({
    DateTime? changeDate,
    double? commitmentAmountInclVat,
    enums.ClientContractFormula? formula,
    String? memo,
  }) {
    return ChangeContractFormulaRequest(
      changeDate: changeDate ?? this.changeDate,
      commitmentAmountInclVat:
          commitmentAmountInclVat ?? this.commitmentAmountInclVat,
      formula: formula ?? this.formula,
      memo: memo ?? this.memo,
    );
  }

  ChangeContractFormulaRequest copyWithWrapped({
    Wrapped<DateTime?>? changeDate,
    Wrapped<double?>? commitmentAmountInclVat,
    Wrapped<enums.ClientContractFormula?>? formula,
    Wrapped<String?>? memo,
  }) {
    return ChangeContractFormulaRequest(
      changeDate: (changeDate != null ? changeDate.value : this.changeDate),
      commitmentAmountInclVat: (commitmentAmountInclVat != null
          ? commitmentAmountInclVat.value
          : this.commitmentAmountInclVat),
      formula: (formula != null ? formula.value : this.formula),
      memo: (memo != null ? memo.value : this.memo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeLockRequest {
  const ChangeLockRequest({
    this.keyFobCheck,
    this.lockStatus,
    this.unlockDistanceCheck,
    this.userLocation,
  });

  factory ChangeLockRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeLockRequestFromJson(json);

  static const toJsonFactory = _$ChangeLockRequestToJson;
  Map<String, dynamic> toJson() => _$ChangeLockRequestToJson(this);

  @JsonKey(name: 'keyFobCheck')
  final bool? keyFobCheck;
  @JsonKey(
    name: 'lockStatus',
    toJson: changeLockRequestLockStatusNullableToJson,
    fromJson: changeLockRequestLockStatusNullableFromJson,
  )
  final enums.ChangeLockRequestLockStatus? lockStatus;
  @JsonKey(name: 'unlockDistanceCheck')
  final bool? unlockDistanceCheck;
  @JsonKey(name: 'userLocation')
  final LocationPosition? userLocation;
  static const fromJsonFactory = _$ChangeLockRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangeLockRequest &&
            (identical(other.keyFobCheck, keyFobCheck) ||
                const DeepCollectionEquality().equals(
                  other.keyFobCheck,
                  keyFobCheck,
                )) &&
            (identical(other.lockStatus, lockStatus) ||
                const DeepCollectionEquality().equals(
                  other.lockStatus,
                  lockStatus,
                )) &&
            (identical(other.unlockDistanceCheck, unlockDistanceCheck) ||
                const DeepCollectionEquality().equals(
                  other.unlockDistanceCheck,
                  unlockDistanceCheck,
                )) &&
            (identical(other.userLocation, userLocation) ||
                const DeepCollectionEquality().equals(
                  other.userLocation,
                  userLocation,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(keyFobCheck) ^
      const DeepCollectionEquality().hash(lockStatus) ^
      const DeepCollectionEquality().hash(unlockDistanceCheck) ^
      const DeepCollectionEquality().hash(userLocation) ^
      runtimeType.hashCode;
}

extension $ChangeLockRequestExtension on ChangeLockRequest {
  ChangeLockRequest copyWith({
    bool? keyFobCheck,
    enums.ChangeLockRequestLockStatus? lockStatus,
    bool? unlockDistanceCheck,
    LocationPosition? userLocation,
  }) {
    return ChangeLockRequest(
      keyFobCheck: keyFobCheck ?? this.keyFobCheck,
      lockStatus: lockStatus ?? this.lockStatus,
      unlockDistanceCheck: unlockDistanceCheck ?? this.unlockDistanceCheck,
      userLocation: userLocation ?? this.userLocation,
    );
  }

  ChangeLockRequest copyWithWrapped({
    Wrapped<bool?>? keyFobCheck,
    Wrapped<enums.ChangeLockRequestLockStatus?>? lockStatus,
    Wrapped<bool?>? unlockDistanceCheck,
    Wrapped<LocationPosition?>? userLocation,
  }) {
    return ChangeLockRequest(
      keyFobCheck: (keyFobCheck != null ? keyFobCheck.value : this.keyFobCheck),
      lockStatus: (lockStatus != null ? lockStatus.value : this.lockStatus),
      unlockDistanceCheck: (unlockDistanceCheck != null
          ? unlockDistanceCheck.value
          : this.unlockDistanceCheck),
      userLocation: (userLocation != null
          ? userLocation.value
          : this.userLocation),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeToContractFormulaHint {
  const ChangeToContractFormulaHint({
    this.changeOption,
    this.earliestChangeDate,
    this.targetFormula,
  });

  factory ChangeToContractFormulaHint.fromJson(Map<String, dynamic> json) =>
      _$ChangeToContractFormulaHintFromJson(json);

  static const toJsonFactory = _$ChangeToContractFormulaHintToJson;
  Map<String, dynamic> toJson() => _$ChangeToContractFormulaHintToJson(this);

  @JsonKey(
    name: 'changeOption',
    toJson: formulaChangeOptionNullableToJson,
    fromJson: formulaChangeOptionNullableFromJson,
  )
  final enums.FormulaChangeOption? changeOption;
  @JsonKey(name: 'earliestChangeDate', toJson: _dateToJson)
  final DateTime? earliestChangeDate;
  @JsonKey(
    name: 'targetFormula',
    toJson: clientContractFormulaNullableToJson,
    fromJson: clientContractFormulaNullableFromJson,
  )
  final enums.ClientContractFormula? targetFormula;
  static const fromJsonFactory = _$ChangeToContractFormulaHintFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangeToContractFormulaHint &&
            (identical(other.changeOption, changeOption) ||
                const DeepCollectionEquality().equals(
                  other.changeOption,
                  changeOption,
                )) &&
            (identical(other.earliestChangeDate, earliestChangeDate) ||
                const DeepCollectionEquality().equals(
                  other.earliestChangeDate,
                  earliestChangeDate,
                )) &&
            (identical(other.targetFormula, targetFormula) ||
                const DeepCollectionEquality().equals(
                  other.targetFormula,
                  targetFormula,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(changeOption) ^
      const DeepCollectionEquality().hash(earliestChangeDate) ^
      const DeepCollectionEquality().hash(targetFormula) ^
      runtimeType.hashCode;
}

extension $ChangeToContractFormulaHintExtension on ChangeToContractFormulaHint {
  ChangeToContractFormulaHint copyWith({
    enums.FormulaChangeOption? changeOption,
    DateTime? earliestChangeDate,
    enums.ClientContractFormula? targetFormula,
  }) {
    return ChangeToContractFormulaHint(
      changeOption: changeOption ?? this.changeOption,
      earliestChangeDate: earliestChangeDate ?? this.earliestChangeDate,
      targetFormula: targetFormula ?? this.targetFormula,
    );
  }

  ChangeToContractFormulaHint copyWithWrapped({
    Wrapped<enums.FormulaChangeOption?>? changeOption,
    Wrapped<DateTime?>? earliestChangeDate,
    Wrapped<enums.ClientContractFormula?>? targetFormula,
  }) {
    return ChangeToContractFormulaHint(
      changeOption: (changeOption != null
          ? changeOption.value
          : this.changeOption),
      earliestChangeDate: (earliestChangeDate != null
          ? earliestChangeDate.value
          : this.earliestChangeDate),
      targetFormula: (targetFormula != null
          ? targetFormula.value
          : this.targetFormula),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeVehicleUsageRequest {
  const ChangeVehicleUsageRequest({this.changeLockRequest});

  factory ChangeVehicleUsageRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeVehicleUsageRequestFromJson(json);

  static const toJsonFactory = _$ChangeVehicleUsageRequestToJson;
  Map<String, dynamic> toJson() => _$ChangeVehicleUsageRequestToJson(this);

  @JsonKey(name: 'changeLockRequest')
  final ChangeLockRequest? changeLockRequest;
  static const fromJsonFactory = _$ChangeVehicleUsageRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ChangeVehicleUsageRequest &&
            (identical(other.changeLockRequest, changeLockRequest) ||
                const DeepCollectionEquality().equals(
                  other.changeLockRequest,
                  changeLockRequest,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(changeLockRequest) ^
      runtimeType.hashCode;
}

extension $ChangeVehicleUsageRequestExtension on ChangeVehicleUsageRequest {
  ChangeVehicleUsageRequest copyWith({ChangeLockRequest? changeLockRequest}) {
    return ChangeVehicleUsageRequest(
      changeLockRequest: changeLockRequest ?? this.changeLockRequest,
    );
  }

  ChangeVehicleUsageRequest copyWithWrapped({
    Wrapped<ChangeLockRequest?>? changeLockRequest,
  }) {
    return ChangeVehicleUsageRequest(
      changeLockRequest: (changeLockRequest != null
          ? changeLockRequest.value
          : this.changeLockRequest),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Client {
  const Client({
    this.billingEmail,
    this.city,
    this.country,
    this.domainNamesForUserOnboarding,
    this.id,
    this.isDeliveringTrustForPrivateUse,
    this.isSuspended,
    this.name,
    this.nr,
    this.postalCode,
    this.street,
    this.suspensionReason,
    this.users,
    this.vat,
  });

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);

  static const toJsonFactory = _$ClientToJson;
  Map<String, dynamic> toJson() => _$ClientToJson(this);

  @JsonKey(name: 'billingEmail')
  final String? billingEmail;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'domainNamesForUserOnboarding')
  final String? domainNamesForUserOnboarding;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'isDeliveringTrustForPrivateUse')
  final bool? isDeliveringTrustForPrivateUse;
  @JsonKey(name: 'isSuspended')
  final bool? isSuspended;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'nr')
  final String? nr;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'street')
  final String? street;
  @JsonKey(name: 'suspensionReason')
  final String? suspensionReason;
  @JsonKey(name: 'users', defaultValue: <ContractUser>[])
  final List<ContractUser>? users;
  @JsonKey(name: 'vat')
  final String? vat;
  static const fromJsonFactory = _$ClientFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Client &&
            (identical(other.billingEmail, billingEmail) ||
                const DeepCollectionEquality().equals(
                  other.billingEmail,
                  billingEmail,
                )) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(
                  other.domainNamesForUserOnboarding,
                  domainNamesForUserOnboarding,
                ) ||
                const DeepCollectionEquality().equals(
                  other.domainNamesForUserOnboarding,
                  domainNamesForUserOnboarding,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(
                  other.isDeliveringTrustForPrivateUse,
                  isDeliveringTrustForPrivateUse,
                ) ||
                const DeepCollectionEquality().equals(
                  other.isDeliveringTrustForPrivateUse,
                  isDeliveringTrustForPrivateUse,
                )) &&
            (identical(other.isSuspended, isSuspended) ||
                const DeepCollectionEquality().equals(
                  other.isSuspended,
                  isSuspended,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.nr, nr) ||
                const DeepCollectionEquality().equals(other.nr, nr)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality().equals(
                  other.postalCode,
                  postalCode,
                )) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.suspensionReason, suspensionReason) ||
                const DeepCollectionEquality().equals(
                  other.suspensionReason,
                  suspensionReason,
                )) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(billingEmail) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(domainNamesForUserOnboarding) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isDeliveringTrustForPrivateUse) ^
      const DeepCollectionEquality().hash(isSuspended) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nr) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(suspensionReason) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(vat) ^
      runtimeType.hashCode;
}

extension $ClientExtension on Client {
  Client copyWith({
    String? billingEmail,
    String? city,
    String? country,
    String? domainNamesForUserOnboarding,
    int? id,
    bool? isDeliveringTrustForPrivateUse,
    bool? isSuspended,
    String? name,
    String? nr,
    String? postalCode,
    String? street,
    String? suspensionReason,
    List<ContractUser>? users,
    String? vat,
  }) {
    return Client(
      billingEmail: billingEmail ?? this.billingEmail,
      city: city ?? this.city,
      country: country ?? this.country,
      domainNamesForUserOnboarding:
          domainNamesForUserOnboarding ?? this.domainNamesForUserOnboarding,
      id: id ?? this.id,
      isDeliveringTrustForPrivateUse:
          isDeliveringTrustForPrivateUse ?? this.isDeliveringTrustForPrivateUse,
      isSuspended: isSuspended ?? this.isSuspended,
      name: name ?? this.name,
      nr: nr ?? this.nr,
      postalCode: postalCode ?? this.postalCode,
      street: street ?? this.street,
      suspensionReason: suspensionReason ?? this.suspensionReason,
      users: users ?? this.users,
      vat: vat ?? this.vat,
    );
  }

  Client copyWithWrapped({
    Wrapped<String?>? billingEmail,
    Wrapped<String?>? city,
    Wrapped<String?>? country,
    Wrapped<String?>? domainNamesForUserOnboarding,
    Wrapped<int?>? id,
    Wrapped<bool?>? isDeliveringTrustForPrivateUse,
    Wrapped<bool?>? isSuspended,
    Wrapped<String?>? name,
    Wrapped<String?>? nr,
    Wrapped<String?>? postalCode,
    Wrapped<String?>? street,
    Wrapped<String?>? suspensionReason,
    Wrapped<List<ContractUser>?>? users,
    Wrapped<String?>? vat,
  }) {
    return Client(
      billingEmail: (billingEmail != null
          ? billingEmail.value
          : this.billingEmail),
      city: (city != null ? city.value : this.city),
      country: (country != null ? country.value : this.country),
      domainNamesForUserOnboarding: (domainNamesForUserOnboarding != null
          ? domainNamesForUserOnboarding.value
          : this.domainNamesForUserOnboarding),
      id: (id != null ? id.value : this.id),
      isDeliveringTrustForPrivateUse: (isDeliveringTrustForPrivateUse != null
          ? isDeliveringTrustForPrivateUse.value
          : this.isDeliveringTrustForPrivateUse),
      isSuspended: (isSuspended != null ? isSuspended.value : this.isSuspended),
      name: (name != null ? name.value : this.name),
      nr: (nr != null ? nr.value : this.nr),
      postalCode: (postalCode != null ? postalCode.value : this.postalCode),
      street: (street != null ? street.value : this.street),
      suspensionReason: (suspensionReason != null
          ? suspensionReason.value
          : this.suspensionReason),
      users: (users != null ? users.value : this.users),
      vat: (vat != null ? vat.value : this.vat),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientContractBaseSearchRequest {
  const ClientContractBaseSearchRequest({this.flexSearch, this.orderBy});

  factory ClientContractBaseSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$ClientContractBaseSearchRequestFromJson(json);

  static const toJsonFactory = _$ClientContractBaseSearchRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ClientContractBaseSearchRequestToJson(this);

  @JsonKey(name: 'flexSearch')
  final String? flexSearch;
  @JsonKey(name: 'orderBy')
  final String? orderBy;
  static const fromJsonFactory = _$ClientContractBaseSearchRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientContractBaseSearchRequest &&
            (identical(other.flexSearch, flexSearch) ||
                const DeepCollectionEquality().equals(
                  other.flexSearch,
                  flexSearch,
                )) &&
            (identical(other.orderBy, orderBy) ||
                const DeepCollectionEquality().equals(other.orderBy, orderBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(flexSearch) ^
      const DeepCollectionEquality().hash(orderBy) ^
      runtimeType.hashCode;
}

extension $ClientContractBaseSearchRequestExtension
    on ClientContractBaseSearchRequest {
  ClientContractBaseSearchRequest copyWith({
    String? flexSearch,
    String? orderBy,
  }) {
    return ClientContractBaseSearchRequest(
      flexSearch: flexSearch ?? this.flexSearch,
      orderBy: orderBy ?? this.orderBy,
    );
  }

  ClientContractBaseSearchRequest copyWithWrapped({
    Wrapped<String?>? flexSearch,
    Wrapped<String?>? orderBy,
  }) {
    return ClientContractBaseSearchRequest(
      flexSearch: (flexSearch != null ? flexSearch.value : this.flexSearch),
      orderBy: (orderBy != null ? orderBy.value : this.orderBy),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientContractDto {
  const ClientContractDto({
    this.billingInstructions,
    this.billingType,
    this.$client,
    this.clientContractType,
    this.contractDate,
    this.contractFileName,
    this.currentFormula,
    this.dateOfCancellation,
    this.endDate,
    this.id,
    this.isCompletelySettled,
    this.isSuspended,
    this.memo,
    this.overrideAutoDescription,
    this.reasonOfCancellation,
    this.settings,
    this.startDate,
    this.status,
    this.suspensionReason,
    this.usage,
  });

  factory ClientContractDto.fromJson(Map<String, dynamic> json) =>
      _$ClientContractDtoFromJson(json);

  static const toJsonFactory = _$ClientContractDtoToJson;
  Map<String, dynamic> toJson() => _$ClientContractDtoToJson(this);

  @JsonKey(name: 'billingInstructions')
  final String? billingInstructions;
  @JsonKey(name: 'billingType')
  final String? billingType;
  @JsonKey(name: 'client')
  final ClientReferenceDto? $client;
  @JsonKey(
    name: 'clientContractType',
    toJson: clientContractTypeNullableToJson,
    fromJson: clientContractTypeNullableFromJson,
  )
  final enums.ClientContractType? clientContractType;
  @JsonKey(name: 'contractDate', toJson: _dateToJson)
  final DateTime? contractDate;
  @JsonKey(name: 'contractFileName')
  final String? contractFileName;
  @JsonKey(
    name: 'currentFormula',
    toJson: clientContractFormulaNullableToJson,
    fromJson: clientContractFormulaNullableFromJson,
  )
  final enums.ClientContractFormula? currentFormula;
  @JsonKey(name: 'dateOfCancellation', toJson: _dateToJson)
  final DateTime? dateOfCancellation;
  @JsonKey(name: 'endDate', toJson: _dateToJson)
  final DateTime? endDate;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'isCompletelySettled')
  final bool? isCompletelySettled;
  @JsonKey(name: 'isSuspended')
  final bool? isSuspended;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(name: 'overrideAutoDescription')
  final String? overrideAutoDescription;
  @JsonKey(name: 'reasonOfCancellation')
  final String? reasonOfCancellation;
  @JsonKey(name: 'settings')
  final String? settings;
  @JsonKey(name: 'startDate', toJson: _dateToJson)
  final DateTime? startDate;
  @JsonKey(
    name: 'status',
    toJson: clientContractStatusNullableToJson,
    fromJson: clientContractStatusNullableFromJson,
  )
  final enums.ClientContractStatus? status;
  @JsonKey(name: 'suspensionReason')
  final String? suspensionReason;
  @JsonKey(name: 'usage')
  final ClientContractUsageDto? usage;
  static const fromJsonFactory = _$ClientContractDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientContractDto &&
            (identical(other.billingInstructions, billingInstructions) ||
                const DeepCollectionEquality().equals(
                  other.billingInstructions,
                  billingInstructions,
                )) &&
            (identical(other.billingType, billingType) ||
                const DeepCollectionEquality().equals(
                  other.billingType,
                  billingType,
                )) &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality().equals(
                  other.$client,
                  $client,
                )) &&
            (identical(other.clientContractType, clientContractType) ||
                const DeepCollectionEquality().equals(
                  other.clientContractType,
                  clientContractType,
                )) &&
            (identical(other.contractDate, contractDate) ||
                const DeepCollectionEquality().equals(
                  other.contractDate,
                  contractDate,
                )) &&
            (identical(other.contractFileName, contractFileName) ||
                const DeepCollectionEquality().equals(
                  other.contractFileName,
                  contractFileName,
                )) &&
            (identical(other.currentFormula, currentFormula) ||
                const DeepCollectionEquality().equals(
                  other.currentFormula,
                  currentFormula,
                )) &&
            (identical(other.dateOfCancellation, dateOfCancellation) ||
                const DeepCollectionEquality().equals(
                  other.dateOfCancellation,
                  dateOfCancellation,
                )) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(
                  other.endDate,
                  endDate,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isCompletelySettled, isCompletelySettled) ||
                const DeepCollectionEquality().equals(
                  other.isCompletelySettled,
                  isCompletelySettled,
                )) &&
            (identical(other.isSuspended, isSuspended) ||
                const DeepCollectionEquality().equals(
                  other.isSuspended,
                  isSuspended,
                )) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(
                  other.overrideAutoDescription,
                  overrideAutoDescription,
                ) ||
                const DeepCollectionEquality().equals(
                  other.overrideAutoDescription,
                  overrideAutoDescription,
                )) &&
            (identical(other.reasonOfCancellation, reasonOfCancellation) ||
                const DeepCollectionEquality().equals(
                  other.reasonOfCancellation,
                  reasonOfCancellation,
                )) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality().equals(
                  other.settings,
                  settings,
                )) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.suspensionReason, suspensionReason) ||
                const DeepCollectionEquality().equals(
                  other.suspensionReason,
                  suspensionReason,
                )) &&
            (identical(other.usage, usage) ||
                const DeepCollectionEquality().equals(other.usage, usage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(billingInstructions) ^
      const DeepCollectionEquality().hash(billingType) ^
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(clientContractType) ^
      const DeepCollectionEquality().hash(contractDate) ^
      const DeepCollectionEquality().hash(contractFileName) ^
      const DeepCollectionEquality().hash(currentFormula) ^
      const DeepCollectionEquality().hash(dateOfCancellation) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isCompletelySettled) ^
      const DeepCollectionEquality().hash(isSuspended) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(overrideAutoDescription) ^
      const DeepCollectionEquality().hash(reasonOfCancellation) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(suspensionReason) ^
      const DeepCollectionEquality().hash(usage) ^
      runtimeType.hashCode;
}

extension $ClientContractDtoExtension on ClientContractDto {
  ClientContractDto copyWith({
    String? billingInstructions,
    String? billingType,
    ClientReferenceDto? $client,
    enums.ClientContractType? clientContractType,
    DateTime? contractDate,
    String? contractFileName,
    enums.ClientContractFormula? currentFormula,
    DateTime? dateOfCancellation,
    DateTime? endDate,
    int? id,
    bool? isCompletelySettled,
    bool? isSuspended,
    String? memo,
    String? overrideAutoDescription,
    String? reasonOfCancellation,
    String? settings,
    DateTime? startDate,
    enums.ClientContractStatus? status,
    String? suspensionReason,
    ClientContractUsageDto? usage,
  }) {
    return ClientContractDto(
      billingInstructions: billingInstructions ?? this.billingInstructions,
      billingType: billingType ?? this.billingType,
      $client: $client ?? this.$client,
      clientContractType: clientContractType ?? this.clientContractType,
      contractDate: contractDate ?? this.contractDate,
      contractFileName: contractFileName ?? this.contractFileName,
      currentFormula: currentFormula ?? this.currentFormula,
      dateOfCancellation: dateOfCancellation ?? this.dateOfCancellation,
      endDate: endDate ?? this.endDate,
      id: id ?? this.id,
      isCompletelySettled: isCompletelySettled ?? this.isCompletelySettled,
      isSuspended: isSuspended ?? this.isSuspended,
      memo: memo ?? this.memo,
      overrideAutoDescription:
          overrideAutoDescription ?? this.overrideAutoDescription,
      reasonOfCancellation: reasonOfCancellation ?? this.reasonOfCancellation,
      settings: settings ?? this.settings,
      startDate: startDate ?? this.startDate,
      status: status ?? this.status,
      suspensionReason: suspensionReason ?? this.suspensionReason,
      usage: usage ?? this.usage,
    );
  }

  ClientContractDto copyWithWrapped({
    Wrapped<String?>? billingInstructions,
    Wrapped<String?>? billingType,
    Wrapped<ClientReferenceDto?>? $client,
    Wrapped<enums.ClientContractType?>? clientContractType,
    Wrapped<DateTime?>? contractDate,
    Wrapped<String?>? contractFileName,
    Wrapped<enums.ClientContractFormula?>? currentFormula,
    Wrapped<DateTime?>? dateOfCancellation,
    Wrapped<DateTime?>? endDate,
    Wrapped<int?>? id,
    Wrapped<bool?>? isCompletelySettled,
    Wrapped<bool?>? isSuspended,
    Wrapped<String?>? memo,
    Wrapped<String?>? overrideAutoDescription,
    Wrapped<String?>? reasonOfCancellation,
    Wrapped<String?>? settings,
    Wrapped<DateTime?>? startDate,
    Wrapped<enums.ClientContractStatus?>? status,
    Wrapped<String?>? suspensionReason,
    Wrapped<ClientContractUsageDto?>? usage,
  }) {
    return ClientContractDto(
      billingInstructions: (billingInstructions != null
          ? billingInstructions.value
          : this.billingInstructions),
      billingType: (billingType != null ? billingType.value : this.billingType),
      $client: ($client != null ? $client.value : this.$client),
      clientContractType: (clientContractType != null
          ? clientContractType.value
          : this.clientContractType),
      contractDate: (contractDate != null
          ? contractDate.value
          : this.contractDate),
      contractFileName: (contractFileName != null
          ? contractFileName.value
          : this.contractFileName),
      currentFormula: (currentFormula != null
          ? currentFormula.value
          : this.currentFormula),
      dateOfCancellation: (dateOfCancellation != null
          ? dateOfCancellation.value
          : this.dateOfCancellation),
      endDate: (endDate != null ? endDate.value : this.endDate),
      id: (id != null ? id.value : this.id),
      isCompletelySettled: (isCompletelySettled != null
          ? isCompletelySettled.value
          : this.isCompletelySettled),
      isSuspended: (isSuspended != null ? isSuspended.value : this.isSuspended),
      memo: (memo != null ? memo.value : this.memo),
      overrideAutoDescription: (overrideAutoDescription != null
          ? overrideAutoDescription.value
          : this.overrideAutoDescription),
      reasonOfCancellation: (reasonOfCancellation != null
          ? reasonOfCancellation.value
          : this.reasonOfCancellation),
      settings: (settings != null ? settings.value : this.settings),
      startDate: (startDate != null ? startDate.value : this.startDate),
      status: (status != null ? status.value : this.status),
      suspensionReason: (suspensionReason != null
          ? suspensionReason.value
          : this.suspensionReason),
      usage: (usage != null ? usage.value : this.usage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientContractDtoApiDataResponse {
  const ClientContractDtoApiDataResponse({this.data});

  factory ClientContractDtoApiDataResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ClientContractDtoApiDataResponseFromJson(json);

  static const toJsonFactory = _$ClientContractDtoApiDataResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ClientContractDtoApiDataResponseToJson(this);

  @JsonKey(name: 'data')
  final ClientContractDto? data;
  static const fromJsonFactory = _$ClientContractDtoApiDataResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientContractDtoApiDataResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $ClientContractDtoApiDataResponseExtension
    on ClientContractDtoApiDataResponse {
  ClientContractDtoApiDataResponse copyWith({ClientContractDto? data}) {
    return ClientContractDtoApiDataResponse(data: data ?? this.data);
  }

  ClientContractDtoApiDataResponse copyWithWrapped({
    Wrapped<ClientContractDto?>? data,
  }) {
    return ClientContractDtoApiDataResponse(
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientContractResponse {
  const ClientContractResponse({this.id, this.vehicleContracts});

  factory ClientContractResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientContractResponseFromJson(json);

  static const toJsonFactory = _$ClientContractResponseToJson;
  Map<String, dynamic> toJson() => _$ClientContractResponseToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'vehicleContracts', defaultValue: <VehicleContract>[])
  final List<VehicleContract>? vehicleContracts;
  static const fromJsonFactory = _$ClientContractResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientContractResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vehicleContracts, vehicleContracts) ||
                const DeepCollectionEquality().equals(
                  other.vehicleContracts,
                  vehicleContracts,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vehicleContracts) ^
      runtimeType.hashCode;
}

extension $ClientContractResponseExtension on ClientContractResponse {
  ClientContractResponse copyWith({
    int? id,
    List<VehicleContract>? vehicleContracts,
  }) {
    return ClientContractResponse(
      id: id ?? this.id,
      vehicleContracts: vehicleContracts ?? this.vehicleContracts,
    );
  }

  ClientContractResponse copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<List<VehicleContract>?>? vehicleContracts,
  }) {
    return ClientContractResponse(
      id: (id != null ? id.value : this.id),
      vehicleContracts: (vehicleContracts != null
          ? vehicleContracts.value
          : this.vehicleContracts),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientContractSummaryDto {
  const ClientContractSummaryDto({
    this.$client,
    this.clientContractType,
    this.contractDate,
    this.currentFormula,
    this.dateOfCancellation,
    this.endDate,
    this.id,
    this.isSuspended,
    this.overrideAutoDescription,
    this.reasonOfCancellation,
    this.startDate,
    this.status,
    this.suspensionReason,
  });

  factory ClientContractSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ClientContractSummaryDtoFromJson(json);

  static const toJsonFactory = _$ClientContractSummaryDtoToJson;
  Map<String, dynamic> toJson() => _$ClientContractSummaryDtoToJson(this);

  @JsonKey(name: 'client')
  final ClientReferenceDto? $client;
  @JsonKey(
    name: 'clientContractType',
    toJson: clientContractTypeNullableToJson,
    fromJson: clientContractTypeNullableFromJson,
  )
  final enums.ClientContractType? clientContractType;
  @JsonKey(name: 'contractDate', toJson: _dateToJson)
  final DateTime? contractDate;
  @JsonKey(
    name: 'currentFormula',
    toJson: clientContractFormulaNullableToJson,
    fromJson: clientContractFormulaNullableFromJson,
  )
  final enums.ClientContractFormula? currentFormula;
  @JsonKey(name: 'dateOfCancellation', toJson: _dateToJson)
  final DateTime? dateOfCancellation;
  @JsonKey(name: 'endDate', toJson: _dateToJson)
  final DateTime? endDate;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'isSuspended')
  final bool? isSuspended;
  @JsonKey(name: 'overrideAutoDescription')
  final String? overrideAutoDescription;
  @JsonKey(name: 'reasonOfCancellation')
  final String? reasonOfCancellation;
  @JsonKey(name: 'startDate', toJson: _dateToJson)
  final DateTime? startDate;
  @JsonKey(
    name: 'status',
    toJson: clientContractStatusNullableToJson,
    fromJson: clientContractStatusNullableFromJson,
  )
  final enums.ClientContractStatus? status;
  @JsonKey(name: 'suspensionReason')
  final String? suspensionReason;
  static const fromJsonFactory = _$ClientContractSummaryDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientContractSummaryDto &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality().equals(
                  other.$client,
                  $client,
                )) &&
            (identical(other.clientContractType, clientContractType) ||
                const DeepCollectionEquality().equals(
                  other.clientContractType,
                  clientContractType,
                )) &&
            (identical(other.contractDate, contractDate) ||
                const DeepCollectionEquality().equals(
                  other.contractDate,
                  contractDate,
                )) &&
            (identical(other.currentFormula, currentFormula) ||
                const DeepCollectionEquality().equals(
                  other.currentFormula,
                  currentFormula,
                )) &&
            (identical(other.dateOfCancellation, dateOfCancellation) ||
                const DeepCollectionEquality().equals(
                  other.dateOfCancellation,
                  dateOfCancellation,
                )) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(
                  other.endDate,
                  endDate,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isSuspended, isSuspended) ||
                const DeepCollectionEquality().equals(
                  other.isSuspended,
                  isSuspended,
                )) &&
            (identical(
                  other.overrideAutoDescription,
                  overrideAutoDescription,
                ) ||
                const DeepCollectionEquality().equals(
                  other.overrideAutoDescription,
                  overrideAutoDescription,
                )) &&
            (identical(other.reasonOfCancellation, reasonOfCancellation) ||
                const DeepCollectionEquality().equals(
                  other.reasonOfCancellation,
                  reasonOfCancellation,
                )) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.suspensionReason, suspensionReason) ||
                const DeepCollectionEquality().equals(
                  other.suspensionReason,
                  suspensionReason,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(clientContractType) ^
      const DeepCollectionEquality().hash(contractDate) ^
      const DeepCollectionEquality().hash(currentFormula) ^
      const DeepCollectionEquality().hash(dateOfCancellation) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isSuspended) ^
      const DeepCollectionEquality().hash(overrideAutoDescription) ^
      const DeepCollectionEquality().hash(reasonOfCancellation) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(suspensionReason) ^
      runtimeType.hashCode;
}

extension $ClientContractSummaryDtoExtension on ClientContractSummaryDto {
  ClientContractSummaryDto copyWith({
    ClientReferenceDto? $client,
    enums.ClientContractType? clientContractType,
    DateTime? contractDate,
    enums.ClientContractFormula? currentFormula,
    DateTime? dateOfCancellation,
    DateTime? endDate,
    int? id,
    bool? isSuspended,
    String? overrideAutoDescription,
    String? reasonOfCancellation,
    DateTime? startDate,
    enums.ClientContractStatus? status,
    String? suspensionReason,
  }) {
    return ClientContractSummaryDto(
      $client: $client ?? this.$client,
      clientContractType: clientContractType ?? this.clientContractType,
      contractDate: contractDate ?? this.contractDate,
      currentFormula: currentFormula ?? this.currentFormula,
      dateOfCancellation: dateOfCancellation ?? this.dateOfCancellation,
      endDate: endDate ?? this.endDate,
      id: id ?? this.id,
      isSuspended: isSuspended ?? this.isSuspended,
      overrideAutoDescription:
          overrideAutoDescription ?? this.overrideAutoDescription,
      reasonOfCancellation: reasonOfCancellation ?? this.reasonOfCancellation,
      startDate: startDate ?? this.startDate,
      status: status ?? this.status,
      suspensionReason: suspensionReason ?? this.suspensionReason,
    );
  }

  ClientContractSummaryDto copyWithWrapped({
    Wrapped<ClientReferenceDto?>? $client,
    Wrapped<enums.ClientContractType?>? clientContractType,
    Wrapped<DateTime?>? contractDate,
    Wrapped<enums.ClientContractFormula?>? currentFormula,
    Wrapped<DateTime?>? dateOfCancellation,
    Wrapped<DateTime?>? endDate,
    Wrapped<int?>? id,
    Wrapped<bool?>? isSuspended,
    Wrapped<String?>? overrideAutoDescription,
    Wrapped<String?>? reasonOfCancellation,
    Wrapped<DateTime?>? startDate,
    Wrapped<enums.ClientContractStatus?>? status,
    Wrapped<String?>? suspensionReason,
  }) {
    return ClientContractSummaryDto(
      $client: ($client != null ? $client.value : this.$client),
      clientContractType: (clientContractType != null
          ? clientContractType.value
          : this.clientContractType),
      contractDate: (contractDate != null
          ? contractDate.value
          : this.contractDate),
      currentFormula: (currentFormula != null
          ? currentFormula.value
          : this.currentFormula),
      dateOfCancellation: (dateOfCancellation != null
          ? dateOfCancellation.value
          : this.dateOfCancellation),
      endDate: (endDate != null ? endDate.value : this.endDate),
      id: (id != null ? id.value : this.id),
      isSuspended: (isSuspended != null ? isSuspended.value : this.isSuspended),
      overrideAutoDescription: (overrideAutoDescription != null
          ? overrideAutoDescription.value
          : this.overrideAutoDescription),
      reasonOfCancellation: (reasonOfCancellation != null
          ? reasonOfCancellation.value
          : this.reasonOfCancellation),
      startDate: (startDate != null ? startDate.value : this.startDate),
      status: (status != null ? status.value : this.status),
      suspensionReason: (suspensionReason != null
          ? suspensionReason.value
          : this.suspensionReason),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientContractSummaryDtoApiPagedResponse {
  const ClientContractSummaryDtoApiPagedResponse({
    this.nextPage,
    this.results,
    this.totalCount,
  });

  factory ClientContractSummaryDtoApiPagedResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ClientContractSummaryDtoApiPagedResponseFromJson(json);

  static const toJsonFactory = _$ClientContractSummaryDtoApiPagedResponseToJson;
  Map<String, dynamic> toJson() =>
      _$ClientContractSummaryDtoApiPagedResponseToJson(this);

  @JsonKey(name: 'nextPage')
  final String? nextPage;
  @JsonKey(name: 'results', defaultValue: <ClientContractSummaryDto>[])
  final List<ClientContractSummaryDto>? results;
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  static const fromJsonFactory =
      _$ClientContractSummaryDtoApiPagedResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientContractSummaryDtoApiPagedResponse &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality().equals(
                  other.nextPage,
                  nextPage,
                )) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(
                  other.results,
                  results,
                )) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(nextPage) ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(totalCount) ^
      runtimeType.hashCode;
}

extension $ClientContractSummaryDtoApiPagedResponseExtension
    on ClientContractSummaryDtoApiPagedResponse {
  ClientContractSummaryDtoApiPagedResponse copyWith({
    String? nextPage,
    List<ClientContractSummaryDto>? results,
    int? totalCount,
  }) {
    return ClientContractSummaryDtoApiPagedResponse(
      nextPage: nextPage ?? this.nextPage,
      results: results ?? this.results,
      totalCount: totalCount ?? this.totalCount,
    );
  }

  ClientContractSummaryDtoApiPagedResponse copyWithWrapped({
    Wrapped<String?>? nextPage,
    Wrapped<List<ClientContractSummaryDto>?>? results,
    Wrapped<int?>? totalCount,
  }) {
    return ClientContractSummaryDtoApiPagedResponse(
      nextPage: (nextPage != null ? nextPage.value : this.nextPage),
      results: (results != null ? results.value : this.results),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientContractUsageDataDto {
  const ClientContractUsageDataDto({
    this.commentOnInvoice,
    this.commitmentAmountInclVat,
    this.endDate,
    this.formula,
    this.memo,
    this.minimalEndDate,
    this.overrideRateCardId,
    this.requestDate,
    this.startDate,
  });

  factory ClientContractUsageDataDto.fromJson(Map<String, dynamic> json) =>
      _$ClientContractUsageDataDtoFromJson(json);

  static const toJsonFactory = _$ClientContractUsageDataDtoToJson;
  Map<String, dynamic> toJson() => _$ClientContractUsageDataDtoToJson(this);

  @JsonKey(name: 'commentOnInvoice')
  final String? commentOnInvoice;
  @JsonKey(name: 'commitmentAmountInclVat')
  final double? commitmentAmountInclVat;
  @JsonKey(name: 'endDate', toJson: _dateToJson)
  final DateTime? endDate;
  @JsonKey(
    name: 'formula',
    toJson: clientContractFormulaNullableToJson,
    fromJson: clientContractFormulaNullableFromJson,
  )
  final enums.ClientContractFormula? formula;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(name: 'minimalEndDate', toJson: _dateToJson)
  final DateTime? minimalEndDate;
  @JsonKey(name: 'overrideRateCardId')
  final int? overrideRateCardId;
  @JsonKey(name: 'requestDate', toJson: _dateToJson)
  final DateTime? requestDate;
  @JsonKey(name: 'startDate', toJson: _dateToJson)
  final DateTime? startDate;
  static const fromJsonFactory = _$ClientContractUsageDataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientContractUsageDataDto &&
            (identical(other.commentOnInvoice, commentOnInvoice) ||
                const DeepCollectionEquality().equals(
                  other.commentOnInvoice,
                  commentOnInvoice,
                )) &&
            (identical(
                  other.commitmentAmountInclVat,
                  commitmentAmountInclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.commitmentAmountInclVat,
                  commitmentAmountInclVat,
                )) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(
                  other.endDate,
                  endDate,
                )) &&
            (identical(other.formula, formula) ||
                const DeepCollectionEquality().equals(
                  other.formula,
                  formula,
                )) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.minimalEndDate, minimalEndDate) ||
                const DeepCollectionEquality().equals(
                  other.minimalEndDate,
                  minimalEndDate,
                )) &&
            (identical(other.overrideRateCardId, overrideRateCardId) ||
                const DeepCollectionEquality().equals(
                  other.overrideRateCardId,
                  overrideRateCardId,
                )) &&
            (identical(other.requestDate, requestDate) ||
                const DeepCollectionEquality().equals(
                  other.requestDate,
                  requestDate,
                )) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(commentOnInvoice) ^
      const DeepCollectionEquality().hash(commitmentAmountInclVat) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(formula) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(minimalEndDate) ^
      const DeepCollectionEquality().hash(overrideRateCardId) ^
      const DeepCollectionEquality().hash(requestDate) ^
      const DeepCollectionEquality().hash(startDate) ^
      runtimeType.hashCode;
}

extension $ClientContractUsageDataDtoExtension on ClientContractUsageDataDto {
  ClientContractUsageDataDto copyWith({
    String? commentOnInvoice,
    double? commitmentAmountInclVat,
    DateTime? endDate,
    enums.ClientContractFormula? formula,
    String? memo,
    DateTime? minimalEndDate,
    int? overrideRateCardId,
    DateTime? requestDate,
    DateTime? startDate,
  }) {
    return ClientContractUsageDataDto(
      commentOnInvoice: commentOnInvoice ?? this.commentOnInvoice,
      commitmentAmountInclVat:
          commitmentAmountInclVat ?? this.commitmentAmountInclVat,
      endDate: endDate ?? this.endDate,
      formula: formula ?? this.formula,
      memo: memo ?? this.memo,
      minimalEndDate: minimalEndDate ?? this.minimalEndDate,
      overrideRateCardId: overrideRateCardId ?? this.overrideRateCardId,
      requestDate: requestDate ?? this.requestDate,
      startDate: startDate ?? this.startDate,
    );
  }

  ClientContractUsageDataDto copyWithWrapped({
    Wrapped<String?>? commentOnInvoice,
    Wrapped<double?>? commitmentAmountInclVat,
    Wrapped<DateTime?>? endDate,
    Wrapped<enums.ClientContractFormula?>? formula,
    Wrapped<String?>? memo,
    Wrapped<DateTime?>? minimalEndDate,
    Wrapped<int?>? overrideRateCardId,
    Wrapped<DateTime?>? requestDate,
    Wrapped<DateTime?>? startDate,
  }) {
    return ClientContractUsageDataDto(
      commentOnInvoice: (commentOnInvoice != null
          ? commentOnInvoice.value
          : this.commentOnInvoice),
      commitmentAmountInclVat: (commitmentAmountInclVat != null
          ? commitmentAmountInclVat.value
          : this.commitmentAmountInclVat),
      endDate: (endDate != null ? endDate.value : this.endDate),
      formula: (formula != null ? formula.value : this.formula),
      memo: (memo != null ? memo.value : this.memo),
      minimalEndDate: (minimalEndDate != null
          ? minimalEndDate.value
          : this.minimalEndDate),
      overrideRateCardId: (overrideRateCardId != null
          ? overrideRateCardId.value
          : this.overrideRateCardId),
      requestDate: (requestDate != null ? requestDate.value : this.requestDate),
      startDate: (startDate != null ? startDate.value : this.startDate),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientContractUsageDto {
  const ClientContractUsageDto({
    this.finalInvoiceId,
    this.firstInvoiceId,
    this.memo,
    this.trustedByClientContractId,
    this.usageData,
  });

  factory ClientContractUsageDto.fromJson(Map<String, dynamic> json) =>
      _$ClientContractUsageDtoFromJson(json);

  static const toJsonFactory = _$ClientContractUsageDtoToJson;
  Map<String, dynamic> toJson() => _$ClientContractUsageDtoToJson(this);

  @JsonKey(name: 'finalInvoiceId')
  final int? finalInvoiceId;
  @JsonKey(name: 'firstInvoiceId')
  final int? firstInvoiceId;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(name: 'trustedByClientContractId')
  final int? trustedByClientContractId;
  @JsonKey(name: 'usageData', defaultValue: <ClientContractUsageDataDto>[])
  final List<ClientContractUsageDataDto>? usageData;
  static const fromJsonFactory = _$ClientContractUsageDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientContractUsageDto &&
            (identical(other.finalInvoiceId, finalInvoiceId) ||
                const DeepCollectionEquality().equals(
                  other.finalInvoiceId,
                  finalInvoiceId,
                )) &&
            (identical(other.firstInvoiceId, firstInvoiceId) ||
                const DeepCollectionEquality().equals(
                  other.firstInvoiceId,
                  firstInvoiceId,
                )) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(
                  other.trustedByClientContractId,
                  trustedByClientContractId,
                ) ||
                const DeepCollectionEquality().equals(
                  other.trustedByClientContractId,
                  trustedByClientContractId,
                )) &&
            (identical(other.usageData, usageData) ||
                const DeepCollectionEquality().equals(
                  other.usageData,
                  usageData,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(finalInvoiceId) ^
      const DeepCollectionEquality().hash(firstInvoiceId) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(trustedByClientContractId) ^
      const DeepCollectionEquality().hash(usageData) ^
      runtimeType.hashCode;
}

extension $ClientContractUsageDtoExtension on ClientContractUsageDto {
  ClientContractUsageDto copyWith({
    int? finalInvoiceId,
    int? firstInvoiceId,
    String? memo,
    int? trustedByClientContractId,
    List<ClientContractUsageDataDto>? usageData,
  }) {
    return ClientContractUsageDto(
      finalInvoiceId: finalInvoiceId ?? this.finalInvoiceId,
      firstInvoiceId: firstInvoiceId ?? this.firstInvoiceId,
      memo: memo ?? this.memo,
      trustedByClientContractId:
          trustedByClientContractId ?? this.trustedByClientContractId,
      usageData: usageData ?? this.usageData,
    );
  }

  ClientContractUsageDto copyWithWrapped({
    Wrapped<int?>? finalInvoiceId,
    Wrapped<int?>? firstInvoiceId,
    Wrapped<String?>? memo,
    Wrapped<int?>? trustedByClientContractId,
    Wrapped<List<ClientContractUsageDataDto>?>? usageData,
  }) {
    return ClientContractUsageDto(
      finalInvoiceId: (finalInvoiceId != null
          ? finalInvoiceId.value
          : this.finalInvoiceId),
      firstInvoiceId: (firstInvoiceId != null
          ? firstInvoiceId.value
          : this.firstInvoiceId),
      memo: (memo != null ? memo.value : this.memo),
      trustedByClientContractId: (trustedByClientContractId != null
          ? trustedByClientContractId.value
          : this.trustedByClientContractId),
      usageData: (usageData != null ? usageData.value : this.usageData),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientContractVehicleRecord {
  const ClientContractVehicleRecord({
    this.battMaxType,
    this.battOrderNumber,
    this.clientContractId,
    this.costForAdditionalKmsExclVat,
    this.creditedDayPriceExVat,
    this.creditedKmPriceExVat,
    this.effectiveStartDate,
    this.mainUserId,
    this.maxInvoiceAmountExclVat,
    this.mileageKmAtEndOfContract,
    this.mileageKmAtStartOfContract,
    this.monthlyInsurance,
    this.monthlyLeaseAmountExclVat,
    this.monthlyPrefundElectricityExVat,
    this.numberOfMonths,
    this.paidStartupCost,
    this.yearlyKmsOnContract,
  });

  factory ClientContractVehicleRecord.fromJson(Map<String, dynamic> json) =>
      _$ClientContractVehicleRecordFromJson(json);

  static const toJsonFactory = _$ClientContractVehicleRecordToJson;
  Map<String, dynamic> toJson() => _$ClientContractVehicleRecordToJson(this);

  @JsonKey(
    name: 'battMaxType',
    toJson: clientContractVehicleRecordBattMaxTypeNullableToJson,
    fromJson: clientContractVehicleRecordBattMaxTypeNullableFromJson,
  )
  final enums.ClientContractVehicleRecordBattMaxType? battMaxType;
  @JsonKey(name: 'battOrderNumber')
  final String? battOrderNumber;
  @JsonKey(name: 'clientContractId')
  final int? clientContractId;
  @JsonKey(name: 'costForAdditionalKmsExclVat')
  final double? costForAdditionalKmsExclVat;
  @JsonKey(name: 'creditedDayPriceExVat')
  final double? creditedDayPriceExVat;
  @JsonKey(name: 'creditedKmPriceExVat')
  final double? creditedKmPriceExVat;
  @JsonKey(name: 'effectiveStartDate')
  final DateTime? effectiveStartDate;
  @JsonKey(name: 'mainUserId')
  final int? mainUserId;
  @JsonKey(name: 'maxInvoiceAmountExclVat')
  final double? maxInvoiceAmountExclVat;
  @JsonKey(name: 'mileageKmAtEndOfContract')
  final int? mileageKmAtEndOfContract;
  @JsonKey(name: 'mileageKmAtStartOfContract')
  final int? mileageKmAtStartOfContract;
  @JsonKey(name: 'monthlyInsurance')
  final double? monthlyInsurance;
  @JsonKey(name: 'monthlyLeaseAmountExclVat')
  final double? monthlyLeaseAmountExclVat;
  @JsonKey(name: 'monthlyPrefundElectricityExVat')
  final double? monthlyPrefundElectricityExVat;
  @JsonKey(name: 'numberOfMonths')
  final int? numberOfMonths;
  @JsonKey(name: 'paidStartupCost')
  final double? paidStartupCost;
  @JsonKey(name: 'yearlyKmsOnContract')
  final int? yearlyKmsOnContract;
  static const fromJsonFactory = _$ClientContractVehicleRecordFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientContractVehicleRecord &&
            (identical(other.battMaxType, battMaxType) ||
                const DeepCollectionEquality().equals(
                  other.battMaxType,
                  battMaxType,
                )) &&
            (identical(other.battOrderNumber, battOrderNumber) ||
                const DeepCollectionEquality().equals(
                  other.battOrderNumber,
                  battOrderNumber,
                )) &&
            (identical(other.clientContractId, clientContractId) ||
                const DeepCollectionEquality().equals(
                  other.clientContractId,
                  clientContractId,
                )) &&
            (identical(
                  other.costForAdditionalKmsExclVat,
                  costForAdditionalKmsExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.costForAdditionalKmsExclVat,
                  costForAdditionalKmsExclVat,
                )) &&
            (identical(other.creditedDayPriceExVat, creditedDayPriceExVat) ||
                const DeepCollectionEquality().equals(
                  other.creditedDayPriceExVat,
                  creditedDayPriceExVat,
                )) &&
            (identical(other.creditedKmPriceExVat, creditedKmPriceExVat) ||
                const DeepCollectionEquality().equals(
                  other.creditedKmPriceExVat,
                  creditedKmPriceExVat,
                )) &&
            (identical(other.effectiveStartDate, effectiveStartDate) ||
                const DeepCollectionEquality().equals(
                  other.effectiveStartDate,
                  effectiveStartDate,
                )) &&
            (identical(other.mainUserId, mainUserId) ||
                const DeepCollectionEquality().equals(
                  other.mainUserId,
                  mainUserId,
                )) &&
            (identical(
                  other.maxInvoiceAmountExclVat,
                  maxInvoiceAmountExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.maxInvoiceAmountExclVat,
                  maxInvoiceAmountExclVat,
                )) &&
            (identical(
                  other.mileageKmAtEndOfContract,
                  mileageKmAtEndOfContract,
                ) ||
                const DeepCollectionEquality().equals(
                  other.mileageKmAtEndOfContract,
                  mileageKmAtEndOfContract,
                )) &&
            (identical(
                  other.mileageKmAtStartOfContract,
                  mileageKmAtStartOfContract,
                ) ||
                const DeepCollectionEquality().equals(
                  other.mileageKmAtStartOfContract,
                  mileageKmAtStartOfContract,
                )) &&
            (identical(other.monthlyInsurance, monthlyInsurance) ||
                const DeepCollectionEquality().equals(
                  other.monthlyInsurance,
                  monthlyInsurance,
                )) &&
            (identical(
                  other.monthlyLeaseAmountExclVat,
                  monthlyLeaseAmountExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.monthlyLeaseAmountExclVat,
                  monthlyLeaseAmountExclVat,
                )) &&
            (identical(
                  other.monthlyPrefundElectricityExVat,
                  monthlyPrefundElectricityExVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.monthlyPrefundElectricityExVat,
                  monthlyPrefundElectricityExVat,
                )) &&
            (identical(other.numberOfMonths, numberOfMonths) ||
                const DeepCollectionEquality().equals(
                  other.numberOfMonths,
                  numberOfMonths,
                )) &&
            (identical(other.paidStartupCost, paidStartupCost) ||
                const DeepCollectionEquality().equals(
                  other.paidStartupCost,
                  paidStartupCost,
                )) &&
            (identical(other.yearlyKmsOnContract, yearlyKmsOnContract) ||
                const DeepCollectionEquality().equals(
                  other.yearlyKmsOnContract,
                  yearlyKmsOnContract,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(battMaxType) ^
      const DeepCollectionEquality().hash(battOrderNumber) ^
      const DeepCollectionEquality().hash(clientContractId) ^
      const DeepCollectionEquality().hash(costForAdditionalKmsExclVat) ^
      const DeepCollectionEquality().hash(creditedDayPriceExVat) ^
      const DeepCollectionEquality().hash(creditedKmPriceExVat) ^
      const DeepCollectionEquality().hash(effectiveStartDate) ^
      const DeepCollectionEquality().hash(mainUserId) ^
      const DeepCollectionEquality().hash(maxInvoiceAmountExclVat) ^
      const DeepCollectionEquality().hash(mileageKmAtEndOfContract) ^
      const DeepCollectionEquality().hash(mileageKmAtStartOfContract) ^
      const DeepCollectionEquality().hash(monthlyInsurance) ^
      const DeepCollectionEquality().hash(monthlyLeaseAmountExclVat) ^
      const DeepCollectionEquality().hash(monthlyPrefundElectricityExVat) ^
      const DeepCollectionEquality().hash(numberOfMonths) ^
      const DeepCollectionEquality().hash(paidStartupCost) ^
      const DeepCollectionEquality().hash(yearlyKmsOnContract) ^
      runtimeType.hashCode;
}

extension $ClientContractVehicleRecordExtension on ClientContractVehicleRecord {
  ClientContractVehicleRecord copyWith({
    enums.ClientContractVehicleRecordBattMaxType? battMaxType,
    String? battOrderNumber,
    int? clientContractId,
    double? costForAdditionalKmsExclVat,
    double? creditedDayPriceExVat,
    double? creditedKmPriceExVat,
    DateTime? effectiveStartDate,
    int? mainUserId,
    double? maxInvoiceAmountExclVat,
    int? mileageKmAtEndOfContract,
    int? mileageKmAtStartOfContract,
    double? monthlyInsurance,
    double? monthlyLeaseAmountExclVat,
    double? monthlyPrefundElectricityExVat,
    int? numberOfMonths,
    double? paidStartupCost,
    int? yearlyKmsOnContract,
  }) {
    return ClientContractVehicleRecord(
      battMaxType: battMaxType ?? this.battMaxType,
      battOrderNumber: battOrderNumber ?? this.battOrderNumber,
      clientContractId: clientContractId ?? this.clientContractId,
      costForAdditionalKmsExclVat:
          costForAdditionalKmsExclVat ?? this.costForAdditionalKmsExclVat,
      creditedDayPriceExVat:
          creditedDayPriceExVat ?? this.creditedDayPriceExVat,
      creditedKmPriceExVat: creditedKmPriceExVat ?? this.creditedKmPriceExVat,
      effectiveStartDate: effectiveStartDate ?? this.effectiveStartDate,
      mainUserId: mainUserId ?? this.mainUserId,
      maxInvoiceAmountExclVat:
          maxInvoiceAmountExclVat ?? this.maxInvoiceAmountExclVat,
      mileageKmAtEndOfContract:
          mileageKmAtEndOfContract ?? this.mileageKmAtEndOfContract,
      mileageKmAtStartOfContract:
          mileageKmAtStartOfContract ?? this.mileageKmAtStartOfContract,
      monthlyInsurance: monthlyInsurance ?? this.monthlyInsurance,
      monthlyLeaseAmountExclVat:
          monthlyLeaseAmountExclVat ?? this.monthlyLeaseAmountExclVat,
      monthlyPrefundElectricityExVat:
          monthlyPrefundElectricityExVat ?? this.monthlyPrefundElectricityExVat,
      numberOfMonths: numberOfMonths ?? this.numberOfMonths,
      paidStartupCost: paidStartupCost ?? this.paidStartupCost,
      yearlyKmsOnContract: yearlyKmsOnContract ?? this.yearlyKmsOnContract,
    );
  }

  ClientContractVehicleRecord copyWithWrapped({
    Wrapped<enums.ClientContractVehicleRecordBattMaxType?>? battMaxType,
    Wrapped<String?>? battOrderNumber,
    Wrapped<int?>? clientContractId,
    Wrapped<double?>? costForAdditionalKmsExclVat,
    Wrapped<double?>? creditedDayPriceExVat,
    Wrapped<double?>? creditedKmPriceExVat,
    Wrapped<DateTime?>? effectiveStartDate,
    Wrapped<int?>? mainUserId,
    Wrapped<double?>? maxInvoiceAmountExclVat,
    Wrapped<int?>? mileageKmAtEndOfContract,
    Wrapped<int?>? mileageKmAtStartOfContract,
    Wrapped<double?>? monthlyInsurance,
    Wrapped<double?>? monthlyLeaseAmountExclVat,
    Wrapped<double?>? monthlyPrefundElectricityExVat,
    Wrapped<int?>? numberOfMonths,
    Wrapped<double?>? paidStartupCost,
    Wrapped<int?>? yearlyKmsOnContract,
  }) {
    return ClientContractVehicleRecord(
      battMaxType: (battMaxType != null ? battMaxType.value : this.battMaxType),
      battOrderNumber: (battOrderNumber != null
          ? battOrderNumber.value
          : this.battOrderNumber),
      clientContractId: (clientContractId != null
          ? clientContractId.value
          : this.clientContractId),
      costForAdditionalKmsExclVat: (costForAdditionalKmsExclVat != null
          ? costForAdditionalKmsExclVat.value
          : this.costForAdditionalKmsExclVat),
      creditedDayPriceExVat: (creditedDayPriceExVat != null
          ? creditedDayPriceExVat.value
          : this.creditedDayPriceExVat),
      creditedKmPriceExVat: (creditedKmPriceExVat != null
          ? creditedKmPriceExVat.value
          : this.creditedKmPriceExVat),
      effectiveStartDate: (effectiveStartDate != null
          ? effectiveStartDate.value
          : this.effectiveStartDate),
      mainUserId: (mainUserId != null ? mainUserId.value : this.mainUserId),
      maxInvoiceAmountExclVat: (maxInvoiceAmountExclVat != null
          ? maxInvoiceAmountExclVat.value
          : this.maxInvoiceAmountExclVat),
      mileageKmAtEndOfContract: (mileageKmAtEndOfContract != null
          ? mileageKmAtEndOfContract.value
          : this.mileageKmAtEndOfContract),
      mileageKmAtStartOfContract: (mileageKmAtStartOfContract != null
          ? mileageKmAtStartOfContract.value
          : this.mileageKmAtStartOfContract),
      monthlyInsurance: (monthlyInsurance != null
          ? monthlyInsurance.value
          : this.monthlyInsurance),
      monthlyLeaseAmountExclVat: (monthlyLeaseAmountExclVat != null
          ? monthlyLeaseAmountExclVat.value
          : this.monthlyLeaseAmountExclVat),
      monthlyPrefundElectricityExVat: (monthlyPrefundElectricityExVat != null
          ? monthlyPrefundElectricityExVat.value
          : this.monthlyPrefundElectricityExVat),
      numberOfMonths: (numberOfMonths != null
          ? numberOfMonths.value
          : this.numberOfMonths),
      paidStartupCost: (paidStartupCost != null
          ? paidStartupCost.value
          : this.paidStartupCost),
      yearlyKmsOnContract: (yearlyKmsOnContract != null
          ? yearlyKmsOnContract.value
          : this.yearlyKmsOnContract),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientReferenceDto {
  const ClientReferenceDto({this.id, this.name});

  factory ClientReferenceDto.fromJson(Map<String, dynamic> json) =>
      _$ClientReferenceDtoFromJson(json);

  static const toJsonFactory = _$ClientReferenceDtoToJson;
  Map<String, dynamic> toJson() => _$ClientReferenceDtoToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ClientReferenceDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientReferenceDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ClientReferenceDtoExtension on ClientReferenceDto {
  ClientReferenceDto copyWith({int? id, String? name}) {
    return ClientReferenceDto(id: id ?? this.id, name: name ?? this.name);
  }

  ClientReferenceDto copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? name,
  }) {
    return ClientReferenceDto(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ConfigValue {
  const ConfigValue({this.id, this.key, this.lastUpdated, this.$value});

  factory ConfigValue.fromJson(Map<String, dynamic> json) =>
      _$ConfigValueFromJson(json);

  static const toJsonFactory = _$ConfigValueToJson;
  Map<String, dynamic> toJson() => _$ConfigValueToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @JsonKey(name: 'value')
  final String? $value;
  static const fromJsonFactory = _$ConfigValueFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ConfigValue &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdated,
                  lastUpdated,
                )) &&
            (identical(other.$value, $value) ||
                const DeepCollectionEquality().equals(other.$value, $value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash($value) ^
      runtimeType.hashCode;
}

extension $ConfigValueExtension on ConfigValue {
  ConfigValue copyWith({
    String? id,
    String? key,
    DateTime? lastUpdated,
    String? $value,
  }) {
    return ConfigValue(
      id: id ?? this.id,
      key: key ?? this.key,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      $value: $value ?? this.$value,
    );
  }

  ConfigValue copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<String?>? key,
    Wrapped<DateTime?>? lastUpdated,
    Wrapped<String?>? $value,
  }) {
    return ConfigValue(
      id: (id != null ? id.value : this.id),
      key: (key != null ? key.value : this.key),
      lastUpdated: (lastUpdated != null ? lastUpdated.value : this.lastUpdated),
      $value: ($value != null ? $value.value : this.$value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ContractUser {
  const ContractUser({
    this.boxNumber,
    this.city,
    this.dateCurrentLicense,
    this.dateLicenseUntil,
    this.dateOfBirth,
    this.documentLinks,
    this.email,
    this.enabled,
    this.firstName,
    this.houseNumber,
    this.id,
    this.lastName,
    this.licenseNum,
    this.licenseType,
    this.nationality,
    this.nrOfAccidents,
    this.phoneNumber,
    this.postalCode,
    this.sofBattRemoteId,
    this.streetname,
    this.convictions,
    this.subscriptions,
    this.verifiedCellPhoneNumber,
  });

  factory ContractUser.fromJson(Map<String, dynamic> json) =>
      _$ContractUserFromJson(json);

  static const toJsonFactory = _$ContractUserToJson;
  Map<String, dynamic> toJson() => _$ContractUserToJson(this);

  @JsonKey(name: 'boxNumber')
  final String? boxNumber;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'dateCurrentLicense')
  final String? dateCurrentLicense;
  @JsonKey(name: 'dateLicenseUntil')
  final String? dateLicenseUntil;
  @JsonKey(name: 'dateOfBirth')
  final String? dateOfBirth;
  @JsonKey(name: 'documentLinks', defaultValue: <String>[])
  final List<String>? documentLinks;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'enabled')
  final bool? enabled;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'houseNumber')
  final String? houseNumber;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'licenseNum')
  final String? licenseNum;
  @JsonKey(name: 'licenseType')
  final int? licenseType;
  @JsonKey(name: 'nationality')
  final String? nationality;
  @JsonKey(name: 'nrOfAccidents')
  final int? nrOfAccidents;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'sofBattRemoteId')
  final String? sofBattRemoteId;
  @JsonKey(name: 'streetname')
  final String? streetname;
  @JsonKey(name: 'convictions')
  final Convictions? convictions;
  @JsonKey(name: 'subscriptions', defaultValue: <Subscription>[])
  final List<Subscription>? subscriptions;
  @JsonKey(name: 'verifiedCellPhoneNumber')
  final bool? verifiedCellPhoneNumber;
  static const fromJsonFactory = _$ContractUserFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContractUser &&
            (identical(other.boxNumber, boxNumber) ||
                const DeepCollectionEquality().equals(
                  other.boxNumber,
                  boxNumber,
                )) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.dateCurrentLicense, dateCurrentLicense) ||
                const DeepCollectionEquality().equals(
                  other.dateCurrentLicense,
                  dateCurrentLicense,
                )) &&
            (identical(other.dateLicenseUntil, dateLicenseUntil) ||
                const DeepCollectionEquality().equals(
                  other.dateLicenseUntil,
                  dateLicenseUntil,
                )) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality().equals(
                  other.dateOfBirth,
                  dateOfBirth,
                )) &&
            (identical(other.documentLinks, documentLinks) ||
                const DeepCollectionEquality().equals(
                  other.documentLinks,
                  documentLinks,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality().equals(
                  other.enabled,
                  enabled,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality().equals(
                  other.houseNumber,
                  houseNumber,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.licenseNum, licenseNum) ||
                const DeepCollectionEquality().equals(
                  other.licenseNum,
                  licenseNum,
                )) &&
            (identical(other.licenseType, licenseType) ||
                const DeepCollectionEquality().equals(
                  other.licenseType,
                  licenseType,
                )) &&
            (identical(other.nationality, nationality) ||
                const DeepCollectionEquality().equals(
                  other.nationality,
                  nationality,
                )) &&
            (identical(other.nrOfAccidents, nrOfAccidents) ||
                const DeepCollectionEquality().equals(
                  other.nrOfAccidents,
                  nrOfAccidents,
                )) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality().equals(
                  other.postalCode,
                  postalCode,
                )) &&
            (identical(other.sofBattRemoteId, sofBattRemoteId) ||
                const DeepCollectionEquality().equals(
                  other.sofBattRemoteId,
                  sofBattRemoteId,
                )) &&
            (identical(other.streetname, streetname) ||
                const DeepCollectionEquality().equals(
                  other.streetname,
                  streetname,
                )) &&
            (identical(other.convictions, convictions) ||
                const DeepCollectionEquality().equals(
                  other.convictions,
                  convictions,
                )) &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality().equals(
                  other.subscriptions,
                  subscriptions,
                )) &&
            (identical(
                  other.verifiedCellPhoneNumber,
                  verifiedCellPhoneNumber,
                ) ||
                const DeepCollectionEquality().equals(
                  other.verifiedCellPhoneNumber,
                  verifiedCellPhoneNumber,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(boxNumber) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(dateCurrentLicense) ^
      const DeepCollectionEquality().hash(dateLicenseUntil) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(documentLinks) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(houseNumber) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(licenseNum) ^
      const DeepCollectionEquality().hash(licenseType) ^
      const DeepCollectionEquality().hash(nationality) ^
      const DeepCollectionEquality().hash(nrOfAccidents) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(sofBattRemoteId) ^
      const DeepCollectionEquality().hash(streetname) ^
      const DeepCollectionEquality().hash(convictions) ^
      const DeepCollectionEquality().hash(subscriptions) ^
      const DeepCollectionEquality().hash(verifiedCellPhoneNumber) ^
      runtimeType.hashCode;
}

extension $ContractUserExtension on ContractUser {
  ContractUser copyWith({
    String? boxNumber,
    String? city,
    String? dateCurrentLicense,
    String? dateLicenseUntil,
    String? dateOfBirth,
    List<String>? documentLinks,
    String? email,
    bool? enabled,
    String? firstName,
    String? houseNumber,
    int? id,
    String? lastName,
    String? licenseNum,
    int? licenseType,
    String? nationality,
    int? nrOfAccidents,
    String? phoneNumber,
    String? postalCode,
    String? sofBattRemoteId,
    String? streetname,
    Convictions? convictions,
    List<Subscription>? subscriptions,
    bool? verifiedCellPhoneNumber,
  }) {
    return ContractUser(
      boxNumber: boxNumber ?? this.boxNumber,
      city: city ?? this.city,
      dateCurrentLicense: dateCurrentLicense ?? this.dateCurrentLicense,
      dateLicenseUntil: dateLicenseUntil ?? this.dateLicenseUntil,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      documentLinks: documentLinks ?? this.documentLinks,
      email: email ?? this.email,
      enabled: enabled ?? this.enabled,
      firstName: firstName ?? this.firstName,
      houseNumber: houseNumber ?? this.houseNumber,
      id: id ?? this.id,
      lastName: lastName ?? this.lastName,
      licenseNum: licenseNum ?? this.licenseNum,
      licenseType: licenseType ?? this.licenseType,
      nationality: nationality ?? this.nationality,
      nrOfAccidents: nrOfAccidents ?? this.nrOfAccidents,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      postalCode: postalCode ?? this.postalCode,
      sofBattRemoteId: sofBattRemoteId ?? this.sofBattRemoteId,
      streetname: streetname ?? this.streetname,
      convictions: convictions ?? this.convictions,
      subscriptions: subscriptions ?? this.subscriptions,
      verifiedCellPhoneNumber:
          verifiedCellPhoneNumber ?? this.verifiedCellPhoneNumber,
    );
  }

  ContractUser copyWithWrapped({
    Wrapped<String?>? boxNumber,
    Wrapped<String?>? city,
    Wrapped<String?>? dateCurrentLicense,
    Wrapped<String?>? dateLicenseUntil,
    Wrapped<String?>? dateOfBirth,
    Wrapped<List<String>?>? documentLinks,
    Wrapped<String?>? email,
    Wrapped<bool?>? enabled,
    Wrapped<String?>? firstName,
    Wrapped<String?>? houseNumber,
    Wrapped<int?>? id,
    Wrapped<String?>? lastName,
    Wrapped<String?>? licenseNum,
    Wrapped<int?>? licenseType,
    Wrapped<String?>? nationality,
    Wrapped<int?>? nrOfAccidents,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? postalCode,
    Wrapped<String?>? sofBattRemoteId,
    Wrapped<String?>? streetname,
    Wrapped<Convictions?>? convictions,
    Wrapped<List<Subscription>?>? subscriptions,
    Wrapped<bool?>? verifiedCellPhoneNumber,
  }) {
    return ContractUser(
      boxNumber: (boxNumber != null ? boxNumber.value : this.boxNumber),
      city: (city != null ? city.value : this.city),
      dateCurrentLicense: (dateCurrentLicense != null
          ? dateCurrentLicense.value
          : this.dateCurrentLicense),
      dateLicenseUntil: (dateLicenseUntil != null
          ? dateLicenseUntil.value
          : this.dateLicenseUntil),
      dateOfBirth: (dateOfBirth != null ? dateOfBirth.value : this.dateOfBirth),
      documentLinks: (documentLinks != null
          ? documentLinks.value
          : this.documentLinks),
      email: (email != null ? email.value : this.email),
      enabled: (enabled != null ? enabled.value : this.enabled),
      firstName: (firstName != null ? firstName.value : this.firstName),
      houseNumber: (houseNumber != null ? houseNumber.value : this.houseNumber),
      id: (id != null ? id.value : this.id),
      lastName: (lastName != null ? lastName.value : this.lastName),
      licenseNum: (licenseNum != null ? licenseNum.value : this.licenseNum),
      licenseType: (licenseType != null ? licenseType.value : this.licenseType),
      nationality: (nationality != null ? nationality.value : this.nationality),
      nrOfAccidents: (nrOfAccidents != null
          ? nrOfAccidents.value
          : this.nrOfAccidents),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      postalCode: (postalCode != null ? postalCode.value : this.postalCode),
      sofBattRemoteId: (sofBattRemoteId != null
          ? sofBattRemoteId.value
          : this.sofBattRemoteId),
      streetname: (streetname != null ? streetname.value : this.streetname),
      convictions: (convictions != null ? convictions.value : this.convictions),
      subscriptions: (subscriptions != null
          ? subscriptions.value
          : this.subscriptions),
      verifiedCellPhoneNumber: (verifiedCellPhoneNumber != null
          ? verifiedCellPhoneNumber.value
          : this.verifiedCellPhoneNumber),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Convictions {
  const Convictions({
    this.convictionBloodTestRefusal,
    this.convictionDrunk,
    this.convictionHitAndRun,
    this.convictionIntoxicated,
    this.convictionLicenseRevocation,
  });

  factory Convictions.fromJson(Map<String, dynamic> json) =>
      _$ConvictionsFromJson(json);

  static const toJsonFactory = _$ConvictionsToJson;
  Map<String, dynamic> toJson() => _$ConvictionsToJson(this);

  @JsonKey(name: 'convictionBloodTestRefusal')
  final bool? convictionBloodTestRefusal;
  @JsonKey(name: 'convictionDrunk')
  final bool? convictionDrunk;
  @JsonKey(name: 'convictionHitAndRun')
  final bool? convictionHitAndRun;
  @JsonKey(name: 'convictionIntoxicated')
  final bool? convictionIntoxicated;
  @JsonKey(name: 'convictionLicenseRevocation')
  final bool? convictionLicenseRevocation;
  static const fromJsonFactory = _$ConvictionsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Convictions &&
            (identical(
                  other.convictionBloodTestRefusal,
                  convictionBloodTestRefusal,
                ) ||
                const DeepCollectionEquality().equals(
                  other.convictionBloodTestRefusal,
                  convictionBloodTestRefusal,
                )) &&
            (identical(other.convictionDrunk, convictionDrunk) ||
                const DeepCollectionEquality().equals(
                  other.convictionDrunk,
                  convictionDrunk,
                )) &&
            (identical(other.convictionHitAndRun, convictionHitAndRun) ||
                const DeepCollectionEquality().equals(
                  other.convictionHitAndRun,
                  convictionHitAndRun,
                )) &&
            (identical(other.convictionIntoxicated, convictionIntoxicated) ||
                const DeepCollectionEquality().equals(
                  other.convictionIntoxicated,
                  convictionIntoxicated,
                )) &&
            (identical(
                  other.convictionLicenseRevocation,
                  convictionLicenseRevocation,
                ) ||
                const DeepCollectionEquality().equals(
                  other.convictionLicenseRevocation,
                  convictionLicenseRevocation,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(convictionBloodTestRefusal) ^
      const DeepCollectionEquality().hash(convictionDrunk) ^
      const DeepCollectionEquality().hash(convictionHitAndRun) ^
      const DeepCollectionEquality().hash(convictionIntoxicated) ^
      const DeepCollectionEquality().hash(convictionLicenseRevocation) ^
      runtimeType.hashCode;
}

extension $ConvictionsExtension on Convictions {
  Convictions copyWith({
    bool? convictionBloodTestRefusal,
    bool? convictionDrunk,
    bool? convictionHitAndRun,
    bool? convictionIntoxicated,
    bool? convictionLicenseRevocation,
  }) {
    return Convictions(
      convictionBloodTestRefusal:
          convictionBloodTestRefusal ?? this.convictionBloodTestRefusal,
      convictionDrunk: convictionDrunk ?? this.convictionDrunk,
      convictionHitAndRun: convictionHitAndRun ?? this.convictionHitAndRun,
      convictionIntoxicated:
          convictionIntoxicated ?? this.convictionIntoxicated,
      convictionLicenseRevocation:
          convictionLicenseRevocation ?? this.convictionLicenseRevocation,
    );
  }

  Convictions copyWithWrapped({
    Wrapped<bool?>? convictionBloodTestRefusal,
    Wrapped<bool?>? convictionDrunk,
    Wrapped<bool?>? convictionHitAndRun,
    Wrapped<bool?>? convictionIntoxicated,
    Wrapped<bool?>? convictionLicenseRevocation,
  }) {
    return Convictions(
      convictionBloodTestRefusal: (convictionBloodTestRefusal != null
          ? convictionBloodTestRefusal.value
          : this.convictionBloodTestRefusal),
      convictionDrunk: (convictionDrunk != null
          ? convictionDrunk.value
          : this.convictionDrunk),
      convictionHitAndRun: (convictionHitAndRun != null
          ? convictionHitAndRun.value
          : this.convictionHitAndRun),
      convictionIntoxicated: (convictionIntoxicated != null
          ? convictionIntoxicated.value
          : this.convictionIntoxicated),
      convictionLicenseRevocation: (convictionLicenseRevocation != null
          ? convictionLicenseRevocation.value
          : this.convictionLicenseRevocation),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateBodyStyleRequest {
  const CreateBodyStyleRequest({this.description, this.id});

  factory CreateBodyStyleRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBodyStyleRequestFromJson(json);

  static const toJsonFactory = _$CreateBodyStyleRequestToJson;
  Map<String, dynamic> toJson() => _$CreateBodyStyleRequestToJson(this);

  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$CreateBodyStyleRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateBodyStyleRequest &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $CreateBodyStyleRequestExtension on CreateBodyStyleRequest {
  CreateBodyStyleRequest copyWith({String? description, String? id}) {
    return CreateBodyStyleRequest(
      description: description ?? this.description,
      id: id ?? this.id,
    );
  }

  CreateBodyStyleRequest copyWithWrapped({
    Wrapped<String?>? description,
    Wrapped<String?>? id,
  }) {
    return CreateBodyStyleRequest(
      description: (description != null ? description.value : this.description),
      id: (id != null ? id.value : this.id),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateBooking {
  const CreateBooking({
    this.comments,
    required this.period,
    required this.vehicleId,
  });

  factory CreateBooking.fromJson(Map<String, dynamic> json) =>
      _$CreateBookingFromJson(json);

  static const toJsonFactory = _$CreateBookingToJson;
  Map<String, dynamic> toJson() => _$CreateBookingToJson(this);

  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'period')
  final Period period;
  @JsonKey(name: 'vehicleId')
  final String vehicleId;
  static const fromJsonFactory = _$CreateBookingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateBooking &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality().equals(
                  other.comments,
                  comments,
                )) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $CreateBookingExtension on CreateBooking {
  CreateBooking copyWith({
    String? comments,
    Period? period,
    String? vehicleId,
  }) {
    return CreateBooking(
      comments: comments ?? this.comments,
      period: period ?? this.period,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  CreateBooking copyWithWrapped({
    Wrapped<String?>? comments,
    Wrapped<Period>? period,
    Wrapped<String>? vehicleId,
  }) {
    return CreateBooking(
      comments: (comments != null ? comments.value : this.comments),
      period: (period != null ? period.value : this.period),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateBookingRequest {
  const CreateBookingRequest({
    required this.bookingPrice,
    this.comments,
    required this.period,
    required this.vehicleId,
  });

  factory CreateBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBookingRequestFromJson(json);

  static const toJsonFactory = _$CreateBookingRequestToJson;
  Map<String, dynamic> toJson() => _$CreateBookingRequestToJson(this);

  @JsonKey(name: 'bookingPrice')
  final BookingPrice bookingPrice;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'period')
  final Period period;
  @JsonKey(name: 'vehicleId')
  final String vehicleId;
  static const fromJsonFactory = _$CreateBookingRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateBookingRequest &&
            (identical(other.bookingPrice, bookingPrice) ||
                const DeepCollectionEquality().equals(
                  other.bookingPrice,
                  bookingPrice,
                )) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality().equals(
                  other.comments,
                  comments,
                )) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bookingPrice) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $CreateBookingRequestExtension on CreateBookingRequest {
  CreateBookingRequest copyWith({
    BookingPrice? bookingPrice,
    String? comments,
    Period? period,
    String? vehicleId,
  }) {
    return CreateBookingRequest(
      bookingPrice: bookingPrice ?? this.bookingPrice,
      comments: comments ?? this.comments,
      period: period ?? this.period,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  CreateBookingRequest copyWithWrapped({
    Wrapped<BookingPrice>? bookingPrice,
    Wrapped<String?>? comments,
    Wrapped<Period>? period,
    Wrapped<String>? vehicleId,
  }) {
    return CreateBookingRequest(
      bookingPrice: (bookingPrice != null
          ? bookingPrice.value
          : this.bookingPrice),
      comments: (comments != null ? comments.value : this.comments),
      period: (period != null ? period.value : this.period),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateClient {
  const CreateClient({
    required this.city,
    required this.country,
    required this.email,
    required this.houseNumber,
    required this.name,
    required this.postalCode,
    required this.street,
    this.vat,
  });

  factory CreateClient.fromJson(Map<String, dynamic> json) =>
      _$CreateClientFromJson(json);

  static const toJsonFactory = _$CreateClientToJson;
  Map<String, dynamic> toJson() => _$CreateClientToJson(this);

  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'houseNumber')
  final String houseNumber;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'postalCode')
  final String postalCode;
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'vat')
  final String? vat;
  static const fromJsonFactory = _$CreateClientFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateClient &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality().equals(
                  other.houseNumber,
                  houseNumber,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality().equals(
                  other.postalCode,
                  postalCode,
                )) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(houseNumber) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(vat) ^
      runtimeType.hashCode;
}

extension $CreateClientExtension on CreateClient {
  CreateClient copyWith({
    String? city,
    String? country,
    String? email,
    String? houseNumber,
    String? name,
    String? postalCode,
    String? street,
    String? vat,
  }) {
    return CreateClient(
      city: city ?? this.city,
      country: country ?? this.country,
      email: email ?? this.email,
      houseNumber: houseNumber ?? this.houseNumber,
      name: name ?? this.name,
      postalCode: postalCode ?? this.postalCode,
      street: street ?? this.street,
      vat: vat ?? this.vat,
    );
  }

  CreateClient copyWithWrapped({
    Wrapped<String>? city,
    Wrapped<String>? country,
    Wrapped<String>? email,
    Wrapped<String>? houseNumber,
    Wrapped<String>? name,
    Wrapped<String>? postalCode,
    Wrapped<String>? street,
    Wrapped<String?>? vat,
  }) {
    return CreateClient(
      city: (city != null ? city.value : this.city),
      country: (country != null ? country.value : this.country),
      email: (email != null ? email.value : this.email),
      houseNumber: (houseNumber != null ? houseNumber.value : this.houseNumber),
      name: (name != null ? name.value : this.name),
      postalCode: (postalCode != null ? postalCode.value : this.postalCode),
      street: (street != null ? street.value : this.street),
      vat: (vat != null ? vat.value : this.vat),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateIssueRequest {
  const CreateIssueRequest({
    this.assignedToRemoteId,
    this.bookingId,
    this.description,
    this.priority,
    required this.title,
    this.userRemoteId,
    this.vehicleId,
  });

  factory CreateIssueRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateIssueRequestFromJson(json);

  static const toJsonFactory = _$CreateIssueRequestToJson;
  Map<String, dynamic> toJson() => _$CreateIssueRequestToJson(this);

  @JsonKey(name: 'assignedToRemoteId')
  final String? assignedToRemoteId;
  @JsonKey(name: 'bookingId')
  final String? bookingId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(
    name: 'priority',
    toJson: createIssueRequestPriorityNullableToJson,
    fromJson: createIssueRequestPriorityNullableFromJson,
  )
  final enums.CreateIssueRequestPriority? priority;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'userRemoteId')
  final String? userRemoteId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$CreateIssueRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateIssueRequest &&
            (identical(other.assignedToRemoteId, assignedToRemoteId) ||
                const DeepCollectionEquality().equals(
                  other.assignedToRemoteId,
                  assignedToRemoteId,
                )) &&
            (identical(other.bookingId, bookingId) ||
                const DeepCollectionEquality().equals(
                  other.bookingId,
                  bookingId,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality().equals(
                  other.priority,
                  priority,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.userRemoteId, userRemoteId) ||
                const DeepCollectionEquality().equals(
                  other.userRemoteId,
                  userRemoteId,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(assignedToRemoteId) ^
      const DeepCollectionEquality().hash(bookingId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(userRemoteId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $CreateIssueRequestExtension on CreateIssueRequest {
  CreateIssueRequest copyWith({
    String? assignedToRemoteId,
    String? bookingId,
    String? description,
    enums.CreateIssueRequestPriority? priority,
    String? title,
    String? userRemoteId,
    String? vehicleId,
  }) {
    return CreateIssueRequest(
      assignedToRemoteId: assignedToRemoteId ?? this.assignedToRemoteId,
      bookingId: bookingId ?? this.bookingId,
      description: description ?? this.description,
      priority: priority ?? this.priority,
      title: title ?? this.title,
      userRemoteId: userRemoteId ?? this.userRemoteId,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  CreateIssueRequest copyWithWrapped({
    Wrapped<String?>? assignedToRemoteId,
    Wrapped<String?>? bookingId,
    Wrapped<String?>? description,
    Wrapped<enums.CreateIssueRequestPriority?>? priority,
    Wrapped<String>? title,
    Wrapped<String?>? userRemoteId,
    Wrapped<String?>? vehicleId,
  }) {
    return CreateIssueRequest(
      assignedToRemoteId: (assignedToRemoteId != null
          ? assignedToRemoteId.value
          : this.assignedToRemoteId),
      bookingId: (bookingId != null ? bookingId.value : this.bookingId),
      description: (description != null ? description.value : this.description),
      priority: (priority != null ? priority.value : this.priority),
      title: (title != null ? title.value : this.title),
      userRemoteId: (userRemoteId != null
          ? userRemoteId.value
          : this.userRemoteId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateNewUsageContractRequest {
  const CreateNewUsageContractRequest({
    this.commitmentAmountInclVat,
    this.formula,
    this.memo,
    this.startDate,
  });

  factory CreateNewUsageContractRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateNewUsageContractRequestFromJson(json);

  static const toJsonFactory = _$CreateNewUsageContractRequestToJson;
  Map<String, dynamic> toJson() => _$CreateNewUsageContractRequestToJson(this);

  @JsonKey(name: 'commitmentAmountInclVat')
  final double? commitmentAmountInclVat;
  @JsonKey(
    name: 'formula',
    toJson: clientContractFormulaNullableToJson,
    fromJson: clientContractFormulaNullableFromJson,
  )
  final enums.ClientContractFormula? formula;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(name: 'startDate', toJson: _dateToJson)
  final DateTime? startDate;
  static const fromJsonFactory = _$CreateNewUsageContractRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateNewUsageContractRequest &&
            (identical(
                  other.commitmentAmountInclVat,
                  commitmentAmountInclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.commitmentAmountInclVat,
                  commitmentAmountInclVat,
                )) &&
            (identical(other.formula, formula) ||
                const DeepCollectionEquality().equals(
                  other.formula,
                  formula,
                )) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(commitmentAmountInclVat) ^
      const DeepCollectionEquality().hash(formula) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(startDate) ^
      runtimeType.hashCode;
}

extension $CreateNewUsageContractRequestExtension
    on CreateNewUsageContractRequest {
  CreateNewUsageContractRequest copyWith({
    double? commitmentAmountInclVat,
    enums.ClientContractFormula? formula,
    String? memo,
    DateTime? startDate,
  }) {
    return CreateNewUsageContractRequest(
      commitmentAmountInclVat:
          commitmentAmountInclVat ?? this.commitmentAmountInclVat,
      formula: formula ?? this.formula,
      memo: memo ?? this.memo,
      startDate: startDate ?? this.startDate,
    );
  }

  CreateNewUsageContractRequest copyWithWrapped({
    Wrapped<double?>? commitmentAmountInclVat,
    Wrapped<enums.ClientContractFormula?>? formula,
    Wrapped<String?>? memo,
    Wrapped<DateTime?>? startDate,
  }) {
    return CreateNewUsageContractRequest(
      commitmentAmountInclVat: (commitmentAmountInclVat != null
          ? commitmentAmountInclVat.value
          : this.commitmentAmountInclVat),
      formula: (formula != null ? formula.value : this.formula),
      memo: (memo != null ? memo.value : this.memo),
      startDate: (startDate != null ? startDate.value : this.startDate),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateNonAvailabilityRequest {
  const CreateNonAvailabilityRequest({
    required this.period,
    required this.vehicleId,
  });

  factory CreateNonAvailabilityRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateNonAvailabilityRequestFromJson(json);

  static const toJsonFactory = _$CreateNonAvailabilityRequestToJson;
  Map<String, dynamic> toJson() => _$CreateNonAvailabilityRequestToJson(this);

  @JsonKey(name: 'period')
  final Period period;
  @JsonKey(name: 'vehicleId')
  final String vehicleId;
  static const fromJsonFactory = _$CreateNonAvailabilityRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateNonAvailabilityRequest &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $CreateNonAvailabilityRequestExtension
    on CreateNonAvailabilityRequest {
  CreateNonAvailabilityRequest copyWith({Period? period, String? vehicleId}) {
    return CreateNonAvailabilityRequest(
      period: period ?? this.period,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  CreateNonAvailabilityRequest copyWithWrapped({
    Wrapped<Period>? period,
    Wrapped<String>? vehicleId,
  }) {
    return CreateNonAvailabilityRequest(
      period: (period != null ? period.value : this.period),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateRecurringNonAvailabilityRequest {
  const CreateRecurringNonAvailabilityRequest({
    this.nonAvailabilityRequest,
    this.schedule,
  });

  factory CreateRecurringNonAvailabilityRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateRecurringNonAvailabilityRequestFromJson(json);

  static const toJsonFactory = _$CreateRecurringNonAvailabilityRequestToJson;
  Map<String, dynamic> toJson() =>
      _$CreateRecurringNonAvailabilityRequestToJson(this);

  @JsonKey(name: 'nonAvailabilityRequest')
  final CreateNonAvailabilityRequest? nonAvailabilityRequest;
  @JsonKey(name: 'schedule')
  final RecurringSchedule? schedule;
  static const fromJsonFactory =
      _$CreateRecurringNonAvailabilityRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateRecurringNonAvailabilityRequest &&
            (identical(other.nonAvailabilityRequest, nonAvailabilityRequest) ||
                const DeepCollectionEquality().equals(
                  other.nonAvailabilityRequest,
                  nonAvailabilityRequest,
                )) &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality().equals(
                  other.schedule,
                  schedule,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(nonAvailabilityRequest) ^
      const DeepCollectionEquality().hash(schedule) ^
      runtimeType.hashCode;
}

extension $CreateRecurringNonAvailabilityRequestExtension
    on CreateRecurringNonAvailabilityRequest {
  CreateRecurringNonAvailabilityRequest copyWith({
    CreateNonAvailabilityRequest? nonAvailabilityRequest,
    RecurringSchedule? schedule,
  }) {
    return CreateRecurringNonAvailabilityRequest(
      nonAvailabilityRequest:
          nonAvailabilityRequest ?? this.nonAvailabilityRequest,
      schedule: schedule ?? this.schedule,
    );
  }

  CreateRecurringNonAvailabilityRequest copyWithWrapped({
    Wrapped<CreateNonAvailabilityRequest?>? nonAvailabilityRequest,
    Wrapped<RecurringSchedule?>? schedule,
  }) {
    return CreateRecurringNonAvailabilityRequest(
      nonAvailabilityRequest: (nonAvailabilityRequest != null
          ? nonAvailabilityRequest.value
          : this.nonAvailabilityRequest),
      schedule: (schedule != null ? schedule.value : this.schedule),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateUserRequest {
  const CreateUserRequest({required this.email, required this.remoteId});

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);

  static const toJsonFactory = _$CreateUserRequestToJson;
  Map<String, dynamic> toJson() => _$CreateUserRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'remoteId')
  final String remoteId;
  static const fromJsonFactory = _$CreateUserRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateUserRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.remoteId, remoteId) ||
                const DeepCollectionEquality().equals(
                  other.remoteId,
                  remoteId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(remoteId) ^
      runtimeType.hashCode;
}

extension $CreateUserRequestExtension on CreateUserRequest {
  CreateUserRequest copyWith({String? email, String? remoteId}) {
    return CreateUserRequest(
      email: email ?? this.email,
      remoteId: remoteId ?? this.remoteId,
    );
  }

  CreateUserRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? remoteId,
  }) {
    return CreateUserRequest(
      email: (email != null ? email.value : this.email),
      remoteId: (remoteId != null ? remoteId.value : this.remoteId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicleContract {
  const CreateVehicleContract({
    required this.battMaxType,
    this.battOrderNumber,
    this.billingType,
    this.clientContractId,
    required this.clientId,
    required this.contractDate,
    this.costForAdditionalKmsExclVat,
    this.creditedDayPriceExclVat,
    this.creditedKmPriceExclVat,
    required this.effectiveStartDate,
    this.mainUserId,
    this.mileageKmAtEndOfContract,
    this.mileageKmAtStartOfContract,
    this.monthlyInsurance,
    required this.monthlyLeaseAmountExclVat,
    this.monthlyMaxInvoiceAmountExclVat,
    this.monthlyPrefundElectricityExclVat,
    this.numberOfMonths,
    this.paidStartupCost,
    this.startDate,
    required this.vehicleId,
    this.yearlyKmsOnContract,
  });

  factory CreateVehicleContract.fromJson(Map<String, dynamic> json) =>
      _$CreateVehicleContractFromJson(json);

  static const toJsonFactory = _$CreateVehicleContractToJson;
  Map<String, dynamic> toJson() => _$CreateVehicleContractToJson(this);

  @JsonKey(
    name: 'battMaxType',
    toJson: createVehicleContractBattMaxTypeToJson,
    fromJson: createVehicleContractBattMaxTypeFromJson,
  )
  final enums.CreateVehicleContractBattMaxType battMaxType;
  @JsonKey(name: 'battOrderNumber')
  final String? battOrderNumber;
  @JsonKey(
    name: 'billingType',
    toJson: createVehicleContractBillingTypeNullableToJson,
    fromJson: createVehicleContractBillingTypeNullableFromJson,
  )
  final enums.CreateVehicleContractBillingType? billingType;
  @JsonKey(name: 'clientContractId')
  final int? clientContractId;
  @JsonKey(name: 'clientId')
  final int clientId;
  @JsonKey(name: 'contractDate')
  final DateTime contractDate;
  @JsonKey(name: 'costForAdditionalKmsExclVat')
  final double? costForAdditionalKmsExclVat;
  @JsonKey(name: 'creditedDayPriceExclVat')
  final double? creditedDayPriceExclVat;
  @JsonKey(name: 'creditedKmPriceExclVat')
  final double? creditedKmPriceExclVat;
  @JsonKey(name: 'effectiveStartDate')
  final DateTime effectiveStartDate;
  @JsonKey(name: 'mainUserId')
  final int? mainUserId;
  @JsonKey(name: 'mileageKmAtEndOfContract')
  final int? mileageKmAtEndOfContract;
  @JsonKey(name: 'mileageKmAtStartOfContract')
  final int? mileageKmAtStartOfContract;
  @JsonKey(name: 'monthlyInsurance')
  final double? monthlyInsurance;
  @JsonKey(name: 'monthlyLeaseAmountExclVat')
  final double monthlyLeaseAmountExclVat;
  @JsonKey(name: 'monthlyMaxInvoiceAmountExclVat')
  final double? monthlyMaxInvoiceAmountExclVat;
  @JsonKey(name: 'monthlyPrefundElectricityExclVat')
  final double? monthlyPrefundElectricityExclVat;
  @JsonKey(name: 'numberOfMonths')
  final int? numberOfMonths;
  @JsonKey(name: 'paidStartupCost')
  final double? paidStartupCost;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'vehicleId')
  final String vehicleId;
  @JsonKey(name: 'yearlyKmsOnContract')
  final int? yearlyKmsOnContract;
  static const fromJsonFactory = _$CreateVehicleContractFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateVehicleContract &&
            (identical(other.battMaxType, battMaxType) ||
                const DeepCollectionEquality().equals(
                  other.battMaxType,
                  battMaxType,
                )) &&
            (identical(other.battOrderNumber, battOrderNumber) ||
                const DeepCollectionEquality().equals(
                  other.battOrderNumber,
                  battOrderNumber,
                )) &&
            (identical(other.billingType, billingType) ||
                const DeepCollectionEquality().equals(
                  other.billingType,
                  billingType,
                )) &&
            (identical(other.clientContractId, clientContractId) ||
                const DeepCollectionEquality().equals(
                  other.clientContractId,
                  clientContractId,
                )) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality().equals(
                  other.clientId,
                  clientId,
                )) &&
            (identical(other.contractDate, contractDate) ||
                const DeepCollectionEquality().equals(
                  other.contractDate,
                  contractDate,
                )) &&
            (identical(
                  other.costForAdditionalKmsExclVat,
                  costForAdditionalKmsExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.costForAdditionalKmsExclVat,
                  costForAdditionalKmsExclVat,
                )) &&
            (identical(
                  other.creditedDayPriceExclVat,
                  creditedDayPriceExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.creditedDayPriceExclVat,
                  creditedDayPriceExclVat,
                )) &&
            (identical(other.creditedKmPriceExclVat, creditedKmPriceExclVat) ||
                const DeepCollectionEquality().equals(
                  other.creditedKmPriceExclVat,
                  creditedKmPriceExclVat,
                )) &&
            (identical(other.effectiveStartDate, effectiveStartDate) ||
                const DeepCollectionEquality().equals(
                  other.effectiveStartDate,
                  effectiveStartDate,
                )) &&
            (identical(other.mainUserId, mainUserId) ||
                const DeepCollectionEquality().equals(
                  other.mainUserId,
                  mainUserId,
                )) &&
            (identical(
                  other.mileageKmAtEndOfContract,
                  mileageKmAtEndOfContract,
                ) ||
                const DeepCollectionEquality().equals(
                  other.mileageKmAtEndOfContract,
                  mileageKmAtEndOfContract,
                )) &&
            (identical(
                  other.mileageKmAtStartOfContract,
                  mileageKmAtStartOfContract,
                ) ||
                const DeepCollectionEquality().equals(
                  other.mileageKmAtStartOfContract,
                  mileageKmAtStartOfContract,
                )) &&
            (identical(other.monthlyInsurance, monthlyInsurance) ||
                const DeepCollectionEquality().equals(
                  other.monthlyInsurance,
                  monthlyInsurance,
                )) &&
            (identical(
                  other.monthlyLeaseAmountExclVat,
                  monthlyLeaseAmountExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.monthlyLeaseAmountExclVat,
                  monthlyLeaseAmountExclVat,
                )) &&
            (identical(
                  other.monthlyMaxInvoiceAmountExclVat,
                  monthlyMaxInvoiceAmountExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.monthlyMaxInvoiceAmountExclVat,
                  monthlyMaxInvoiceAmountExclVat,
                )) &&
            (identical(
                  other.monthlyPrefundElectricityExclVat,
                  monthlyPrefundElectricityExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.monthlyPrefundElectricityExclVat,
                  monthlyPrefundElectricityExclVat,
                )) &&
            (identical(other.numberOfMonths, numberOfMonths) ||
                const DeepCollectionEquality().equals(
                  other.numberOfMonths,
                  numberOfMonths,
                )) &&
            (identical(other.paidStartupCost, paidStartupCost) ||
                const DeepCollectionEquality().equals(
                  other.paidStartupCost,
                  paidStartupCost,
                )) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )) &&
            (identical(other.yearlyKmsOnContract, yearlyKmsOnContract) ||
                const DeepCollectionEquality().equals(
                  other.yearlyKmsOnContract,
                  yearlyKmsOnContract,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(battMaxType) ^
      const DeepCollectionEquality().hash(battOrderNumber) ^
      const DeepCollectionEquality().hash(billingType) ^
      const DeepCollectionEquality().hash(clientContractId) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(contractDate) ^
      const DeepCollectionEquality().hash(costForAdditionalKmsExclVat) ^
      const DeepCollectionEquality().hash(creditedDayPriceExclVat) ^
      const DeepCollectionEquality().hash(creditedKmPriceExclVat) ^
      const DeepCollectionEquality().hash(effectiveStartDate) ^
      const DeepCollectionEquality().hash(mainUserId) ^
      const DeepCollectionEquality().hash(mileageKmAtEndOfContract) ^
      const DeepCollectionEquality().hash(mileageKmAtStartOfContract) ^
      const DeepCollectionEquality().hash(monthlyInsurance) ^
      const DeepCollectionEquality().hash(monthlyLeaseAmountExclVat) ^
      const DeepCollectionEquality().hash(monthlyMaxInvoiceAmountExclVat) ^
      const DeepCollectionEquality().hash(monthlyPrefundElectricityExclVat) ^
      const DeepCollectionEquality().hash(numberOfMonths) ^
      const DeepCollectionEquality().hash(paidStartupCost) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(yearlyKmsOnContract) ^
      runtimeType.hashCode;
}

extension $CreateVehicleContractExtension on CreateVehicleContract {
  CreateVehicleContract copyWith({
    enums.CreateVehicleContractBattMaxType? battMaxType,
    String? battOrderNumber,
    enums.CreateVehicleContractBillingType? billingType,
    int? clientContractId,
    int? clientId,
    DateTime? contractDate,
    double? costForAdditionalKmsExclVat,
    double? creditedDayPriceExclVat,
    double? creditedKmPriceExclVat,
    DateTime? effectiveStartDate,
    int? mainUserId,
    int? mileageKmAtEndOfContract,
    int? mileageKmAtStartOfContract,
    double? monthlyInsurance,
    double? monthlyLeaseAmountExclVat,
    double? monthlyMaxInvoiceAmountExclVat,
    double? monthlyPrefundElectricityExclVat,
    int? numberOfMonths,
    double? paidStartupCost,
    DateTime? startDate,
    String? vehicleId,
    int? yearlyKmsOnContract,
  }) {
    return CreateVehicleContract(
      battMaxType: battMaxType ?? this.battMaxType,
      battOrderNumber: battOrderNumber ?? this.battOrderNumber,
      billingType: billingType ?? this.billingType,
      clientContractId: clientContractId ?? this.clientContractId,
      clientId: clientId ?? this.clientId,
      contractDate: contractDate ?? this.contractDate,
      costForAdditionalKmsExclVat:
          costForAdditionalKmsExclVat ?? this.costForAdditionalKmsExclVat,
      creditedDayPriceExclVat:
          creditedDayPriceExclVat ?? this.creditedDayPriceExclVat,
      creditedKmPriceExclVat:
          creditedKmPriceExclVat ?? this.creditedKmPriceExclVat,
      effectiveStartDate: effectiveStartDate ?? this.effectiveStartDate,
      mainUserId: mainUserId ?? this.mainUserId,
      mileageKmAtEndOfContract:
          mileageKmAtEndOfContract ?? this.mileageKmAtEndOfContract,
      mileageKmAtStartOfContract:
          mileageKmAtStartOfContract ?? this.mileageKmAtStartOfContract,
      monthlyInsurance: monthlyInsurance ?? this.monthlyInsurance,
      monthlyLeaseAmountExclVat:
          monthlyLeaseAmountExclVat ?? this.monthlyLeaseAmountExclVat,
      monthlyMaxInvoiceAmountExclVat:
          monthlyMaxInvoiceAmountExclVat ?? this.monthlyMaxInvoiceAmountExclVat,
      monthlyPrefundElectricityExclVat:
          monthlyPrefundElectricityExclVat ??
          this.monthlyPrefundElectricityExclVat,
      numberOfMonths: numberOfMonths ?? this.numberOfMonths,
      paidStartupCost: paidStartupCost ?? this.paidStartupCost,
      startDate: startDate ?? this.startDate,
      vehicleId: vehicleId ?? this.vehicleId,
      yearlyKmsOnContract: yearlyKmsOnContract ?? this.yearlyKmsOnContract,
    );
  }

  CreateVehicleContract copyWithWrapped({
    Wrapped<enums.CreateVehicleContractBattMaxType>? battMaxType,
    Wrapped<String?>? battOrderNumber,
    Wrapped<enums.CreateVehicleContractBillingType?>? billingType,
    Wrapped<int?>? clientContractId,
    Wrapped<int>? clientId,
    Wrapped<DateTime>? contractDate,
    Wrapped<double?>? costForAdditionalKmsExclVat,
    Wrapped<double?>? creditedDayPriceExclVat,
    Wrapped<double?>? creditedKmPriceExclVat,
    Wrapped<DateTime>? effectiveStartDate,
    Wrapped<int?>? mainUserId,
    Wrapped<int?>? mileageKmAtEndOfContract,
    Wrapped<int?>? mileageKmAtStartOfContract,
    Wrapped<double?>? monthlyInsurance,
    Wrapped<double>? monthlyLeaseAmountExclVat,
    Wrapped<double?>? monthlyMaxInvoiceAmountExclVat,
    Wrapped<double?>? monthlyPrefundElectricityExclVat,
    Wrapped<int?>? numberOfMonths,
    Wrapped<double?>? paidStartupCost,
    Wrapped<DateTime?>? startDate,
    Wrapped<String>? vehicleId,
    Wrapped<int?>? yearlyKmsOnContract,
  }) {
    return CreateVehicleContract(
      battMaxType: (battMaxType != null ? battMaxType.value : this.battMaxType),
      battOrderNumber: (battOrderNumber != null
          ? battOrderNumber.value
          : this.battOrderNumber),
      billingType: (billingType != null ? billingType.value : this.billingType),
      clientContractId: (clientContractId != null
          ? clientContractId.value
          : this.clientContractId),
      clientId: (clientId != null ? clientId.value : this.clientId),
      contractDate: (contractDate != null
          ? contractDate.value
          : this.contractDate),
      costForAdditionalKmsExclVat: (costForAdditionalKmsExclVat != null
          ? costForAdditionalKmsExclVat.value
          : this.costForAdditionalKmsExclVat),
      creditedDayPriceExclVat: (creditedDayPriceExclVat != null
          ? creditedDayPriceExclVat.value
          : this.creditedDayPriceExclVat),
      creditedKmPriceExclVat: (creditedKmPriceExclVat != null
          ? creditedKmPriceExclVat.value
          : this.creditedKmPriceExclVat),
      effectiveStartDate: (effectiveStartDate != null
          ? effectiveStartDate.value
          : this.effectiveStartDate),
      mainUserId: (mainUserId != null ? mainUserId.value : this.mainUserId),
      mileageKmAtEndOfContract: (mileageKmAtEndOfContract != null
          ? mileageKmAtEndOfContract.value
          : this.mileageKmAtEndOfContract),
      mileageKmAtStartOfContract: (mileageKmAtStartOfContract != null
          ? mileageKmAtStartOfContract.value
          : this.mileageKmAtStartOfContract),
      monthlyInsurance: (monthlyInsurance != null
          ? monthlyInsurance.value
          : this.monthlyInsurance),
      monthlyLeaseAmountExclVat: (monthlyLeaseAmountExclVat != null
          ? monthlyLeaseAmountExclVat.value
          : this.monthlyLeaseAmountExclVat),
      monthlyMaxInvoiceAmountExclVat: (monthlyMaxInvoiceAmountExclVat != null
          ? monthlyMaxInvoiceAmountExclVat.value
          : this.monthlyMaxInvoiceAmountExclVat),
      monthlyPrefundElectricityExclVat:
          (monthlyPrefundElectricityExclVat != null
          ? monthlyPrefundElectricityExclVat.value
          : this.monthlyPrefundElectricityExclVat),
      numberOfMonths: (numberOfMonths != null
          ? numberOfMonths.value
          : this.numberOfMonths),
      paidStartupCost: (paidStartupCost != null
          ? paidStartupCost.value
          : this.paidStartupCost),
      startDate: (startDate != null ? startDate.value : this.startDate),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
      yearlyKmsOnContract: (yearlyKmsOnContract != null
          ? yearlyKmsOnContract.value
          : this.yearlyKmsOnContract),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicleGroupRequest {
  const CreateVehicleGroupRequest({this.id, this.name});

  factory CreateVehicleGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateVehicleGroupRequestFromJson(json);

  static const toJsonFactory = _$CreateVehicleGroupRequestToJson;
  Map<String, dynamic> toJson() => _$CreateVehicleGroupRequestToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$CreateVehicleGroupRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateVehicleGroupRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CreateVehicleGroupRequestExtension on CreateVehicleGroupRequest {
  CreateVehicleGroupRequest copyWith({String? id, String? name}) {
    return CreateVehicleGroupRequest(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  CreateVehicleGroupRequest copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<String?>? name,
  }) {
    return CreateVehicleGroupRequest(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicleModelRequest {
  const CreateVehicleModelRequest({this.bodyStyleId, this.brandId, this.name});

  factory CreateVehicleModelRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateVehicleModelRequestFromJson(json);

  static const toJsonFactory = _$CreateVehicleModelRequestToJson;
  Map<String, dynamic> toJson() => _$CreateVehicleModelRequestToJson(this);

  @JsonKey(name: 'bodyStyleId')
  final String? bodyStyleId;
  @JsonKey(name: 'brandId')
  final String? brandId;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$CreateVehicleModelRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateVehicleModelRequest &&
            (identical(other.bodyStyleId, bodyStyleId) ||
                const DeepCollectionEquality().equals(
                  other.bodyStyleId,
                  bodyStyleId,
                )) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality().equals(
                  other.brandId,
                  brandId,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bodyStyleId) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CreateVehicleModelRequestExtension on CreateVehicleModelRequest {
  CreateVehicleModelRequest copyWith({
    String? bodyStyleId,
    String? brandId,
    String? name,
  }) {
    return CreateVehicleModelRequest(
      bodyStyleId: bodyStyleId ?? this.bodyStyleId,
      brandId: brandId ?? this.brandId,
      name: name ?? this.name,
    );
  }

  CreateVehicleModelRequest copyWithWrapped({
    Wrapped<String?>? bodyStyleId,
    Wrapped<String?>? brandId,
    Wrapped<String?>? name,
  }) {
    return CreateVehicleModelRequest(
      bodyStyleId: (bodyStyleId != null ? bodyStyleId.value : this.bodyStyleId),
      brandId: (brandId != null ? brandId.value : this.brandId),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicleModelsRatesRequest {
  const CreateVehicleModelsRatesRequest({
    this.dayPrice,
    required this.hourPrice,
    required this.kmPrice,
    required this.modelIds,
    this.overrideDefaultPeriod,
    required this.validFrom,
    this.validUntil,
  });

  factory CreateVehicleModelsRatesRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateVehicleModelsRatesRequestFromJson(json);

  static const toJsonFactory = _$CreateVehicleModelsRatesRequestToJson;
  Map<String, dynamic> toJson() =>
      _$CreateVehicleModelsRatesRequestToJson(this);

  @JsonKey(name: 'dayPrice')
  final double? dayPrice;
  @JsonKey(name: 'hourPrice')
  final double hourPrice;
  @JsonKey(name: 'kmPrice')
  final double kmPrice;
  @JsonKey(name: 'modelIds', defaultValue: <String>[])
  final List<String> modelIds;
  @JsonKey(name: 'overrideDefaultPeriod')
  final bool? overrideDefaultPeriod;
  @JsonKey(name: 'validFrom')
  final DateTime validFrom;
  @JsonKey(name: 'validUntil')
  final DateTime? validUntil;
  static const fromJsonFactory = _$CreateVehicleModelsRatesRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateVehicleModelsRatesRequest &&
            (identical(other.dayPrice, dayPrice) ||
                const DeepCollectionEquality().equals(
                  other.dayPrice,
                  dayPrice,
                )) &&
            (identical(other.hourPrice, hourPrice) ||
                const DeepCollectionEquality().equals(
                  other.hourPrice,
                  hourPrice,
                )) &&
            (identical(other.kmPrice, kmPrice) ||
                const DeepCollectionEquality().equals(
                  other.kmPrice,
                  kmPrice,
                )) &&
            (identical(other.modelIds, modelIds) ||
                const DeepCollectionEquality().equals(
                  other.modelIds,
                  modelIds,
                )) &&
            (identical(other.overrideDefaultPeriod, overrideDefaultPeriod) ||
                const DeepCollectionEquality().equals(
                  other.overrideDefaultPeriod,
                  overrideDefaultPeriod,
                )) &&
            (identical(other.validFrom, validFrom) ||
                const DeepCollectionEquality().equals(
                  other.validFrom,
                  validFrom,
                )) &&
            (identical(other.validUntil, validUntil) ||
                const DeepCollectionEquality().equals(
                  other.validUntil,
                  validUntil,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dayPrice) ^
      const DeepCollectionEquality().hash(hourPrice) ^
      const DeepCollectionEquality().hash(kmPrice) ^
      const DeepCollectionEquality().hash(modelIds) ^
      const DeepCollectionEquality().hash(overrideDefaultPeriod) ^
      const DeepCollectionEquality().hash(validFrom) ^
      const DeepCollectionEquality().hash(validUntil) ^
      runtimeType.hashCode;
}

extension $CreateVehicleModelsRatesRequestExtension
    on CreateVehicleModelsRatesRequest {
  CreateVehicleModelsRatesRequest copyWith({
    double? dayPrice,
    double? hourPrice,
    double? kmPrice,
    List<String>? modelIds,
    bool? overrideDefaultPeriod,
    DateTime? validFrom,
    DateTime? validUntil,
  }) {
    return CreateVehicleModelsRatesRequest(
      dayPrice: dayPrice ?? this.dayPrice,
      hourPrice: hourPrice ?? this.hourPrice,
      kmPrice: kmPrice ?? this.kmPrice,
      modelIds: modelIds ?? this.modelIds,
      overrideDefaultPeriod:
          overrideDefaultPeriod ?? this.overrideDefaultPeriod,
      validFrom: validFrom ?? this.validFrom,
      validUntil: validUntil ?? this.validUntil,
    );
  }

  CreateVehicleModelsRatesRequest copyWithWrapped({
    Wrapped<double?>? dayPrice,
    Wrapped<double>? hourPrice,
    Wrapped<double>? kmPrice,
    Wrapped<List<String>>? modelIds,
    Wrapped<bool?>? overrideDefaultPeriod,
    Wrapped<DateTime>? validFrom,
    Wrapped<DateTime?>? validUntil,
  }) {
    return CreateVehicleModelsRatesRequest(
      dayPrice: (dayPrice != null ? dayPrice.value : this.dayPrice),
      hourPrice: (hourPrice != null ? hourPrice.value : this.hourPrice),
      kmPrice: (kmPrice != null ? kmPrice.value : this.kmPrice),
      modelIds: (modelIds != null ? modelIds.value : this.modelIds),
      overrideDefaultPeriod: (overrideDefaultPeriod != null
          ? overrideDefaultPeriod.value
          : this.overrideDefaultPeriod),
      validFrom: (validFrom != null ? validFrom.value : this.validFrom),
      validUntil: (validUntil != null ? validUntil.value : this.validUntil),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicleModelsRatesResponse {
  const CreateVehicleModelsRatesResponse({required this.rates});

  factory CreateVehicleModelsRatesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateVehicleModelsRatesResponseFromJson(json);

  static const toJsonFactory = _$CreateVehicleModelsRatesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$CreateVehicleModelsRatesResponseToJson(this);

  @JsonKey(name: 'rates', defaultValue: <VehicleModelRate>[])
  final List<VehicleModelRate> rates;
  static const fromJsonFactory = _$CreateVehicleModelsRatesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateVehicleModelsRatesResponse &&
            (identical(other.rates, rates) ||
                const DeepCollectionEquality().equals(other.rates, rates)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rates) ^ runtimeType.hashCode;
}

extension $CreateVehicleModelsRatesResponseExtension
    on CreateVehicleModelsRatesResponse {
  CreateVehicleModelsRatesResponse copyWith({List<VehicleModelRate>? rates}) {
    return CreateVehicleModelsRatesResponse(rates: rates ?? this.rates);
  }

  CreateVehicleModelsRatesResponse copyWithWrapped({
    Wrapped<List<VehicleModelRate>>? rates,
  }) {
    return CreateVehicleModelsRatesResponse(
      rates: (rates != null ? rates.value : this.rates),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicleRequest {
  const CreateVehicleRequest({
    required this.licensePlate,
    required this.vehicleModelId,
  });

  factory CreateVehicleRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateVehicleRequestFromJson(json);

  static const toJsonFactory = _$CreateVehicleRequestToJson;
  Map<String, dynamic> toJson() => _$CreateVehicleRequestToJson(this);

  @JsonKey(name: 'licensePlate')
  final String licensePlate;
  @JsonKey(name: 'vehicleModelId')
  final String vehicleModelId;
  static const fromJsonFactory = _$CreateVehicleRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateVehicleRequest &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality().equals(
                  other.licensePlate,
                  licensePlate,
                )) &&
            (identical(other.vehicleModelId, vehicleModelId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleModelId,
                  vehicleModelId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(vehicleModelId) ^
      runtimeType.hashCode;
}

extension $CreateVehicleRequestExtension on CreateVehicleRequest {
  CreateVehicleRequest copyWith({
    String? licensePlate,
    String? vehicleModelId,
  }) {
    return CreateVehicleRequest(
      licensePlate: licensePlate ?? this.licensePlate,
      vehicleModelId: vehicleModelId ?? this.vehicleModelId,
    );
  }

  CreateVehicleRequest copyWithWrapped({
    Wrapped<String>? licensePlate,
    Wrapped<String>? vehicleModelId,
  }) {
    return CreateVehicleRequest(
      licensePlate: (licensePlate != null
          ? licensePlate.value
          : this.licensePlate),
      vehicleModelId: (vehicleModelId != null
          ? vehicleModelId.value
          : this.vehicleModelId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehiclesRatesRequest {
  const CreateVehiclesRatesRequest({
    this.dayPrice,
    this.discountPercent,
    this.hourPrice,
    this.kmPrice,
    this.overrideDefaultPeriod,
    required this.validFrom,
    this.validUntil,
    required this.vehicleIds,
  });

  factory CreateVehiclesRatesRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateVehiclesRatesRequestFromJson(json);

  static const toJsonFactory = _$CreateVehiclesRatesRequestToJson;
  Map<String, dynamic> toJson() => _$CreateVehiclesRatesRequestToJson(this);

  @JsonKey(name: 'dayPrice')
  final double? dayPrice;
  @JsonKey(name: 'discountPercent')
  final int? discountPercent;
  @JsonKey(name: 'hourPrice')
  final double? hourPrice;
  @JsonKey(name: 'kmPrice')
  final double? kmPrice;
  @JsonKey(name: 'overrideDefaultPeriod')
  final bool? overrideDefaultPeriod;
  @JsonKey(name: 'validFrom')
  final DateTime validFrom;
  @JsonKey(name: 'validUntil')
  final DateTime? validUntil;
  @JsonKey(name: 'vehicleIds', defaultValue: <String>[])
  final List<String> vehicleIds;
  static const fromJsonFactory = _$CreateVehiclesRatesRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateVehiclesRatesRequest &&
            (identical(other.dayPrice, dayPrice) ||
                const DeepCollectionEquality().equals(
                  other.dayPrice,
                  dayPrice,
                )) &&
            (identical(other.discountPercent, discountPercent) ||
                const DeepCollectionEquality().equals(
                  other.discountPercent,
                  discountPercent,
                )) &&
            (identical(other.hourPrice, hourPrice) ||
                const DeepCollectionEquality().equals(
                  other.hourPrice,
                  hourPrice,
                )) &&
            (identical(other.kmPrice, kmPrice) ||
                const DeepCollectionEquality().equals(
                  other.kmPrice,
                  kmPrice,
                )) &&
            (identical(other.overrideDefaultPeriod, overrideDefaultPeriod) ||
                const DeepCollectionEquality().equals(
                  other.overrideDefaultPeriod,
                  overrideDefaultPeriod,
                )) &&
            (identical(other.validFrom, validFrom) ||
                const DeepCollectionEquality().equals(
                  other.validFrom,
                  validFrom,
                )) &&
            (identical(other.validUntil, validUntil) ||
                const DeepCollectionEquality().equals(
                  other.validUntil,
                  validUntil,
                )) &&
            (identical(other.vehicleIds, vehicleIds) ||
                const DeepCollectionEquality().equals(
                  other.vehicleIds,
                  vehicleIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dayPrice) ^
      const DeepCollectionEquality().hash(discountPercent) ^
      const DeepCollectionEquality().hash(hourPrice) ^
      const DeepCollectionEquality().hash(kmPrice) ^
      const DeepCollectionEquality().hash(overrideDefaultPeriod) ^
      const DeepCollectionEquality().hash(validFrom) ^
      const DeepCollectionEquality().hash(validUntil) ^
      const DeepCollectionEquality().hash(vehicleIds) ^
      runtimeType.hashCode;
}

extension $CreateVehiclesRatesRequestExtension on CreateVehiclesRatesRequest {
  CreateVehiclesRatesRequest copyWith({
    double? dayPrice,
    int? discountPercent,
    double? hourPrice,
    double? kmPrice,
    bool? overrideDefaultPeriod,
    DateTime? validFrom,
    DateTime? validUntil,
    List<String>? vehicleIds,
  }) {
    return CreateVehiclesRatesRequest(
      dayPrice: dayPrice ?? this.dayPrice,
      discountPercent: discountPercent ?? this.discountPercent,
      hourPrice: hourPrice ?? this.hourPrice,
      kmPrice: kmPrice ?? this.kmPrice,
      overrideDefaultPeriod:
          overrideDefaultPeriod ?? this.overrideDefaultPeriod,
      validFrom: validFrom ?? this.validFrom,
      validUntil: validUntil ?? this.validUntil,
      vehicleIds: vehicleIds ?? this.vehicleIds,
    );
  }

  CreateVehiclesRatesRequest copyWithWrapped({
    Wrapped<double?>? dayPrice,
    Wrapped<int?>? discountPercent,
    Wrapped<double?>? hourPrice,
    Wrapped<double?>? kmPrice,
    Wrapped<bool?>? overrideDefaultPeriod,
    Wrapped<DateTime>? validFrom,
    Wrapped<DateTime?>? validUntil,
    Wrapped<List<String>>? vehicleIds,
  }) {
    return CreateVehiclesRatesRequest(
      dayPrice: (dayPrice != null ? dayPrice.value : this.dayPrice),
      discountPercent: (discountPercent != null
          ? discountPercent.value
          : this.discountPercent),
      hourPrice: (hourPrice != null ? hourPrice.value : this.hourPrice),
      kmPrice: (kmPrice != null ? kmPrice.value : this.kmPrice),
      overrideDefaultPeriod: (overrideDefaultPeriod != null
          ? overrideDefaultPeriod.value
          : this.overrideDefaultPeriod),
      validFrom: (validFrom != null ? validFrom.value : this.validFrom),
      validUntil: (validUntil != null ? validUntil.value : this.validUntil),
      vehicleIds: (vehicleIds != null ? vehicleIds.value : this.vehicleIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehiclesRatesResponse {
  const CreateVehiclesRatesResponse({required this.rates});

  factory CreateVehiclesRatesResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateVehiclesRatesResponseFromJson(json);

  static const toJsonFactory = _$CreateVehiclesRatesResponseToJson;
  Map<String, dynamic> toJson() => _$CreateVehiclesRatesResponseToJson(this);

  @JsonKey(name: 'rates', defaultValue: <VehicleRate>[])
  final List<VehicleRate> rates;
  static const fromJsonFactory = _$CreateVehiclesRatesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateVehiclesRatesResponse &&
            (identical(other.rates, rates) ||
                const DeepCollectionEquality().equals(other.rates, rates)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rates) ^ runtimeType.hashCode;
}

extension $CreateVehiclesRatesResponseExtension on CreateVehiclesRatesResponse {
  CreateVehiclesRatesResponse copyWith({List<VehicleRate>? rates}) {
    return CreateVehiclesRatesResponse(rates: rates ?? this.rates);
  }

  CreateVehiclesRatesResponse copyWithWrapped({
    Wrapped<List<VehicleRate>>? rates,
  }) {
    return CreateVehiclesRatesResponse(
      rates: (rates != null ? rates.value : this.rates),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DeleteVehiclesFromGroupRequest {
  const DeleteVehiclesFromGroupRequest({this.vehicleIds});

  factory DeleteVehiclesFromGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteVehiclesFromGroupRequestFromJson(json);

  static const toJsonFactory = _$DeleteVehiclesFromGroupRequestToJson;
  Map<String, dynamic> toJson() => _$DeleteVehiclesFromGroupRequestToJson(this);

  @JsonKey(name: 'vehicleIds', defaultValue: <String>[])
  final List<String>? vehicleIds;
  static const fromJsonFactory = _$DeleteVehiclesFromGroupRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeleteVehiclesFromGroupRequest &&
            (identical(other.vehicleIds, vehicleIds) ||
                const DeepCollectionEquality().equals(
                  other.vehicleIds,
                  vehicleIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicleIds) ^ runtimeType.hashCode;
}

extension $DeleteVehiclesFromGroupRequestExtension
    on DeleteVehiclesFromGroupRequest {
  DeleteVehiclesFromGroupRequest copyWith({List<String>? vehicleIds}) {
    return DeleteVehiclesFromGroupRequest(
      vehicleIds: vehicleIds ?? this.vehicleIds,
    );
  }

  DeleteVehiclesFromGroupRequest copyWithWrapped({
    Wrapped<List<String>?>? vehicleIds,
  }) {
    return DeleteVehiclesFromGroupRequest(
      vehicleIds: (vehicleIds != null ? vehicleIds.value : this.vehicleIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EndVehicleUsageRequest {
  const EndVehicleUsageRequest({this.mileageValue, this.vehicleUsageId});

  factory EndVehicleUsageRequest.fromJson(Map<String, dynamic> json) =>
      _$EndVehicleUsageRequestFromJson(json);

  static const toJsonFactory = _$EndVehicleUsageRequestToJson;
  Map<String, dynamic> toJson() => _$EndVehicleUsageRequestToJson(this);

  @JsonKey(name: 'mileageValue')
  final double? mileageValue;
  @JsonKey(name: 'vehicleUsageId')
  final String? vehicleUsageId;
  static const fromJsonFactory = _$EndVehicleUsageRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EndVehicleUsageRequest &&
            (identical(other.mileageValue, mileageValue) ||
                const DeepCollectionEquality().equals(
                  other.mileageValue,
                  mileageValue,
                )) &&
            (identical(other.vehicleUsageId, vehicleUsageId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleUsageId,
                  vehicleUsageId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mileageValue) ^
      const DeepCollectionEquality().hash(vehicleUsageId) ^
      runtimeType.hashCode;
}

extension $EndVehicleUsageRequestExtension on EndVehicleUsageRequest {
  EndVehicleUsageRequest copyWith({
    double? mileageValue,
    String? vehicleUsageId,
  }) {
    return EndVehicleUsageRequest(
      mileageValue: mileageValue ?? this.mileageValue,
      vehicleUsageId: vehicleUsageId ?? this.vehicleUsageId,
    );
  }

  EndVehicleUsageRequest copyWithWrapped({
    Wrapped<double?>? mileageValue,
    Wrapped<String?>? vehicleUsageId,
  }) {
    return EndVehicleUsageRequest(
      mileageValue: (mileageValue != null
          ? mileageValue.value
          : this.mileageValue),
      vehicleUsageId: (vehicleUsageId != null
          ? vehicleUsageId.value
          : this.vehicleUsageId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ErrorResponse {
  const ErrorResponse({this.debugKey, this.debugMsg, this.debugParameters});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);

  static const toJsonFactory = _$ErrorResponseToJson;
  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);

  @JsonKey(name: 'debugKey')
  final String? debugKey;
  @JsonKey(name: 'debugMsg')
  final String? debugMsg;
  @JsonKey(name: 'debugParameters', defaultValue: <String>[])
  final List<String>? debugParameters;
  static const fromJsonFactory = _$ErrorResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ErrorResponse &&
            (identical(other.debugKey, debugKey) ||
                const DeepCollectionEquality().equals(
                  other.debugKey,
                  debugKey,
                )) &&
            (identical(other.debugMsg, debugMsg) ||
                const DeepCollectionEquality().equals(
                  other.debugMsg,
                  debugMsg,
                )) &&
            (identical(other.debugParameters, debugParameters) ||
                const DeepCollectionEquality().equals(
                  other.debugParameters,
                  debugParameters,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(debugKey) ^
      const DeepCollectionEquality().hash(debugMsg) ^
      const DeepCollectionEquality().hash(debugParameters) ^
      runtimeType.hashCode;
}

extension $ErrorResponseExtension on ErrorResponse {
  ErrorResponse copyWith({
    String? debugKey,
    String? debugMsg,
    List<String>? debugParameters,
  }) {
    return ErrorResponse(
      debugKey: debugKey ?? this.debugKey,
      debugMsg: debugMsg ?? this.debugMsg,
      debugParameters: debugParameters ?? this.debugParameters,
    );
  }

  ErrorResponse copyWithWrapped({
    Wrapped<String?>? debugKey,
    Wrapped<String?>? debugMsg,
    Wrapped<List<String>?>? debugParameters,
  }) {
    return ErrorResponse(
      debugKey: (debugKey != null ? debugKey.value : this.debugKey),
      debugMsg: (debugMsg != null ? debugMsg.value : this.debugMsg),
      debugParameters: (debugParameters != null
          ? debugParameters.value
          : this.debugParameters),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FiltersForBooking {
  const FiltersForBooking({this.gpsLocation, this.vehicleFilterCriteria});

  factory FiltersForBooking.fromJson(Map<String, dynamic> json) =>
      _$FiltersForBookingFromJson(json);

  static const toJsonFactory = _$FiltersForBookingToJson;
  Map<String, dynamic> toJson() => _$FiltersForBookingToJson(this);

  @JsonKey(name: 'gpsLocation')
  final GpsLocation? gpsLocation;
  @JsonKey(name: 'vehicleFilterCriteria')
  final VehicleFilterCriteria? vehicleFilterCriteria;
  static const fromJsonFactory = _$FiltersForBookingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FiltersForBooking &&
            (identical(other.gpsLocation, gpsLocation) ||
                const DeepCollectionEquality().equals(
                  other.gpsLocation,
                  gpsLocation,
                )) &&
            (identical(other.vehicleFilterCriteria, vehicleFilterCriteria) ||
                const DeepCollectionEquality().equals(
                  other.vehicleFilterCriteria,
                  vehicleFilterCriteria,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(gpsLocation) ^
      const DeepCollectionEquality().hash(vehicleFilterCriteria) ^
      runtimeType.hashCode;
}

extension $FiltersForBookingExtension on FiltersForBooking {
  FiltersForBooking copyWith({
    GpsLocation? gpsLocation,
    VehicleFilterCriteria? vehicleFilterCriteria,
  }) {
    return FiltersForBooking(
      gpsLocation: gpsLocation ?? this.gpsLocation,
      vehicleFilterCriteria:
          vehicleFilterCriteria ?? this.vehicleFilterCriteria,
    );
  }

  FiltersForBooking copyWithWrapped({
    Wrapped<GpsLocation?>? gpsLocation,
    Wrapped<VehicleFilterCriteria?>? vehicleFilterCriteria,
  }) {
    return FiltersForBooking(
      gpsLocation: (gpsLocation != null ? gpsLocation.value : this.gpsLocation),
      vehicleFilterCriteria: (vehicleFilterCriteria != null
          ? vehicleFilterCriteria.value
          : this.vehicleFilterCriteria),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FlespiCallbackRequest {
  const FlespiCallbackRequest({
    this.begin,
    this.canVehicleBatteryLevel,
    this.canVehicleMileage,
    this.deviceId,
    this.duration,
    this.end,
    this.externalPowersourceVoltage,
    this.id,
    this.positionLatitude,
    this.positionLongitude,
    this.timestamp,
  });

  factory FlespiCallbackRequest.fromJson(Map<String, dynamic> json) =>
      _$FlespiCallbackRequestFromJson(json);

  static const toJsonFactory = _$FlespiCallbackRequestToJson;
  Map<String, dynamic> toJson() => _$FlespiCallbackRequestToJson(this);

  @JsonKey(name: 'begin')
  final int? begin;
  @JsonKey(name: 'can.vehicle.battery.level')
  final int? canVehicleBatteryLevel;
  @JsonKey(name: 'can.vehicle.mileage')
  final double? canVehicleMileage;
  @JsonKey(name: 'device.id')
  final int? deviceId;
  @JsonKey(name: 'duration')
  final int? duration;
  @JsonKey(name: 'end')
  final int? end;
  @JsonKey(name: 'external.powersource.voltage')
  final double? externalPowersourceVoltage;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'position.latitude')
  final double? positionLatitude;
  @JsonKey(name: 'position.longitude')
  final double? positionLongitude;
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  static const fromJsonFactory = _$FlespiCallbackRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FlespiCallbackRequest &&
            (identical(other.begin, begin) ||
                const DeepCollectionEquality().equals(other.begin, begin)) &&
            (identical(other.canVehicleBatteryLevel, canVehicleBatteryLevel) ||
                const DeepCollectionEquality().equals(
                  other.canVehicleBatteryLevel,
                  canVehicleBatteryLevel,
                )) &&
            (identical(other.canVehicleMileage, canVehicleMileage) ||
                const DeepCollectionEquality().equals(
                  other.canVehicleMileage,
                  canVehicleMileage,
                )) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality().equals(
                  other.deviceId,
                  deviceId,
                )) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality().equals(
                  other.duration,
                  duration,
                )) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(
                  other.externalPowersourceVoltage,
                  externalPowersourceVoltage,
                ) ||
                const DeepCollectionEquality().equals(
                  other.externalPowersourceVoltage,
                  externalPowersourceVoltage,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.positionLatitude, positionLatitude) ||
                const DeepCollectionEquality().equals(
                  other.positionLatitude,
                  positionLatitude,
                )) &&
            (identical(other.positionLongitude, positionLongitude) ||
                const DeepCollectionEquality().equals(
                  other.positionLongitude,
                  positionLongitude,
                )) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality().equals(
                  other.timestamp,
                  timestamp,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(begin) ^
      const DeepCollectionEquality().hash(canVehicleBatteryLevel) ^
      const DeepCollectionEquality().hash(canVehicleMileage) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(externalPowersourceVoltage) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(positionLatitude) ^
      const DeepCollectionEquality().hash(positionLongitude) ^
      const DeepCollectionEquality().hash(timestamp) ^
      runtimeType.hashCode;
}

extension $FlespiCallbackRequestExtension on FlespiCallbackRequest {
  FlespiCallbackRequest copyWith({
    int? begin,
    int? canVehicleBatteryLevel,
    double? canVehicleMileage,
    int? deviceId,
    int? duration,
    int? end,
    double? externalPowersourceVoltage,
    int? id,
    double? positionLatitude,
    double? positionLongitude,
    int? timestamp,
  }) {
    return FlespiCallbackRequest(
      begin: begin ?? this.begin,
      canVehicleBatteryLevel:
          canVehicleBatteryLevel ?? this.canVehicleBatteryLevel,
      canVehicleMileage: canVehicleMileage ?? this.canVehicleMileage,
      deviceId: deviceId ?? this.deviceId,
      duration: duration ?? this.duration,
      end: end ?? this.end,
      externalPowersourceVoltage:
          externalPowersourceVoltage ?? this.externalPowersourceVoltage,
      id: id ?? this.id,
      positionLatitude: positionLatitude ?? this.positionLatitude,
      positionLongitude: positionLongitude ?? this.positionLongitude,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  FlespiCallbackRequest copyWithWrapped({
    Wrapped<int?>? begin,
    Wrapped<int?>? canVehicleBatteryLevel,
    Wrapped<double?>? canVehicleMileage,
    Wrapped<int?>? deviceId,
    Wrapped<int?>? duration,
    Wrapped<int?>? end,
    Wrapped<double?>? externalPowersourceVoltage,
    Wrapped<int?>? id,
    Wrapped<double?>? positionLatitude,
    Wrapped<double?>? positionLongitude,
    Wrapped<int?>? timestamp,
  }) {
    return FlespiCallbackRequest(
      begin: (begin != null ? begin.value : this.begin),
      canVehicleBatteryLevel: (canVehicleBatteryLevel != null
          ? canVehicleBatteryLevel.value
          : this.canVehicleBatteryLevel),
      canVehicleMileage: (canVehicleMileage != null
          ? canVehicleMileage.value
          : this.canVehicleMileage),
      deviceId: (deviceId != null ? deviceId.value : this.deviceId),
      duration: (duration != null ? duration.value : this.duration),
      end: (end != null ? end.value : this.end),
      externalPowersourceVoltage: (externalPowersourceVoltage != null
          ? externalPowersourceVoltage.value
          : this.externalPowersourceVoltage),
      id: (id != null ? id.value : this.id),
      positionLatitude: (positionLatitude != null
          ? positionLatitude.value
          : this.positionLatitude),
      positionLongitude: (positionLongitude != null
          ? positionLongitude.value
          : this.positionLongitude),
      timestamp: (timestamp != null ? timestamp.value : this.timestamp),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetVehicleModelsRatesEntry {
  const GetVehicleModelsRatesEntry({
    required this.dayPrice,
    required this.hourPrice,
    required this.id,
    required this.kmPrice,
    required this.validFrom,
    this.validUntil,
  });

  factory GetVehicleModelsRatesEntry.fromJson(Map<String, dynamic> json) =>
      _$GetVehicleModelsRatesEntryFromJson(json);

  static const toJsonFactory = _$GetVehicleModelsRatesEntryToJson;
  Map<String, dynamic> toJson() => _$GetVehicleModelsRatesEntryToJson(this);

  @JsonKey(name: 'dayPrice')
  final double dayPrice;
  @JsonKey(name: 'hourPrice')
  final double hourPrice;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'kmPrice')
  final double kmPrice;
  @JsonKey(name: 'validFrom')
  final DateTime validFrom;
  @JsonKey(name: 'validUntil')
  final DateTime? validUntil;
  static const fromJsonFactory = _$GetVehicleModelsRatesEntryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetVehicleModelsRatesEntry &&
            (identical(other.dayPrice, dayPrice) ||
                const DeepCollectionEquality().equals(
                  other.dayPrice,
                  dayPrice,
                )) &&
            (identical(other.hourPrice, hourPrice) ||
                const DeepCollectionEquality().equals(
                  other.hourPrice,
                  hourPrice,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.kmPrice, kmPrice) ||
                const DeepCollectionEquality().equals(
                  other.kmPrice,
                  kmPrice,
                )) &&
            (identical(other.validFrom, validFrom) ||
                const DeepCollectionEquality().equals(
                  other.validFrom,
                  validFrom,
                )) &&
            (identical(other.validUntil, validUntil) ||
                const DeepCollectionEquality().equals(
                  other.validUntil,
                  validUntil,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dayPrice) ^
      const DeepCollectionEquality().hash(hourPrice) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(kmPrice) ^
      const DeepCollectionEquality().hash(validFrom) ^
      const DeepCollectionEquality().hash(validUntil) ^
      runtimeType.hashCode;
}

extension $GetVehicleModelsRatesEntryExtension on GetVehicleModelsRatesEntry {
  GetVehicleModelsRatesEntry copyWith({
    double? dayPrice,
    double? hourPrice,
    String? id,
    double? kmPrice,
    DateTime? validFrom,
    DateTime? validUntil,
  }) {
    return GetVehicleModelsRatesEntry(
      dayPrice: dayPrice ?? this.dayPrice,
      hourPrice: hourPrice ?? this.hourPrice,
      id: id ?? this.id,
      kmPrice: kmPrice ?? this.kmPrice,
      validFrom: validFrom ?? this.validFrom,
      validUntil: validUntil ?? this.validUntil,
    );
  }

  GetVehicleModelsRatesEntry copyWithWrapped({
    Wrapped<double>? dayPrice,
    Wrapped<double>? hourPrice,
    Wrapped<String>? id,
    Wrapped<double>? kmPrice,
    Wrapped<DateTime>? validFrom,
    Wrapped<DateTime?>? validUntil,
  }) {
    return GetVehicleModelsRatesEntry(
      dayPrice: (dayPrice != null ? dayPrice.value : this.dayPrice),
      hourPrice: (hourPrice != null ? hourPrice.value : this.hourPrice),
      id: (id != null ? id.value : this.id),
      kmPrice: (kmPrice != null ? kmPrice.value : this.kmPrice),
      validFrom: (validFrom != null ? validFrom.value : this.validFrom),
      validUntil: (validUntil != null ? validUntil.value : this.validUntil),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetVehicleModelsRatesResponse {
  const GetVehicleModelsRatesResponse({this.rates});

  factory GetVehicleModelsRatesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetVehicleModelsRatesResponseFromJson(json);

  static const toJsonFactory = _$GetVehicleModelsRatesResponseToJson;
  Map<String, dynamic> toJson() => _$GetVehicleModelsRatesResponseToJson(this);

  @JsonKey(name: 'rates')
  final Map<String, dynamic>? rates;
  static const fromJsonFactory = _$GetVehicleModelsRatesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetVehicleModelsRatesResponse &&
            (identical(other.rates, rates) ||
                const DeepCollectionEquality().equals(other.rates, rates)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rates) ^ runtimeType.hashCode;
}

extension $GetVehicleModelsRatesResponseExtension
    on GetVehicleModelsRatesResponse {
  GetVehicleModelsRatesResponse copyWith({Map<String, dynamic>? rates}) {
    return GetVehicleModelsRatesResponse(rates: rates ?? this.rates);
  }

  GetVehicleModelsRatesResponse copyWithWrapped({
    Wrapped<Map<String, dynamic>?>? rates,
  }) {
    return GetVehicleModelsRatesResponse(
      rates: (rates != null ? rates.value : this.rates),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetVehiclesRatesEntry {
  const GetVehiclesRatesEntry({
    this.dayPrice,
    this.hourPrice,
    required this.id,
    this.kmPrice,
    required this.validFrom,
    this.validUntil,
  });

  factory GetVehiclesRatesEntry.fromJson(Map<String, dynamic> json) =>
      _$GetVehiclesRatesEntryFromJson(json);

  static const toJsonFactory = _$GetVehiclesRatesEntryToJson;
  Map<String, dynamic> toJson() => _$GetVehiclesRatesEntryToJson(this);

  @JsonKey(name: 'dayPrice')
  final double? dayPrice;
  @JsonKey(name: 'hourPrice')
  final double? hourPrice;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'kmPrice')
  final double? kmPrice;
  @JsonKey(name: 'validFrom')
  final DateTime validFrom;
  @JsonKey(name: 'validUntil')
  final DateTime? validUntil;
  static const fromJsonFactory = _$GetVehiclesRatesEntryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetVehiclesRatesEntry &&
            (identical(other.dayPrice, dayPrice) ||
                const DeepCollectionEquality().equals(
                  other.dayPrice,
                  dayPrice,
                )) &&
            (identical(other.hourPrice, hourPrice) ||
                const DeepCollectionEquality().equals(
                  other.hourPrice,
                  hourPrice,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.kmPrice, kmPrice) ||
                const DeepCollectionEquality().equals(
                  other.kmPrice,
                  kmPrice,
                )) &&
            (identical(other.validFrom, validFrom) ||
                const DeepCollectionEquality().equals(
                  other.validFrom,
                  validFrom,
                )) &&
            (identical(other.validUntil, validUntil) ||
                const DeepCollectionEquality().equals(
                  other.validUntil,
                  validUntil,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dayPrice) ^
      const DeepCollectionEquality().hash(hourPrice) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(kmPrice) ^
      const DeepCollectionEquality().hash(validFrom) ^
      const DeepCollectionEquality().hash(validUntil) ^
      runtimeType.hashCode;
}

extension $GetVehiclesRatesEntryExtension on GetVehiclesRatesEntry {
  GetVehiclesRatesEntry copyWith({
    double? dayPrice,
    double? hourPrice,
    String? id,
    double? kmPrice,
    DateTime? validFrom,
    DateTime? validUntil,
  }) {
    return GetVehiclesRatesEntry(
      dayPrice: dayPrice ?? this.dayPrice,
      hourPrice: hourPrice ?? this.hourPrice,
      id: id ?? this.id,
      kmPrice: kmPrice ?? this.kmPrice,
      validFrom: validFrom ?? this.validFrom,
      validUntil: validUntil ?? this.validUntil,
    );
  }

  GetVehiclesRatesEntry copyWithWrapped({
    Wrapped<double?>? dayPrice,
    Wrapped<double?>? hourPrice,
    Wrapped<String>? id,
    Wrapped<double?>? kmPrice,
    Wrapped<DateTime>? validFrom,
    Wrapped<DateTime?>? validUntil,
  }) {
    return GetVehiclesRatesEntry(
      dayPrice: (dayPrice != null ? dayPrice.value : this.dayPrice),
      hourPrice: (hourPrice != null ? hourPrice.value : this.hourPrice),
      id: (id != null ? id.value : this.id),
      kmPrice: (kmPrice != null ? kmPrice.value : this.kmPrice),
      validFrom: (validFrom != null ? validFrom.value : this.validFrom),
      validUntil: (validUntil != null ? validUntil.value : this.validUntil),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GetVehiclesRatesResponse {
  const GetVehiclesRatesResponse({this.rates});

  factory GetVehiclesRatesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetVehiclesRatesResponseFromJson(json);

  static const toJsonFactory = _$GetVehiclesRatesResponseToJson;
  Map<String, dynamic> toJson() => _$GetVehiclesRatesResponseToJson(this);

  @JsonKey(name: 'rates')
  final Map<String, dynamic>? rates;
  static const fromJsonFactory = _$GetVehiclesRatesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GetVehiclesRatesResponse &&
            (identical(other.rates, rates) ||
                const DeepCollectionEquality().equals(other.rates, rates)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rates) ^ runtimeType.hashCode;
}

extension $GetVehiclesRatesResponseExtension on GetVehiclesRatesResponse {
  GetVehiclesRatesResponse copyWith({Map<String, dynamic>? rates}) {
    return GetVehiclesRatesResponse(rates: rates ?? this.rates);
  }

  GetVehiclesRatesResponse copyWithWrapped({
    Wrapped<Map<String, dynamic>?>? rates,
  }) {
    return GetVehiclesRatesResponse(
      rates: (rates != null ? rates.value : this.rates),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GpsCoordinate {
  const GpsCoordinate({this.latitude, this.longitude});

  factory GpsCoordinate.fromJson(Map<String, dynamic> json) =>
      _$GpsCoordinateFromJson(json);

  static const toJsonFactory = _$GpsCoordinateToJson;
  Map<String, dynamic> toJson() => _$GpsCoordinateToJson(this);

  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'longitude')
  final double? longitude;
  static const fromJsonFactory = _$GpsCoordinateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GpsCoordinate &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality().equals(
                  other.latitude,
                  latitude,
                )) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality().equals(
                  other.longitude,
                  longitude,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $GpsCoordinateExtension on GpsCoordinate {
  GpsCoordinate copyWith({double? latitude, double? longitude}) {
    return GpsCoordinate(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  GpsCoordinate copyWithWrapped({
    Wrapped<double?>? latitude,
    Wrapped<double?>? longitude,
  }) {
    return GpsCoordinate(
      latitude: (latitude != null ? latitude.value : this.latitude),
      longitude: (longitude != null ? longitude.value : this.longitude),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GpsLocation {
  const GpsLocation({
    this.address,
    this.coordinates,
    this.vehicleBaseLocationId,
  });

  factory GpsLocation.fromJson(Map<String, dynamic> json) =>
      _$GpsLocationFromJson(json);

  static const toJsonFactory = _$GpsLocationToJson;
  Map<String, dynamic> toJson() => _$GpsLocationToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'coordinates')
  final GpsCoordinate? coordinates;
  @JsonKey(name: 'vehicleBaseLocationId')
  final String? vehicleBaseLocationId;
  static const fromJsonFactory = _$GpsLocationFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GpsLocation &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality().equals(
                  other.coordinates,
                  coordinates,
                )) &&
            (identical(other.vehicleBaseLocationId, vehicleBaseLocationId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleBaseLocationId,
                  vehicleBaseLocationId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(vehicleBaseLocationId) ^
      runtimeType.hashCode;
}

extension $GpsLocationExtension on GpsLocation {
  GpsLocation copyWith({
    String? address,
    GpsCoordinate? coordinates,
    String? vehicleBaseLocationId,
  }) {
    return GpsLocation(
      address: address ?? this.address,
      coordinates: coordinates ?? this.coordinates,
      vehicleBaseLocationId:
          vehicleBaseLocationId ?? this.vehicleBaseLocationId,
    );
  }

  GpsLocation copyWithWrapped({
    Wrapped<String?>? address,
    Wrapped<GpsCoordinate?>? coordinates,
    Wrapped<String?>? vehicleBaseLocationId,
  }) {
    return GpsLocation(
      address: (address != null ? address.value : this.address),
      coordinates: (coordinates != null ? coordinates.value : this.coordinates),
      vehicleBaseLocationId: (vehicleBaseLocationId != null
          ? vehicleBaseLocationId.value
          : this.vehicleBaseLocationId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Invoice {
  const Invoice({
    this.amount,
    this.customerName,
    this.dueDate,
    this.id,
    this.invoiceDate,
    this.name,
    this.paymentStatus,
    this.pdfUrl,
    this.webUrl,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  static const toJsonFactory = _$InvoiceToJson;
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);

  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'customerName')
  final String? customerName;
  @JsonKey(name: 'dueDate')
  final DateTime? dueDate;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'invoiceDate')
  final DateTime? invoiceDate;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(
    name: 'paymentStatus',
    toJson: invoicePaymentStatusNullableToJson,
    fromJson: invoicePaymentStatusNullableFromJson,
  )
  final enums.InvoicePaymentStatus? paymentStatus;
  @JsonKey(name: 'pdfUrl')
  final String? pdfUrl;
  @JsonKey(name: 'webUrl')
  final String? webUrl;
  static const fromJsonFactory = _$InvoiceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Invoice &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality().equals(
                  other.customerName,
                  customerName,
                )) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality().equals(
                  other.dueDate,
                  dueDate,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.invoiceDate, invoiceDate) ||
                const DeepCollectionEquality().equals(
                  other.invoiceDate,
                  invoiceDate,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.paymentStatus, paymentStatus) ||
                const DeepCollectionEquality().equals(
                  other.paymentStatus,
                  paymentStatus,
                )) &&
            (identical(other.pdfUrl, pdfUrl) ||
                const DeepCollectionEquality().equals(other.pdfUrl, pdfUrl)) &&
            (identical(other.webUrl, webUrl) ||
                const DeepCollectionEquality().equals(other.webUrl, webUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(invoiceDate) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(paymentStatus) ^
      const DeepCollectionEquality().hash(pdfUrl) ^
      const DeepCollectionEquality().hash(webUrl) ^
      runtimeType.hashCode;
}

extension $InvoiceExtension on Invoice {
  Invoice copyWith({
    double? amount,
    String? customerName,
    DateTime? dueDate,
    int? id,
    DateTime? invoiceDate,
    String? name,
    enums.InvoicePaymentStatus? paymentStatus,
    String? pdfUrl,
    String? webUrl,
  }) {
    return Invoice(
      amount: amount ?? this.amount,
      customerName: customerName ?? this.customerName,
      dueDate: dueDate ?? this.dueDate,
      id: id ?? this.id,
      invoiceDate: invoiceDate ?? this.invoiceDate,
      name: name ?? this.name,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      pdfUrl: pdfUrl ?? this.pdfUrl,
      webUrl: webUrl ?? this.webUrl,
    );
  }

  Invoice copyWithWrapped({
    Wrapped<double?>? amount,
    Wrapped<String?>? customerName,
    Wrapped<DateTime?>? dueDate,
    Wrapped<int?>? id,
    Wrapped<DateTime?>? invoiceDate,
    Wrapped<String?>? name,
    Wrapped<enums.InvoicePaymentStatus?>? paymentStatus,
    Wrapped<String?>? pdfUrl,
    Wrapped<String?>? webUrl,
  }) {
    return Invoice(
      amount: (amount != null ? amount.value : this.amount),
      customerName: (customerName != null
          ? customerName.value
          : this.customerName),
      dueDate: (dueDate != null ? dueDate.value : this.dueDate),
      id: (id != null ? id.value : this.id),
      invoiceDate: (invoiceDate != null ? invoiceDate.value : this.invoiceDate),
      name: (name != null ? name.value : this.name),
      paymentStatus: (paymentStatus != null
          ? paymentStatus.value
          : this.paymentStatus),
      pdfUrl: (pdfUrl != null ? pdfUrl.value : this.pdfUrl),
      webUrl: (webUrl != null ? webUrl.value : this.webUrl),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class InvoiceResponse {
  const InvoiceResponse({this.invoices});

  factory InvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceResponseFromJson(json);

  static const toJsonFactory = _$InvoiceResponseToJson;
  Map<String, dynamic> toJson() => _$InvoiceResponseToJson(this);

  @JsonKey(name: 'invoices', defaultValue: <Invoice>[])
  final List<Invoice>? invoices;
  static const fromJsonFactory = _$InvoiceResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is InvoiceResponse &&
            (identical(other.invoices, invoices) ||
                const DeepCollectionEquality().equals(
                  other.invoices,
                  invoices,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(invoices) ^ runtimeType.hashCode;
}

extension $InvoiceResponseExtension on InvoiceResponse {
  InvoiceResponse copyWith({List<Invoice>? invoices}) {
    return InvoiceResponse(invoices: invoices ?? this.invoices);
  }

  InvoiceResponse copyWithWrapped({Wrapped<List<Invoice>?>? invoices}) {
    return InvoiceResponse(
      invoices: (invoices != null ? invoices.value : this.invoices),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Issue {
  const Issue({
    this.actions,
    this.assignedTo,
    this.booking,
    this.createdBy,
    this.dateCreated,
    this.description,
    this.lastUpdated,
    this.number,
    this.priority,
    this.status,
    this.title,
    this.user,
    this.vehicle,
  });

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);

  static const toJsonFactory = _$IssueToJson;
  Map<String, dynamic> toJson() => _$IssueToJson(this);

  @JsonKey(name: 'actions', defaultValue: <IssueAction>[])
  final List<IssueAction>? actions;
  @JsonKey(name: 'assignedTo')
  final User? assignedTo;
  @JsonKey(name: 'booking')
  final Booking? booking;
  @JsonKey(name: 'createdBy')
  final User? createdBy;
  @JsonKey(name: 'dateCreated')
  final DateTime? dateCreated;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'lastUpdated')
  final DateTime? lastUpdated;
  @JsonKey(name: 'number')
  final int? number;
  @JsonKey(
    name: 'priority',
    toJson: issuePriorityNullableToJson,
    fromJson: issuePriorityNullableFromJson,
  )
  final enums.IssuePriority? priority;
  @JsonKey(
    name: 'status',
    toJson: issueStatusNullableToJson,
    fromJson: issueStatusNullableFromJson,
  )
  final enums.IssueStatus? status;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'user')
  final User? user;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  static const fromJsonFactory = _$IssueFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Issue &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(
                  other.actions,
                  actions,
                )) &&
            (identical(other.assignedTo, assignedTo) ||
                const DeepCollectionEquality().equals(
                  other.assignedTo,
                  assignedTo,
                )) &&
            (identical(other.booking, booking) ||
                const DeepCollectionEquality().equals(
                  other.booking,
                  booking,
                )) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality().equals(
                  other.createdBy,
                  createdBy,
                )) &&
            (identical(other.dateCreated, dateCreated) ||
                const DeepCollectionEquality().equals(
                  other.dateCreated,
                  dateCreated,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdated,
                  lastUpdated,
                )) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality().equals(
                  other.priority,
                  priority,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(other.vehicle, vehicle)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actions) ^
      const DeepCollectionEquality().hash(assignedTo) ^
      const DeepCollectionEquality().hash(booking) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(dateCreated) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(vehicle) ^
      runtimeType.hashCode;
}

extension $IssueExtension on Issue {
  Issue copyWith({
    List<IssueAction>? actions,
    User? assignedTo,
    Booking? booking,
    User? createdBy,
    DateTime? dateCreated,
    String? description,
    DateTime? lastUpdated,
    int? number,
    enums.IssuePriority? priority,
    enums.IssueStatus? status,
    String? title,
    User? user,
    Vehicle? vehicle,
  }) {
    return Issue(
      actions: actions ?? this.actions,
      assignedTo: assignedTo ?? this.assignedTo,
      booking: booking ?? this.booking,
      createdBy: createdBy ?? this.createdBy,
      dateCreated: dateCreated ?? this.dateCreated,
      description: description ?? this.description,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      number: number ?? this.number,
      priority: priority ?? this.priority,
      status: status ?? this.status,
      title: title ?? this.title,
      user: user ?? this.user,
      vehicle: vehicle ?? this.vehicle,
    );
  }

  Issue copyWithWrapped({
    Wrapped<List<IssueAction>?>? actions,
    Wrapped<User?>? assignedTo,
    Wrapped<Booking?>? booking,
    Wrapped<User?>? createdBy,
    Wrapped<DateTime?>? dateCreated,
    Wrapped<String?>? description,
    Wrapped<DateTime?>? lastUpdated,
    Wrapped<int?>? number,
    Wrapped<enums.IssuePriority?>? priority,
    Wrapped<enums.IssueStatus?>? status,
    Wrapped<String?>? title,
    Wrapped<User?>? user,
    Wrapped<Vehicle?>? vehicle,
  }) {
    return Issue(
      actions: (actions != null ? actions.value : this.actions),
      assignedTo: (assignedTo != null ? assignedTo.value : this.assignedTo),
      booking: (booking != null ? booking.value : this.booking),
      createdBy: (createdBy != null ? createdBy.value : this.createdBy),
      dateCreated: (dateCreated != null ? dateCreated.value : this.dateCreated),
      description: (description != null ? description.value : this.description),
      lastUpdated: (lastUpdated != null ? lastUpdated.value : this.lastUpdated),
      number: (number != null ? number.value : this.number),
      priority: (priority != null ? priority.value : this.priority),
      status: (status != null ? status.value : this.status),
      title: (title != null ? title.value : this.title),
      user: (user != null ? user.value : this.user),
      vehicle: (vehicle != null ? vehicle.value : this.vehicle),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class IssueAction {
  const IssueAction({
    this.assignedTo,
    this.comment,
    this.dateCreated,
    this.priority,
    this.status,
    this.title,
    this.user,
  });

  factory IssueAction.fromJson(Map<String, dynamic> json) =>
      _$IssueActionFromJson(json);

  static const toJsonFactory = _$IssueActionToJson;
  Map<String, dynamic> toJson() => _$IssueActionToJson(this);

  @JsonKey(name: 'assignedTo')
  final User? assignedTo;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'dateCreated')
  final DateTime? dateCreated;
  @JsonKey(
    name: 'priority',
    toJson: issueActionPriorityNullableToJson,
    fromJson: issueActionPriorityNullableFromJson,
  )
  final enums.IssueActionPriority? priority;
  @JsonKey(
    name: 'status',
    toJson: issueActionStatusNullableToJson,
    fromJson: issueActionStatusNullableFromJson,
  )
  final enums.IssueActionStatus? status;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'user')
  final User? user;
  static const fromJsonFactory = _$IssueActionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is IssueAction &&
            (identical(other.assignedTo, assignedTo) ||
                const DeepCollectionEquality().equals(
                  other.assignedTo,
                  assignedTo,
                )) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(
                  other.comment,
                  comment,
                )) &&
            (identical(other.dateCreated, dateCreated) ||
                const DeepCollectionEquality().equals(
                  other.dateCreated,
                  dateCreated,
                )) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality().equals(
                  other.priority,
                  priority,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(assignedTo) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(dateCreated) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(user) ^
      runtimeType.hashCode;
}

extension $IssueActionExtension on IssueAction {
  IssueAction copyWith({
    User? assignedTo,
    String? comment,
    DateTime? dateCreated,
    enums.IssueActionPriority? priority,
    enums.IssueActionStatus? status,
    String? title,
    User? user,
  }) {
    return IssueAction(
      assignedTo: assignedTo ?? this.assignedTo,
      comment: comment ?? this.comment,
      dateCreated: dateCreated ?? this.dateCreated,
      priority: priority ?? this.priority,
      status: status ?? this.status,
      title: title ?? this.title,
      user: user ?? this.user,
    );
  }

  IssueAction copyWithWrapped({
    Wrapped<User?>? assignedTo,
    Wrapped<String?>? comment,
    Wrapped<DateTime?>? dateCreated,
    Wrapped<enums.IssueActionPriority?>? priority,
    Wrapped<enums.IssueActionStatus?>? status,
    Wrapped<String?>? title,
    Wrapped<User?>? user,
  }) {
    return IssueAction(
      assignedTo: (assignedTo != null ? assignedTo.value : this.assignedTo),
      comment: (comment != null ? comment.value : this.comment),
      dateCreated: (dateCreated != null ? dateCreated.value : this.dateCreated),
      priority: (priority != null ? priority.value : this.priority),
      status: (status != null ? status.value : this.status),
      title: (title != null ? title.value : this.title),
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class IssuePage {
  const IssuePage({this.issues});

  factory IssuePage.fromJson(Map<String, dynamic> json) =>
      _$IssuePageFromJson(json);

  static const toJsonFactory = _$IssuePageToJson;
  Map<String, dynamic> toJson() => _$IssuePageToJson(this);

  @JsonKey(name: 'issues', defaultValue: <Issue>[])
  final List<Issue>? issues;
  static const fromJsonFactory = _$IssuePageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is IssuePage &&
            (identical(other.issues, issues) ||
                const DeepCollectionEquality().equals(other.issues, issues)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(issues) ^ runtimeType.hashCode;
}

extension $IssuePageExtension on IssuePage {
  IssuePage copyWith({List<Issue>? issues}) {
    return IssuePage(issues: issues ?? this.issues);
  }

  IssuePage copyWithWrapped({Wrapped<List<Issue>?>? issues}) {
    return IssuePage(issues: (issues != null ? issues.value : this.issues));
  }
}

@JsonSerializable(explicitToJson: true)
class LocationPosition {
  const LocationPosition({this.lat, this.lng});

  factory LocationPosition.fromJson(Map<String, dynamic> json) =>
      _$LocationPositionFromJson(json);

  static const toJsonFactory = _$LocationPositionToJson;
  Map<String, dynamic> toJson() => _$LocationPositionToJson(this);

  @JsonKey(name: 'lat')
  final double? lat;
  @JsonKey(name: 'lng')
  final double? lng;
  static const fromJsonFactory = _$LocationPositionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LocationPosition &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      runtimeType.hashCode;
}

extension $LocationPositionExtension on LocationPosition {
  LocationPosition copyWith({double? lat, double? lng}) {
    return LocationPosition(lat: lat ?? this.lat, lng: lng ?? this.lng);
  }

  LocationPosition copyWithWrapped({
    Wrapped<double?>? lat,
    Wrapped<double?>? lng,
  }) {
    return LocationPosition(
      lat: (lat != null ? lat.value : this.lat),
      lng: (lng != null ? lng.value : this.lng),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LocationValue {
  const LocationValue({this.address, this.position});

  factory LocationValue.fromJson(Map<String, dynamic> json) =>
      _$LocationValueFromJson(json);

  static const toJsonFactory = _$LocationValueToJson;
  Map<String, dynamic> toJson() => _$LocationValueToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'position')
  final LocationPosition? position;
  static const fromJsonFactory = _$LocationValueFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LocationValue &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality().equals(
                  other.position,
                  position,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(position) ^
      runtimeType.hashCode;
}

extension $LocationValueExtension on LocationValue {
  LocationValue copyWith({String? address, LocationPosition? position}) {
    return LocationValue(
      address: address ?? this.address,
      position: position ?? this.position,
    );
  }

  LocationValue copyWithWrapped({
    Wrapped<String?>? address,
    Wrapped<LocationPosition?>? position,
  }) {
    return LocationValue(
      address: (address != null ? address.value : this.address),
      position: (position != null ? position.value : this.position),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Mileage {
  const Mileage({this.mileage});

  factory Mileage.fromJson(Map<String, dynamic> json) =>
      _$MileageFromJson(json);

  static const toJsonFactory = _$MileageToJson;
  Map<String, dynamic> toJson() => _$MileageToJson(this);

  @JsonKey(name: 'mileage')
  final double? mileage;
  static const fromJsonFactory = _$MileageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Mileage &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality().equals(other.mileage, mileage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mileage) ^ runtimeType.hashCode;
}

extension $MileageExtension on Mileage {
  Mileage copyWith({double? mileage}) {
    return Mileage(mileage: mileage ?? this.mileage);
  }

  Mileage copyWithWrapped({Wrapped<double?>? mileage}) {
    return Mileage(mileage: (mileage != null ? mileage.value : this.mileage));
  }
}

@JsonSerializable(explicitToJson: true)
class MyAvailableVehicle {
  const MyAvailableVehicle({
    this.nextNonAvailability,
    this.overdue,
    this.previousNonAvailability,
    this.type,
    this.vehicle,
    this.vehicleUsage,
  });

  factory MyAvailableVehicle.fromJson(Map<String, dynamic> json) =>
      _$MyAvailableVehicleFromJson(json);

  static const toJsonFactory = _$MyAvailableVehicleToJson;
  Map<String, dynamic> toJson() => _$MyAvailableVehicleToJson(this);

  @JsonKey(name: 'nextNonAvailability')
  final AdjacentNonAvailability? nextNonAvailability;
  @JsonKey(name: 'overdue')
  final bool? overdue;
  @JsonKey(name: 'previousNonAvailability')
  final AdjacentNonAvailability? previousNonAvailability;
  @JsonKey(
    name: 'type',
    toJson: myAvailableVehicleTypeNullableToJson,
    fromJson: myAvailableVehicleTypeNullableFromJson,
  )
  final enums.MyAvailableVehicleType? type;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  @JsonKey(name: 'vehicleUsage')
  final VehicleUsage? vehicleUsage;
  static const fromJsonFactory = _$MyAvailableVehicleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MyAvailableVehicle &&
            (identical(other.nextNonAvailability, nextNonAvailability) ||
                const DeepCollectionEquality().equals(
                  other.nextNonAvailability,
                  nextNonAvailability,
                )) &&
            (identical(other.overdue, overdue) ||
                const DeepCollectionEquality().equals(
                  other.overdue,
                  overdue,
                )) &&
            (identical(
                  other.previousNonAvailability,
                  previousNonAvailability,
                ) ||
                const DeepCollectionEquality().equals(
                  other.previousNonAvailability,
                  previousNonAvailability,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(
                  other.vehicle,
                  vehicle,
                )) &&
            (identical(other.vehicleUsage, vehicleUsage) ||
                const DeepCollectionEquality().equals(
                  other.vehicleUsage,
                  vehicleUsage,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(nextNonAvailability) ^
      const DeepCollectionEquality().hash(overdue) ^
      const DeepCollectionEquality().hash(previousNonAvailability) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(vehicleUsage) ^
      runtimeType.hashCode;
}

extension $MyAvailableVehicleExtension on MyAvailableVehicle {
  MyAvailableVehicle copyWith({
    AdjacentNonAvailability? nextNonAvailability,
    bool? overdue,
    AdjacentNonAvailability? previousNonAvailability,
    enums.MyAvailableVehicleType? type,
    Vehicle? vehicle,
    VehicleUsage? vehicleUsage,
  }) {
    return MyAvailableVehicle(
      nextNonAvailability: nextNonAvailability ?? this.nextNonAvailability,
      overdue: overdue ?? this.overdue,
      previousNonAvailability:
          previousNonAvailability ?? this.previousNonAvailability,
      type: type ?? this.type,
      vehicle: vehicle ?? this.vehicle,
      vehicleUsage: vehicleUsage ?? this.vehicleUsage,
    );
  }

  MyAvailableVehicle copyWithWrapped({
    Wrapped<AdjacentNonAvailability?>? nextNonAvailability,
    Wrapped<bool?>? overdue,
    Wrapped<AdjacentNonAvailability?>? previousNonAvailability,
    Wrapped<enums.MyAvailableVehicleType?>? type,
    Wrapped<Vehicle?>? vehicle,
    Wrapped<VehicleUsage?>? vehicleUsage,
  }) {
    return MyAvailableVehicle(
      nextNonAvailability: (nextNonAvailability != null
          ? nextNonAvailability.value
          : this.nextNonAvailability),
      overdue: (overdue != null ? overdue.value : this.overdue),
      previousNonAvailability: (previousNonAvailability != null
          ? previousNonAvailability.value
          : this.previousNonAvailability),
      type: (type != null ? type.value : this.type),
      vehicle: (vehicle != null ? vehicle.value : this.vehicle),
      vehicleUsage: (vehicleUsage != null
          ? vehicleUsage.value
          : this.vehicleUsage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MyAvailableVehiclesPage {
  const MyAvailableVehiclesPage({this.currentNonAvailablePeriods});

  factory MyAvailableVehiclesPage.fromJson(Map<String, dynamic> json) =>
      _$MyAvailableVehiclesPageFromJson(json);

  static const toJsonFactory = _$MyAvailableVehiclesPageToJson;
  Map<String, dynamic> toJson() => _$MyAvailableVehiclesPageToJson(this);

  @JsonKey(
    name: 'currentNonAvailablePeriods',
    defaultValue: <MyAvailableVehicle>[],
  )
  final List<MyAvailableVehicle>? currentNonAvailablePeriods;
  static const fromJsonFactory = _$MyAvailableVehiclesPageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MyAvailableVehiclesPage &&
            (identical(
                  other.currentNonAvailablePeriods,
                  currentNonAvailablePeriods,
                ) ||
                const DeepCollectionEquality().equals(
                  other.currentNonAvailablePeriods,
                  currentNonAvailablePeriods,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentNonAvailablePeriods) ^
      runtimeType.hashCode;
}

extension $MyAvailableVehiclesPageExtension on MyAvailableVehiclesPage {
  MyAvailableVehiclesPage copyWith({
    List<MyAvailableVehicle>? currentNonAvailablePeriods,
  }) {
    return MyAvailableVehiclesPage(
      currentNonAvailablePeriods:
          currentNonAvailablePeriods ?? this.currentNonAvailablePeriods,
    );
  }

  MyAvailableVehiclesPage copyWithWrapped({
    Wrapped<List<MyAvailableVehicle>?>? currentNonAvailablePeriods,
  }) {
    return MyAvailableVehiclesPage(
      currentNonAvailablePeriods: (currentNonAvailablePeriods != null
          ? currentNonAvailablePeriods.value
          : this.currentNonAvailablePeriods),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NonAvailabilitiesPage {
  const NonAvailabilitiesPage({this.nonAvailabilities});

  factory NonAvailabilitiesPage.fromJson(Map<String, dynamic> json) =>
      _$NonAvailabilitiesPageFromJson(json);

  static const toJsonFactory = _$NonAvailabilitiesPageToJson;
  Map<String, dynamic> toJson() => _$NonAvailabilitiesPageToJson(this);

  @JsonKey(name: 'nonAvailabilities', defaultValue: <NonAvailability>[])
  final List<NonAvailability>? nonAvailabilities;
  static const fromJsonFactory = _$NonAvailabilitiesPageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NonAvailabilitiesPage &&
            (identical(other.nonAvailabilities, nonAvailabilities) ||
                const DeepCollectionEquality().equals(
                  other.nonAvailabilities,
                  nonAvailabilities,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(nonAvailabilities) ^
      runtimeType.hashCode;
}

extension $NonAvailabilitiesPageExtension on NonAvailabilitiesPage {
  NonAvailabilitiesPage copyWith({List<NonAvailability>? nonAvailabilities}) {
    return NonAvailabilitiesPage(
      nonAvailabilities: nonAvailabilities ?? this.nonAvailabilities,
    );
  }

  NonAvailabilitiesPage copyWithWrapped({
    Wrapped<List<NonAvailability>?>? nonAvailabilities,
  }) {
    return NonAvailabilitiesPage(
      nonAvailabilities: (nonAvailabilities != null
          ? nonAvailabilities.value
          : this.nonAvailabilities),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NonAvailabilitiesPerVehicle {
  const NonAvailabilitiesPerVehicle({
    this.currentPrivateUsageOverdue,
    this.currentPrivateUsageStart,
    this.nonAvailabilities,
    this.vehicleId,
    this.vehicleName,
  });

  factory NonAvailabilitiesPerVehicle.fromJson(Map<String, dynamic> json) =>
      _$NonAvailabilitiesPerVehicleFromJson(json);

  static const toJsonFactory = _$NonAvailabilitiesPerVehicleToJson;
  Map<String, dynamic> toJson() => _$NonAvailabilitiesPerVehicleToJson(this);

  @JsonKey(name: 'currentPrivateUsageOverdue')
  final bool? currentPrivateUsageOverdue;
  @JsonKey(name: 'currentPrivateUsageStart')
  final DateTime? currentPrivateUsageStart;
  @JsonKey(name: 'nonAvailabilities', defaultValue: <NonAvailability>[])
  final List<NonAvailability>? nonAvailabilities;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'vehicleName')
  final String? vehicleName;
  static const fromJsonFactory = _$NonAvailabilitiesPerVehicleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NonAvailabilitiesPerVehicle &&
            (identical(
                  other.currentPrivateUsageOverdue,
                  currentPrivateUsageOverdue,
                ) ||
                const DeepCollectionEquality().equals(
                  other.currentPrivateUsageOverdue,
                  currentPrivateUsageOverdue,
                )) &&
            (identical(
                  other.currentPrivateUsageStart,
                  currentPrivateUsageStart,
                ) ||
                const DeepCollectionEquality().equals(
                  other.currentPrivateUsageStart,
                  currentPrivateUsageStart,
                )) &&
            (identical(other.nonAvailabilities, nonAvailabilities) ||
                const DeepCollectionEquality().equals(
                  other.nonAvailabilities,
                  nonAvailabilities,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )) &&
            (identical(other.vehicleName, vehicleName) ||
                const DeepCollectionEquality().equals(
                  other.vehicleName,
                  vehicleName,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(currentPrivateUsageOverdue) ^
      const DeepCollectionEquality().hash(currentPrivateUsageStart) ^
      const DeepCollectionEquality().hash(nonAvailabilities) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicleName) ^
      runtimeType.hashCode;
}

extension $NonAvailabilitiesPerVehicleExtension on NonAvailabilitiesPerVehicle {
  NonAvailabilitiesPerVehicle copyWith({
    bool? currentPrivateUsageOverdue,
    DateTime? currentPrivateUsageStart,
    List<NonAvailability>? nonAvailabilities,
    String? vehicleId,
    String? vehicleName,
  }) {
    return NonAvailabilitiesPerVehicle(
      currentPrivateUsageOverdue:
          currentPrivateUsageOverdue ?? this.currentPrivateUsageOverdue,
      currentPrivateUsageStart:
          currentPrivateUsageStart ?? this.currentPrivateUsageStart,
      nonAvailabilities: nonAvailabilities ?? this.nonAvailabilities,
      vehicleId: vehicleId ?? this.vehicleId,
      vehicleName: vehicleName ?? this.vehicleName,
    );
  }

  NonAvailabilitiesPerVehicle copyWithWrapped({
    Wrapped<bool?>? currentPrivateUsageOverdue,
    Wrapped<DateTime?>? currentPrivateUsageStart,
    Wrapped<List<NonAvailability>?>? nonAvailabilities,
    Wrapped<String?>? vehicleId,
    Wrapped<String?>? vehicleName,
  }) {
    return NonAvailabilitiesPerVehicle(
      currentPrivateUsageOverdue: (currentPrivateUsageOverdue != null
          ? currentPrivateUsageOverdue.value
          : this.currentPrivateUsageOverdue),
      currentPrivateUsageStart: (currentPrivateUsageStart != null
          ? currentPrivateUsageStart.value
          : this.currentPrivateUsageStart),
      nonAvailabilities: (nonAvailabilities != null
          ? nonAvailabilities.value
          : this.nonAvailabilities),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
      vehicleName: (vehicleName != null ? vehicleName.value : this.vehicleName),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NonAvailabilitiesPerVehiclePage {
  const NonAvailabilitiesPerVehiclePage({this.availabilityEventsPerVehicle});

  factory NonAvailabilitiesPerVehiclePage.fromJson(Map<String, dynamic> json) =>
      _$NonAvailabilitiesPerVehiclePageFromJson(json);

  static const toJsonFactory = _$NonAvailabilitiesPerVehiclePageToJson;
  Map<String, dynamic> toJson() =>
      _$NonAvailabilitiesPerVehiclePageToJson(this);

  @JsonKey(name: 'availabilityEventsPerVehicle')
  final Map<String, dynamic>? availabilityEventsPerVehicle;
  static const fromJsonFactory = _$NonAvailabilitiesPerVehiclePageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NonAvailabilitiesPerVehiclePage &&
            (identical(
                  other.availabilityEventsPerVehicle,
                  availabilityEventsPerVehicle,
                ) ||
                const DeepCollectionEquality().equals(
                  other.availabilityEventsPerVehicle,
                  availabilityEventsPerVehicle,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(availabilityEventsPerVehicle) ^
      runtimeType.hashCode;
}

extension $NonAvailabilitiesPerVehiclePageExtension
    on NonAvailabilitiesPerVehiclePage {
  NonAvailabilitiesPerVehiclePage copyWith({
    Map<String, dynamic>? availabilityEventsPerVehicle,
  }) {
    return NonAvailabilitiesPerVehiclePage(
      availabilityEventsPerVehicle:
          availabilityEventsPerVehicle ?? this.availabilityEventsPerVehicle,
    );
  }

  NonAvailabilitiesPerVehiclePage copyWithWrapped({
    Wrapped<Map<String, dynamic>?>? availabilityEventsPerVehicle,
  }) {
    return NonAvailabilitiesPerVehiclePage(
      availabilityEventsPerVehicle: (availabilityEventsPerVehicle != null
          ? availabilityEventsPerVehicle.value
          : this.availabilityEventsPerVehicle),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NonAvailability {
  const NonAvailability({
    this.booking,
    this.fullPeriod,
    this.id,
    this.overdue,
    this.period,
    this.plannedPeriod,
    this.type,
    this.usagePeriod,
    this.vehicleId,
  });

  factory NonAvailability.fromJson(Map<String, dynamic> json) =>
      _$NonAvailabilityFromJson(json);

  static const toJsonFactory = _$NonAvailabilityToJson;
  Map<String, dynamic> toJson() => _$NonAvailabilityToJson(this);

  @JsonKey(name: 'booking')
  final Booking? booking;
  @JsonKey(name: 'fullPeriod')
  final Period? fullPeriod;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'overdue')
  final bool? overdue;
  @JsonKey(name: 'period')
  final Period? period;
  @JsonKey(name: 'plannedPeriod')
  final Period? plannedPeriod;
  @JsonKey(
    name: 'type',
    toJson: nonAvailabilityTypeNullableToJson,
    fromJson: nonAvailabilityTypeNullableFromJson,
  )
  final enums.NonAvailabilityType? type;
  @JsonKey(name: 'usagePeriod')
  final Period? usagePeriod;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$NonAvailabilityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NonAvailability &&
            (identical(other.booking, booking) ||
                const DeepCollectionEquality().equals(
                  other.booking,
                  booking,
                )) &&
            (identical(other.fullPeriod, fullPeriod) ||
                const DeepCollectionEquality().equals(
                  other.fullPeriod,
                  fullPeriod,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.overdue, overdue) ||
                const DeepCollectionEquality().equals(
                  other.overdue,
                  overdue,
                )) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.plannedPeriod, plannedPeriod) ||
                const DeepCollectionEquality().equals(
                  other.plannedPeriod,
                  plannedPeriod,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.usagePeriod, usagePeriod) ||
                const DeepCollectionEquality().equals(
                  other.usagePeriod,
                  usagePeriod,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(booking) ^
      const DeepCollectionEquality().hash(fullPeriod) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(overdue) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(plannedPeriod) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(usagePeriod) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $NonAvailabilityExtension on NonAvailability {
  NonAvailability copyWith({
    Booking? booking,
    Period? fullPeriod,
    String? id,
    bool? overdue,
    Period? period,
    Period? plannedPeriod,
    enums.NonAvailabilityType? type,
    Period? usagePeriod,
    String? vehicleId,
  }) {
    return NonAvailability(
      booking: booking ?? this.booking,
      fullPeriod: fullPeriod ?? this.fullPeriod,
      id: id ?? this.id,
      overdue: overdue ?? this.overdue,
      period: period ?? this.period,
      plannedPeriod: plannedPeriod ?? this.plannedPeriod,
      type: type ?? this.type,
      usagePeriod: usagePeriod ?? this.usagePeriod,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  NonAvailability copyWithWrapped({
    Wrapped<Booking?>? booking,
    Wrapped<Period?>? fullPeriod,
    Wrapped<String?>? id,
    Wrapped<bool?>? overdue,
    Wrapped<Period?>? period,
    Wrapped<Period?>? plannedPeriod,
    Wrapped<enums.NonAvailabilityType?>? type,
    Wrapped<Period?>? usagePeriod,
    Wrapped<String?>? vehicleId,
  }) {
    return NonAvailability(
      booking: (booking != null ? booking.value : this.booking),
      fullPeriod: (fullPeriod != null ? fullPeriod.value : this.fullPeriod),
      id: (id != null ? id.value : this.id),
      overdue: (overdue != null ? overdue.value : this.overdue),
      period: (period != null ? period.value : this.period),
      plannedPeriod: (plannedPeriod != null
          ? plannedPeriod.value
          : this.plannedPeriod),
      type: (type != null ? type.value : this.type),
      usagePeriod: (usagePeriod != null ? usagePeriod.value : this.usagePeriod),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class NonAvailabilityResponse {
  const NonAvailabilityResponse({this.nonAvailabilities});

  factory NonAvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$NonAvailabilityResponseFromJson(json);

  static const toJsonFactory = _$NonAvailabilityResponseToJson;
  Map<String, dynamic> toJson() => _$NonAvailabilityResponseToJson(this);

  @JsonKey(name: 'nonAvailabilities', defaultValue: <NonAvailability>[])
  final List<NonAvailability>? nonAvailabilities;
  static const fromJsonFactory = _$NonAvailabilityResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is NonAvailabilityResponse &&
            (identical(other.nonAvailabilities, nonAvailabilities) ||
                const DeepCollectionEquality().equals(
                  other.nonAvailabilities,
                  nonAvailabilities,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(nonAvailabilities) ^
      runtimeType.hashCode;
}

extension $NonAvailabilityResponseExtension on NonAvailabilityResponse {
  NonAvailabilityResponse copyWith({List<NonAvailability>? nonAvailabilities}) {
    return NonAvailabilityResponse(
      nonAvailabilities: nonAvailabilities ?? this.nonAvailabilities,
    );
  }

  NonAvailabilityResponse copyWithWrapped({
    Wrapped<List<NonAvailability>?>? nonAvailabilities,
  }) {
    return NonAvailabilityResponse(
      nonAvailabilities: (nonAvailabilities != null
          ? nonAvailabilities.value
          : this.nonAvailabilities),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Onboarding {
  const Onboarding({
    this.$client,
    this.legal,
    this.personal,
    this.phone,
    this.status,
  });

  factory Onboarding.fromJson(Map<String, dynamic> json) =>
      _$OnboardingFromJson(json);

  static const toJsonFactory = _$OnboardingToJson;
  Map<String, dynamic> toJson() => _$OnboardingToJson(this);

  @JsonKey(name: 'client')
  final OnboardingClient? $client;
  @JsonKey(name: 'legal')
  final OnboardingLegal? legal;
  @JsonKey(name: 'personal')
  final OnboardingPersonal? personal;
  @JsonKey(name: 'phone')
  final OnboardingPhone? phone;
  @JsonKey(
    name: 'status',
    toJson: onboardingStatusNullableToJson,
    fromJson: onboardingStatusNullableFromJson,
  )
  final enums.OnboardingStatus? status;
  static const fromJsonFactory = _$OnboardingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Onboarding &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality().equals(
                  other.$client,
                  $client,
                )) &&
            (identical(other.legal, legal) ||
                const DeepCollectionEquality().equals(other.legal, legal)) &&
            (identical(other.personal, personal) ||
                const DeepCollectionEquality().equals(
                  other.personal,
                  personal,
                )) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(legal) ^
      const DeepCollectionEquality().hash(personal) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $OnboardingExtension on Onboarding {
  Onboarding copyWith({
    OnboardingClient? $client,
    OnboardingLegal? legal,
    OnboardingPersonal? personal,
    OnboardingPhone? phone,
    enums.OnboardingStatus? status,
  }) {
    return Onboarding(
      $client: $client ?? this.$client,
      legal: legal ?? this.legal,
      personal: personal ?? this.personal,
      phone: phone ?? this.phone,
      status: status ?? this.status,
    );
  }

  Onboarding copyWithWrapped({
    Wrapped<OnboardingClient?>? $client,
    Wrapped<OnboardingLegal?>? legal,
    Wrapped<OnboardingPersonal?>? personal,
    Wrapped<OnboardingPhone?>? phone,
    Wrapped<enums.OnboardingStatus?>? status,
  }) {
    return Onboarding(
      $client: ($client != null ? $client.value : this.$client),
      legal: (legal != null ? legal.value : this.legal),
      personal: (personal != null ? personal.value : this.personal),
      phone: (phone != null ? phone.value : this.phone),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OnboardingClient {
  const OnboardingClient({this.subscriptions});

  factory OnboardingClient.fromJson(Map<String, dynamic> json) =>
      _$OnboardingClientFromJson(json);

  static const toJsonFactory = _$OnboardingClientToJson;
  Map<String, dynamic> toJson() => _$OnboardingClientToJson(this);

  @JsonKey(name: 'subscriptions', defaultValue: <Subscription>[])
  final List<Subscription>? subscriptions;
  static const fromJsonFactory = _$OnboardingClientFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OnboardingClient &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality().equals(
                  other.subscriptions,
                  subscriptions,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(subscriptions) ^ runtimeType.hashCode;
}

extension $OnboardingClientExtension on OnboardingClient {
  OnboardingClient copyWith({List<Subscription>? subscriptions}) {
    return OnboardingClient(subscriptions: subscriptions ?? this.subscriptions);
  }

  OnboardingClient copyWithWrapped({
    Wrapped<List<Subscription>?>? subscriptions,
  }) {
    return OnboardingClient(
      subscriptions: (subscriptions != null
          ? subscriptions.value
          : this.subscriptions),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OnboardingLegal {
  const OnboardingLegal({
    required this.convictions,
    required this.nrOfAccidents,
  });

  factory OnboardingLegal.fromJson(Map<String, dynamic> json) =>
      _$OnboardingLegalFromJson(json);

  static const toJsonFactory = _$OnboardingLegalToJson;
  Map<String, dynamic> toJson() => _$OnboardingLegalToJson(this);

  @JsonKey(name: 'convictions')
  final Convictions convictions;
  @JsonKey(name: 'nrOfAccidents')
  final int nrOfAccidents;
  static const fromJsonFactory = _$OnboardingLegalFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OnboardingLegal &&
            (identical(other.convictions, convictions) ||
                const DeepCollectionEquality().equals(
                  other.convictions,
                  convictions,
                )) &&
            (identical(other.nrOfAccidents, nrOfAccidents) ||
                const DeepCollectionEquality().equals(
                  other.nrOfAccidents,
                  nrOfAccidents,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(convictions) ^
      const DeepCollectionEquality().hash(nrOfAccidents) ^
      runtimeType.hashCode;
}

extension $OnboardingLegalExtension on OnboardingLegal {
  OnboardingLegal copyWith({Convictions? convictions, int? nrOfAccidents}) {
    return OnboardingLegal(
      convictions: convictions ?? this.convictions,
      nrOfAccidents: nrOfAccidents ?? this.nrOfAccidents,
    );
  }

  OnboardingLegal copyWithWrapped({
    Wrapped<Convictions>? convictions,
    Wrapped<int>? nrOfAccidents,
  }) {
    return OnboardingLegal(
      convictions: (convictions != null ? convictions.value : this.convictions),
      nrOfAccidents: (nrOfAccidents != null
          ? nrOfAccidents.value
          : this.nrOfAccidents),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OnboardingPersonal {
  const OnboardingPersonal({
    required this.box,
    required this.city,
    required this.dateCurrentLicense,
    required this.dateLicenseUntil,
    required this.dateOfBirth,
    required this.firstName,
    required this.houseNumber,
    required this.lastName,
    required this.licenseNumber,
    required this.licenseType,
    required this.nationality,
    required this.postalCode,
    required this.socialSecurityNumber,
    required this.street,
  });

  factory OnboardingPersonal.fromJson(Map<String, dynamic> json) =>
      _$OnboardingPersonalFromJson(json);

  static const toJsonFactory = _$OnboardingPersonalToJson;
  Map<String, dynamic> toJson() => _$OnboardingPersonalToJson(this);

  @JsonKey(name: 'box')
  final String box;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'dateCurrentLicense')
  final DateTime dateCurrentLicense;
  @JsonKey(name: 'dateLicenseUntil')
  final DateTime dateLicenseUntil;
  @JsonKey(name: 'dateOfBirth')
  final DateTime dateOfBirth;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'houseNumber')
  final String houseNumber;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'licenseNumber')
  final String licenseNumber;
  @JsonKey(
    name: 'licenseType',
    toJson: onboardingPersonalLicenseTypeToJson,
    fromJson: onboardingPersonalLicenseTypeFromJson,
  )
  final enums.OnboardingPersonalLicenseType licenseType;
  @JsonKey(name: 'nationality')
  final String nationality;
  @JsonKey(name: 'postalCode')
  final String postalCode;
  @JsonKey(name: 'socialSecurityNumber')
  final String socialSecurityNumber;
  @JsonKey(name: 'street')
  final String street;
  static const fromJsonFactory = _$OnboardingPersonalFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OnboardingPersonal &&
            (identical(other.box, box) ||
                const DeepCollectionEquality().equals(other.box, box)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.dateCurrentLicense, dateCurrentLicense) ||
                const DeepCollectionEquality().equals(
                  other.dateCurrentLicense,
                  dateCurrentLicense,
                )) &&
            (identical(other.dateLicenseUntil, dateLicenseUntil) ||
                const DeepCollectionEquality().equals(
                  other.dateLicenseUntil,
                  dateLicenseUntil,
                )) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality().equals(
                  other.dateOfBirth,
                  dateOfBirth,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality().equals(
                  other.houseNumber,
                  houseNumber,
                )) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.licenseNumber, licenseNumber) ||
                const DeepCollectionEquality().equals(
                  other.licenseNumber,
                  licenseNumber,
                )) &&
            (identical(other.licenseType, licenseType) ||
                const DeepCollectionEquality().equals(
                  other.licenseType,
                  licenseType,
                )) &&
            (identical(other.nationality, nationality) ||
                const DeepCollectionEquality().equals(
                  other.nationality,
                  nationality,
                )) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality().equals(
                  other.postalCode,
                  postalCode,
                )) &&
            (identical(other.socialSecurityNumber, socialSecurityNumber) ||
                const DeepCollectionEquality().equals(
                  other.socialSecurityNumber,
                  socialSecurityNumber,
                )) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(box) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(dateCurrentLicense) ^
      const DeepCollectionEquality().hash(dateLicenseUntil) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(houseNumber) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(licenseNumber) ^
      const DeepCollectionEquality().hash(licenseType) ^
      const DeepCollectionEquality().hash(nationality) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(socialSecurityNumber) ^
      const DeepCollectionEquality().hash(street) ^
      runtimeType.hashCode;
}

extension $OnboardingPersonalExtension on OnboardingPersonal {
  OnboardingPersonal copyWith({
    String? box,
    String? city,
    DateTime? dateCurrentLicense,
    DateTime? dateLicenseUntil,
    DateTime? dateOfBirth,
    String? firstName,
    String? houseNumber,
    String? lastName,
    String? licenseNumber,
    enums.OnboardingPersonalLicenseType? licenseType,
    String? nationality,
    String? postalCode,
    String? socialSecurityNumber,
    String? street,
  }) {
    return OnboardingPersonal(
      box: box ?? this.box,
      city: city ?? this.city,
      dateCurrentLicense: dateCurrentLicense ?? this.dateCurrentLicense,
      dateLicenseUntil: dateLicenseUntil ?? this.dateLicenseUntil,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      firstName: firstName ?? this.firstName,
      houseNumber: houseNumber ?? this.houseNumber,
      lastName: lastName ?? this.lastName,
      licenseNumber: licenseNumber ?? this.licenseNumber,
      licenseType: licenseType ?? this.licenseType,
      nationality: nationality ?? this.nationality,
      postalCode: postalCode ?? this.postalCode,
      socialSecurityNumber: socialSecurityNumber ?? this.socialSecurityNumber,
      street: street ?? this.street,
    );
  }

  OnboardingPersonal copyWithWrapped({
    Wrapped<String>? box,
    Wrapped<String>? city,
    Wrapped<DateTime>? dateCurrentLicense,
    Wrapped<DateTime>? dateLicenseUntil,
    Wrapped<DateTime>? dateOfBirth,
    Wrapped<String>? firstName,
    Wrapped<String>? houseNumber,
    Wrapped<String>? lastName,
    Wrapped<String>? licenseNumber,
    Wrapped<enums.OnboardingPersonalLicenseType>? licenseType,
    Wrapped<String>? nationality,
    Wrapped<String>? postalCode,
    Wrapped<String>? socialSecurityNumber,
    Wrapped<String>? street,
  }) {
    return OnboardingPersonal(
      box: (box != null ? box.value : this.box),
      city: (city != null ? city.value : this.city),
      dateCurrentLicense: (dateCurrentLicense != null
          ? dateCurrentLicense.value
          : this.dateCurrentLicense),
      dateLicenseUntil: (dateLicenseUntil != null
          ? dateLicenseUntil.value
          : this.dateLicenseUntil),
      dateOfBirth: (dateOfBirth != null ? dateOfBirth.value : this.dateOfBirth),
      firstName: (firstName != null ? firstName.value : this.firstName),
      houseNumber: (houseNumber != null ? houseNumber.value : this.houseNumber),
      lastName: (lastName != null ? lastName.value : this.lastName),
      licenseNumber: (licenseNumber != null
          ? licenseNumber.value
          : this.licenseNumber),
      licenseType: (licenseType != null ? licenseType.value : this.licenseType),
      nationality: (nationality != null ? nationality.value : this.nationality),
      postalCode: (postalCode != null ? postalCode.value : this.postalCode),
      socialSecurityNumber: (socialSecurityNumber != null
          ? socialSecurityNumber.value
          : this.socialSecurityNumber),
      street: (street != null ? street.value : this.street),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OnboardingPhone {
  const OnboardingPhone({
    required this.phoneNumber,
    this.phoneNumberValidationCode,
  });

  factory OnboardingPhone.fromJson(Map<String, dynamic> json) =>
      _$OnboardingPhoneFromJson(json);

  static const toJsonFactory = _$OnboardingPhoneToJson;
  Map<String, dynamic> toJson() => _$OnboardingPhoneToJson(this);

  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;
  @JsonKey(name: 'phoneNumberValidationCode')
  final String? phoneNumberValidationCode;
  static const fromJsonFactory = _$OnboardingPhoneFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OnboardingPhone &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(
                  other.phoneNumberValidationCode,
                  phoneNumberValidationCode,
                ) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumberValidationCode,
                  phoneNumberValidationCode,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(phoneNumberValidationCode) ^
      runtimeType.hashCode;
}

extension $OnboardingPhoneExtension on OnboardingPhone {
  OnboardingPhone copyWith({
    String? phoneNumber,
    String? phoneNumberValidationCode,
  }) {
    return OnboardingPhone(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      phoneNumberValidationCode:
          phoneNumberValidationCode ?? this.phoneNumberValidationCode,
    );
  }

  OnboardingPhone copyWithWrapped({
    Wrapped<String>? phoneNumber,
    Wrapped<String?>? phoneNumberValidationCode,
  }) {
    return OnboardingPhone(
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      phoneNumberValidationCode: (phoneNumberValidationCode != null
          ? phoneNumberValidationCode.value
          : this.phoneNumberValidationCode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PasswordReset {
  const PasswordReset({required this.email});

  factory PasswordReset.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetFromJson(json);

  static const toJsonFactory = _$PasswordResetToJson;
  Map<String, dynamic> toJson() => _$PasswordResetToJson(this);

  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$PasswordResetFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PasswordReset &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $PasswordResetExtension on PasswordReset {
  PasswordReset copyWith({String? email}) {
    return PasswordReset(email: email ?? this.email);
  }

  PasswordReset copyWithWrapped({Wrapped<String>? email}) {
    return PasswordReset(email: (email != null ? email.value : this.email));
  }
}

@JsonSerializable(explicitToJson: true)
class Period {
  const Period({this.end, this.start});

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  static const toJsonFactory = _$PeriodToJson;
  Map<String, dynamic> toJson() => _$PeriodToJson(this);

  @JsonKey(name: 'end')
  final DateTime? end;
  @JsonKey(name: 'start')
  final DateTime? start;
  static const fromJsonFactory = _$PeriodFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Period &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(start) ^
      runtimeType.hashCode;
}

extension $PeriodExtension on Period {
  Period copyWith({DateTime? end, DateTime? start}) {
    return Period(end: end ?? this.end, start: start ?? this.start);
  }

  Period copyWithWrapped({Wrapped<DateTime?>? end, Wrapped<DateTime?>? start}) {
    return Period(
      end: (end != null ? end.value : this.end),
      start: (start != null ? start.value : this.start),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProviderTelematics {
  const ProviderTelematics({
    this.providerDeviceId,
    this.providerId,
    this.vehicleId,
  });

  factory ProviderTelematics.fromJson(Map<String, dynamic> json) =>
      _$ProviderTelematicsFromJson(json);

  static const toJsonFactory = _$ProviderTelematicsToJson;
  Map<String, dynamic> toJson() => _$ProviderTelematicsToJson(this);

  @JsonKey(name: 'providerDeviceId')
  final String? providerDeviceId;
  @JsonKey(name: 'providerId')
  final String? providerId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$ProviderTelematicsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProviderTelematics &&
            (identical(other.providerDeviceId, providerDeviceId) ||
                const DeepCollectionEquality().equals(
                  other.providerDeviceId,
                  providerDeviceId,
                )) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality().equals(
                  other.providerId,
                  providerId,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(providerDeviceId) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $ProviderTelematicsExtension on ProviderTelematics {
  ProviderTelematics copyWith({
    String? providerDeviceId,
    String? providerId,
    String? vehicleId,
  }) {
    return ProviderTelematics(
      providerDeviceId: providerDeviceId ?? this.providerDeviceId,
      providerId: providerId ?? this.providerId,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  ProviderTelematics copyWithWrapped({
    Wrapped<String?>? providerDeviceId,
    Wrapped<String?>? providerId,
    Wrapped<String?>? vehicleId,
  }) {
    return ProviderTelematics(
      providerDeviceId: (providerDeviceId != null
          ? providerDeviceId.value
          : this.providerDeviceId),
      providerId: (providerId != null ? providerId.value : this.providerId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecurringNonAvailability {
  const RecurringNonAvailability({this.id, this.schedule, this.vehicleId});

  factory RecurringNonAvailability.fromJson(Map<String, dynamic> json) =>
      _$RecurringNonAvailabilityFromJson(json);

  static const toJsonFactory = _$RecurringNonAvailabilityToJson;
  Map<String, dynamic> toJson() => _$RecurringNonAvailabilityToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'schedule')
  final RecurringSchedule? schedule;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$RecurringNonAvailabilityFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecurringNonAvailability &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality().equals(
                  other.schedule,
                  schedule,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $RecurringNonAvailabilityExtension on RecurringNonAvailability {
  RecurringNonAvailability copyWith({
    String? id,
    RecurringSchedule? schedule,
    String? vehicleId,
  }) {
    return RecurringNonAvailability(
      id: id ?? this.id,
      schedule: schedule ?? this.schedule,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  RecurringNonAvailability copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<RecurringSchedule?>? schedule,
    Wrapped<String?>? vehicleId,
  }) {
    return RecurringNonAvailability(
      id: (id != null ? id.value : this.id),
      schedule: (schedule != null ? schedule.value : this.schedule),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RecurringSchedule {
  const RecurringSchedule({
    this.daysOfWeek,
    required this.endDate,
    this.interval,
    required this.recurringType,
    this.timeZone,
  });

  factory RecurringSchedule.fromJson(Map<String, dynamic> json) =>
      _$RecurringScheduleFromJson(json);

  static const toJsonFactory = _$RecurringScheduleToJson;
  Map<String, dynamic> toJson() => _$RecurringScheduleToJson(this);

  @JsonKey(name: 'daysOfWeek', defaultValue: <int>[])
  final List<int>? daysOfWeek;
  @JsonKey(name: 'endDate')
  final DateTime endDate;
  @JsonKey(name: 'interval')
  final int? interval;
  @JsonKey(
    name: 'recurringType',
    toJson: recurringScheduleRecurringTypeToJson,
    fromJson: recurringScheduleRecurringTypeFromJson,
  )
  final enums.RecurringScheduleRecurringType recurringType;
  @JsonKey(
    name: 'timeZone',
    toJson: recurringScheduleTimeZoneNullableToJson,
    fromJson: recurringScheduleTimeZoneNullableFromJson,
  )
  final enums.RecurringScheduleTimeZone? timeZone;
  static const fromJsonFactory = _$RecurringScheduleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RecurringSchedule &&
            (identical(other.daysOfWeek, daysOfWeek) ||
                const DeepCollectionEquality().equals(
                  other.daysOfWeek,
                  daysOfWeek,
                )) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(
                  other.endDate,
                  endDate,
                )) &&
            (identical(other.interval, interval) ||
                const DeepCollectionEquality().equals(
                  other.interval,
                  interval,
                )) &&
            (identical(other.recurringType, recurringType) ||
                const DeepCollectionEquality().equals(
                  other.recurringType,
                  recurringType,
                )) &&
            (identical(other.timeZone, timeZone) ||
                const DeepCollectionEquality().equals(
                  other.timeZone,
                  timeZone,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(daysOfWeek) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(interval) ^
      const DeepCollectionEquality().hash(recurringType) ^
      const DeepCollectionEquality().hash(timeZone) ^
      runtimeType.hashCode;
}

extension $RecurringScheduleExtension on RecurringSchedule {
  RecurringSchedule copyWith({
    List<int>? daysOfWeek,
    DateTime? endDate,
    int? interval,
    enums.RecurringScheduleRecurringType? recurringType,
    enums.RecurringScheduleTimeZone? timeZone,
  }) {
    return RecurringSchedule(
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      endDate: endDate ?? this.endDate,
      interval: interval ?? this.interval,
      recurringType: recurringType ?? this.recurringType,
      timeZone: timeZone ?? this.timeZone,
    );
  }

  RecurringSchedule copyWithWrapped({
    Wrapped<List<int>?>? daysOfWeek,
    Wrapped<DateTime>? endDate,
    Wrapped<int?>? interval,
    Wrapped<enums.RecurringScheduleRecurringType>? recurringType,
    Wrapped<enums.RecurringScheduleTimeZone?>? timeZone,
  }) {
    return RecurringSchedule(
      daysOfWeek: (daysOfWeek != null ? daysOfWeek.value : this.daysOfWeek),
      endDate: (endDate != null ? endDate.value : this.endDate),
      interval: (interval != null ? interval.value : this.interval),
      recurringType: (recurringType != null
          ? recurringType.value
          : this.recurringType),
      timeZone: (timeZone != null ? timeZone.value : this.timeZone),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RegisterDeviceRequest {
  const RegisterDeviceRequest({this.active, required this.token});

  factory RegisterDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterDeviceRequestFromJson(json);

  static const toJsonFactory = _$RegisterDeviceRequestToJson;
  Map<String, dynamic> toJson() => _$RegisterDeviceRequestToJson(this);

  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'token')
  final String token;
  static const fromJsonFactory = _$RegisterDeviceRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RegisterDeviceRequest &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $RegisterDeviceRequestExtension on RegisterDeviceRequest {
  RegisterDeviceRequest copyWith({bool? active, String? token}) {
    return RegisterDeviceRequest(
      active: active ?? this.active,
      token: token ?? this.token,
    );
  }

  RegisterDeviceRequest copyWithWrapped({
    Wrapped<bool?>? active,
    Wrapped<String>? token,
  }) {
    return RegisterDeviceRequest(
      active: (active != null ? active.value : this.active),
      token: (token != null ? token.value : this.token),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ReplaceBookingRequest {
  const ReplaceBookingRequest({
    this.adminComments,
    this.authorizationComments,
    this.clientId,
    this.comments,
    this.filtersForBooking,
    this.invoiceComments,
    this.originalBookingId,
    this.period,
    this.userId,
    this.vehicleId,
  });

  factory ReplaceBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$ReplaceBookingRequestFromJson(json);

  static const toJsonFactory = _$ReplaceBookingRequestToJson;
  Map<String, dynamic> toJson() => _$ReplaceBookingRequestToJson(this);

  @JsonKey(name: 'adminComments')
  final String? adminComments;
  @JsonKey(name: 'authorizationComments')
  final String? authorizationComments;
  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'filtersForBooking')
  final FiltersForBooking? filtersForBooking;
  @JsonKey(name: 'invoiceComments')
  final String? invoiceComments;
  @JsonKey(name: 'originalBookingId')
  final String? originalBookingId;
  @JsonKey(name: 'period')
  final Period? period;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$ReplaceBookingRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ReplaceBookingRequest &&
            (identical(other.adminComments, adminComments) ||
                const DeepCollectionEquality().equals(
                  other.adminComments,
                  adminComments,
                )) &&
            (identical(other.authorizationComments, authorizationComments) ||
                const DeepCollectionEquality().equals(
                  other.authorizationComments,
                  authorizationComments,
                )) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality().equals(
                  other.clientId,
                  clientId,
                )) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality().equals(
                  other.comments,
                  comments,
                )) &&
            (identical(other.filtersForBooking, filtersForBooking) ||
                const DeepCollectionEquality().equals(
                  other.filtersForBooking,
                  filtersForBooking,
                )) &&
            (identical(other.invoiceComments, invoiceComments) ||
                const DeepCollectionEquality().equals(
                  other.invoiceComments,
                  invoiceComments,
                )) &&
            (identical(other.originalBookingId, originalBookingId) ||
                const DeepCollectionEquality().equals(
                  other.originalBookingId,
                  originalBookingId,
                )) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(adminComments) ^
      const DeepCollectionEquality().hash(authorizationComments) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(filtersForBooking) ^
      const DeepCollectionEquality().hash(invoiceComments) ^
      const DeepCollectionEquality().hash(originalBookingId) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $ReplaceBookingRequestExtension on ReplaceBookingRequest {
  ReplaceBookingRequest copyWith({
    String? adminComments,
    String? authorizationComments,
    String? clientId,
    String? comments,
    FiltersForBooking? filtersForBooking,
    String? invoiceComments,
    String? originalBookingId,
    Period? period,
    String? userId,
    String? vehicleId,
  }) {
    return ReplaceBookingRequest(
      adminComments: adminComments ?? this.adminComments,
      authorizationComments:
          authorizationComments ?? this.authorizationComments,
      clientId: clientId ?? this.clientId,
      comments: comments ?? this.comments,
      filtersForBooking: filtersForBooking ?? this.filtersForBooking,
      invoiceComments: invoiceComments ?? this.invoiceComments,
      originalBookingId: originalBookingId ?? this.originalBookingId,
      period: period ?? this.period,
      userId: userId ?? this.userId,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  ReplaceBookingRequest copyWithWrapped({
    Wrapped<String?>? adminComments,
    Wrapped<String?>? authorizationComments,
    Wrapped<String?>? clientId,
    Wrapped<String?>? comments,
    Wrapped<FiltersForBooking?>? filtersForBooking,
    Wrapped<String?>? invoiceComments,
    Wrapped<String?>? originalBookingId,
    Wrapped<Period?>? period,
    Wrapped<String?>? userId,
    Wrapped<String?>? vehicleId,
  }) {
    return ReplaceBookingRequest(
      adminComments: (adminComments != null
          ? adminComments.value
          : this.adminComments),
      authorizationComments: (authorizationComments != null
          ? authorizationComments.value
          : this.authorizationComments),
      clientId: (clientId != null ? clientId.value : this.clientId),
      comments: (comments != null ? comments.value : this.comments),
      filtersForBooking: (filtersForBooking != null
          ? filtersForBooking.value
          : this.filtersForBooking),
      invoiceComments: (invoiceComments != null
          ? invoiceComments.value
          : this.invoiceComments),
      originalBookingId: (originalBookingId != null
          ? originalBookingId.value
          : this.originalBookingId),
      period: (period != null ? period.value : this.period),
      userId: (userId != null ? userId.value : this.userId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ResendVerificationEmail {
  const ResendVerificationEmail({required this.email});

  factory ResendVerificationEmail.fromJson(Map<String, dynamic> json) =>
      _$ResendVerificationEmailFromJson(json);

  static const toJsonFactory = _$ResendVerificationEmailToJson;
  Map<String, dynamic> toJson() => _$ResendVerificationEmailToJson(this);

  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$ResendVerificationEmailFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ResendVerificationEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $ResendVerificationEmailExtension on ResendVerificationEmail {
  ResendVerificationEmail copyWith({String? email}) {
    return ResendVerificationEmail(email: email ?? this.email);
  }

  ResendVerificationEmail copyWithWrapped({Wrapped<String>? email}) {
    return ResendVerificationEmail(
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SearchBookingsRequest {
  const SearchBookingsRequest({
    this.adminComments,
    this.clientId,
    this.comments,
    this.endPeriod,
    this.licensePlate,
    this.startPeriod,
    this.statuses,
    this.userId,
    this.vehicleId,
    this.vehicleIds,
  });

  factory SearchBookingsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchBookingsRequestFromJson(json);

  static const toJsonFactory = _$SearchBookingsRequestToJson;
  Map<String, dynamic> toJson() => _$SearchBookingsRequestToJson(this);

  @JsonKey(name: 'adminComments')
  final String? adminComments;
  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'endPeriod')
  final Period? endPeriod;
  @JsonKey(name: 'licensePlate')
  final String? licensePlate;
  @JsonKey(name: 'startPeriod')
  final Period? startPeriod;
  @JsonKey(
    name: 'statuses',
    toJson: searchBookingsRequestStatusesListToJson,
    fromJson: searchBookingsRequestStatusesListFromJson,
  )
  final List<enums.SearchBookingsRequestStatuses>? statuses;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'vehicleIds', defaultValue: <String>[])
  final List<String>? vehicleIds;
  static const fromJsonFactory = _$SearchBookingsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SearchBookingsRequest &&
            (identical(other.adminComments, adminComments) ||
                const DeepCollectionEquality().equals(
                  other.adminComments,
                  adminComments,
                )) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality().equals(
                  other.clientId,
                  clientId,
                )) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality().equals(
                  other.comments,
                  comments,
                )) &&
            (identical(other.endPeriod, endPeriod) ||
                const DeepCollectionEquality().equals(
                  other.endPeriod,
                  endPeriod,
                )) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality().equals(
                  other.licensePlate,
                  licensePlate,
                )) &&
            (identical(other.startPeriod, startPeriod) ||
                const DeepCollectionEquality().equals(
                  other.startPeriod,
                  startPeriod,
                )) &&
            (identical(other.statuses, statuses) ||
                const DeepCollectionEquality().equals(
                  other.statuses,
                  statuses,
                )) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )) &&
            (identical(other.vehicleIds, vehicleIds) ||
                const DeepCollectionEquality().equals(
                  other.vehicleIds,
                  vehicleIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(adminComments) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(endPeriod) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(startPeriod) ^
      const DeepCollectionEquality().hash(statuses) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicleIds) ^
      runtimeType.hashCode;
}

extension $SearchBookingsRequestExtension on SearchBookingsRequest {
  SearchBookingsRequest copyWith({
    String? adminComments,
    String? clientId,
    String? comments,
    Period? endPeriod,
    String? licensePlate,
    Period? startPeriod,
    List<enums.SearchBookingsRequestStatuses>? statuses,
    String? userId,
    String? vehicleId,
    List<String>? vehicleIds,
  }) {
    return SearchBookingsRequest(
      adminComments: adminComments ?? this.adminComments,
      clientId: clientId ?? this.clientId,
      comments: comments ?? this.comments,
      endPeriod: endPeriod ?? this.endPeriod,
      licensePlate: licensePlate ?? this.licensePlate,
      startPeriod: startPeriod ?? this.startPeriod,
      statuses: statuses ?? this.statuses,
      userId: userId ?? this.userId,
      vehicleId: vehicleId ?? this.vehicleId,
      vehicleIds: vehicleIds ?? this.vehicleIds,
    );
  }

  SearchBookingsRequest copyWithWrapped({
    Wrapped<String?>? adminComments,
    Wrapped<String?>? clientId,
    Wrapped<String?>? comments,
    Wrapped<Period?>? endPeriod,
    Wrapped<String?>? licensePlate,
    Wrapped<Period?>? startPeriod,
    Wrapped<List<enums.SearchBookingsRequestStatuses>?>? statuses,
    Wrapped<String?>? userId,
    Wrapped<String?>? vehicleId,
    Wrapped<List<String>?>? vehicleIds,
  }) {
    return SearchBookingsRequest(
      adminComments: (adminComments != null
          ? adminComments.value
          : this.adminComments),
      clientId: (clientId != null ? clientId.value : this.clientId),
      comments: (comments != null ? comments.value : this.comments),
      endPeriod: (endPeriod != null ? endPeriod.value : this.endPeriod),
      licensePlate: (licensePlate != null
          ? licensePlate.value
          : this.licensePlate),
      startPeriod: (startPeriod != null ? startPeriod.value : this.startPeriod),
      statuses: (statuses != null ? statuses.value : this.statuses),
      userId: (userId != null ? userId.value : this.userId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
      vehicleIds: (vehicleIds != null ? vehicleIds.value : this.vehicleIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SearchClientContractsRequest {
  const SearchClientContractsRequest({
    this.clientId,
    this.contractId,
    this.endDateFrom,
    this.endDateTo,
    this.startDateFrom,
    this.startDateTo,
    this.flexSearch,
    this.orderBy,
  });

  factory SearchClientContractsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchClientContractsRequestFromJson(json);

  static const toJsonFactory = _$SearchClientContractsRequestToJson;
  Map<String, dynamic> toJson() => _$SearchClientContractsRequestToJson(this);

  @JsonKey(name: 'clientId')
  final int? clientId;
  @JsonKey(name: 'contractId')
  final int? contractId;
  @JsonKey(name: 'endDateFrom', toJson: _dateToJson)
  final DateTime? endDateFrom;
  @JsonKey(name: 'endDateTo', toJson: _dateToJson)
  final DateTime? endDateTo;
  @JsonKey(name: 'startDateFrom', toJson: _dateToJson)
  final DateTime? startDateFrom;
  @JsonKey(name: 'startDateTo', toJson: _dateToJson)
  final DateTime? startDateTo;
  @JsonKey(name: 'flexSearch')
  final String? flexSearch;
  @JsonKey(name: 'orderBy')
  final String? orderBy;
  static const fromJsonFactory = _$SearchClientContractsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SearchClientContractsRequest &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality().equals(
                  other.clientId,
                  clientId,
                )) &&
            (identical(other.contractId, contractId) ||
                const DeepCollectionEquality().equals(
                  other.contractId,
                  contractId,
                )) &&
            (identical(other.endDateFrom, endDateFrom) ||
                const DeepCollectionEquality().equals(
                  other.endDateFrom,
                  endDateFrom,
                )) &&
            (identical(other.endDateTo, endDateTo) ||
                const DeepCollectionEquality().equals(
                  other.endDateTo,
                  endDateTo,
                )) &&
            (identical(other.startDateFrom, startDateFrom) ||
                const DeepCollectionEquality().equals(
                  other.startDateFrom,
                  startDateFrom,
                )) &&
            (identical(other.startDateTo, startDateTo) ||
                const DeepCollectionEquality().equals(
                  other.startDateTo,
                  startDateTo,
                )) &&
            (identical(other.flexSearch, flexSearch) ||
                const DeepCollectionEquality().equals(
                  other.flexSearch,
                  flexSearch,
                )) &&
            (identical(other.orderBy, orderBy) ||
                const DeepCollectionEquality().equals(other.orderBy, orderBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(contractId) ^
      const DeepCollectionEquality().hash(endDateFrom) ^
      const DeepCollectionEquality().hash(endDateTo) ^
      const DeepCollectionEquality().hash(startDateFrom) ^
      const DeepCollectionEquality().hash(startDateTo) ^
      const DeepCollectionEquality().hash(flexSearch) ^
      const DeepCollectionEquality().hash(orderBy) ^
      runtimeType.hashCode;
}

extension $SearchClientContractsRequestExtension
    on SearchClientContractsRequest {
  SearchClientContractsRequest copyWith({
    int? clientId,
    int? contractId,
    DateTime? endDateFrom,
    DateTime? endDateTo,
    DateTime? startDateFrom,
    DateTime? startDateTo,
    String? flexSearch,
    String? orderBy,
  }) {
    return SearchClientContractsRequest(
      clientId: clientId ?? this.clientId,
      contractId: contractId ?? this.contractId,
      endDateFrom: endDateFrom ?? this.endDateFrom,
      endDateTo: endDateTo ?? this.endDateTo,
      startDateFrom: startDateFrom ?? this.startDateFrom,
      startDateTo: startDateTo ?? this.startDateTo,
      flexSearch: flexSearch ?? this.flexSearch,
      orderBy: orderBy ?? this.orderBy,
    );
  }

  SearchClientContractsRequest copyWithWrapped({
    Wrapped<int?>? clientId,
    Wrapped<int?>? contractId,
    Wrapped<DateTime?>? endDateFrom,
    Wrapped<DateTime?>? endDateTo,
    Wrapped<DateTime?>? startDateFrom,
    Wrapped<DateTime?>? startDateTo,
    Wrapped<String?>? flexSearch,
    Wrapped<String?>? orderBy,
  }) {
    return SearchClientContractsRequest(
      clientId: (clientId != null ? clientId.value : this.clientId),
      contractId: (contractId != null ? contractId.value : this.contractId),
      endDateFrom: (endDateFrom != null ? endDateFrom.value : this.endDateFrom),
      endDateTo: (endDateTo != null ? endDateTo.value : this.endDateTo),
      startDateFrom: (startDateFrom != null
          ? startDateFrom.value
          : this.startDateFrom),
      startDateTo: (startDateTo != null ? startDateTo.value : this.startDateTo),
      flexSearch: (flexSearch != null ? flexSearch.value : this.flexSearch),
      orderBy: (orderBy != null ? orderBy.value : this.orderBy),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SearchIssuesRequest {
  const SearchIssuesRequest({
    this.assignedToRemoteId,
    this.bookingId,
    this.createdAfter,
    this.max,
    this.number,
    this.offset,
    this.order,
    this.priorities,
    this.sort,
    this.statuses,
    this.title,
    this.updatedAfter,
    this.userRemoteId,
    this.vehicleId,
  });

  factory SearchIssuesRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchIssuesRequestFromJson(json);

  static const toJsonFactory = _$SearchIssuesRequestToJson;
  Map<String, dynamic> toJson() => _$SearchIssuesRequestToJson(this);

  @JsonKey(name: 'assignedToRemoteId')
  final String? assignedToRemoteId;
  @JsonKey(name: 'bookingId')
  final String? bookingId;
  @JsonKey(name: 'createdAfter')
  final DateTime? createdAfter;
  @JsonKey(name: 'max')
  final int? max;
  @JsonKey(name: 'number')
  final int? number;
  @JsonKey(name: 'offset')
  final int? offset;
  @JsonKey(
    name: 'order',
    toJson: searchIssuesRequestOrderNullableToJson,
    fromJson: searchIssuesRequestOrderNullableFromJson,
  )
  final enums.SearchIssuesRequestOrder? order;
  @JsonKey(
    name: 'priorities',
    toJson: searchIssuesRequestPrioritiesListToJson,
    fromJson: searchIssuesRequestPrioritiesListFromJson,
  )
  final List<enums.SearchIssuesRequestPriorities>? priorities;
  @JsonKey(name: 'sort')
  final String? sort;
  @JsonKey(
    name: 'statuses',
    toJson: searchIssuesRequestStatusesListToJson,
    fromJson: searchIssuesRequestStatusesListFromJson,
  )
  final List<enums.SearchIssuesRequestStatuses>? statuses;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'updatedAfter')
  final DateTime? updatedAfter;
  @JsonKey(name: 'userRemoteId')
  final String? userRemoteId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$SearchIssuesRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SearchIssuesRequest &&
            (identical(other.assignedToRemoteId, assignedToRemoteId) ||
                const DeepCollectionEquality().equals(
                  other.assignedToRemoteId,
                  assignedToRemoteId,
                )) &&
            (identical(other.bookingId, bookingId) ||
                const DeepCollectionEquality().equals(
                  other.bookingId,
                  bookingId,
                )) &&
            (identical(other.createdAfter, createdAfter) ||
                const DeepCollectionEquality().equals(
                  other.createdAfter,
                  createdAfter,
                )) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.priorities, priorities) ||
                const DeepCollectionEquality().equals(
                  other.priorities,
                  priorities,
                )) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.statuses, statuses) ||
                const DeepCollectionEquality().equals(
                  other.statuses,
                  statuses,
                )) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.updatedAfter, updatedAfter) ||
                const DeepCollectionEquality().equals(
                  other.updatedAfter,
                  updatedAfter,
                )) &&
            (identical(other.userRemoteId, userRemoteId) ||
                const DeepCollectionEquality().equals(
                  other.userRemoteId,
                  userRemoteId,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(assignedToRemoteId) ^
      const DeepCollectionEquality().hash(bookingId) ^
      const DeepCollectionEquality().hash(createdAfter) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(priorities) ^
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(statuses) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(updatedAfter) ^
      const DeepCollectionEquality().hash(userRemoteId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $SearchIssuesRequestExtension on SearchIssuesRequest {
  SearchIssuesRequest copyWith({
    String? assignedToRemoteId,
    String? bookingId,
    DateTime? createdAfter,
    int? max,
    int? number,
    int? offset,
    enums.SearchIssuesRequestOrder? order,
    List<enums.SearchIssuesRequestPriorities>? priorities,
    String? sort,
    List<enums.SearchIssuesRequestStatuses>? statuses,
    String? title,
    DateTime? updatedAfter,
    String? userRemoteId,
    String? vehicleId,
  }) {
    return SearchIssuesRequest(
      assignedToRemoteId: assignedToRemoteId ?? this.assignedToRemoteId,
      bookingId: bookingId ?? this.bookingId,
      createdAfter: createdAfter ?? this.createdAfter,
      max: max ?? this.max,
      number: number ?? this.number,
      offset: offset ?? this.offset,
      order: order ?? this.order,
      priorities: priorities ?? this.priorities,
      sort: sort ?? this.sort,
      statuses: statuses ?? this.statuses,
      title: title ?? this.title,
      updatedAfter: updatedAfter ?? this.updatedAfter,
      userRemoteId: userRemoteId ?? this.userRemoteId,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  SearchIssuesRequest copyWithWrapped({
    Wrapped<String?>? assignedToRemoteId,
    Wrapped<String?>? bookingId,
    Wrapped<DateTime?>? createdAfter,
    Wrapped<int?>? max,
    Wrapped<int?>? number,
    Wrapped<int?>? offset,
    Wrapped<enums.SearchIssuesRequestOrder?>? order,
    Wrapped<List<enums.SearchIssuesRequestPriorities>?>? priorities,
    Wrapped<String?>? sort,
    Wrapped<List<enums.SearchIssuesRequestStatuses>?>? statuses,
    Wrapped<String?>? title,
    Wrapped<DateTime?>? updatedAfter,
    Wrapped<String?>? userRemoteId,
    Wrapped<String?>? vehicleId,
  }) {
    return SearchIssuesRequest(
      assignedToRemoteId: (assignedToRemoteId != null
          ? assignedToRemoteId.value
          : this.assignedToRemoteId),
      bookingId: (bookingId != null ? bookingId.value : this.bookingId),
      createdAfter: (createdAfter != null
          ? createdAfter.value
          : this.createdAfter),
      max: (max != null ? max.value : this.max),
      number: (number != null ? number.value : this.number),
      offset: (offset != null ? offset.value : this.offset),
      order: (order != null ? order.value : this.order),
      priorities: (priorities != null ? priorities.value : this.priorities),
      sort: (sort != null ? sort.value : this.sort),
      statuses: (statuses != null ? statuses.value : this.statuses),
      title: (title != null ? title.value : this.title),
      updatedAfter: (updatedAfter != null
          ? updatedAfter.value
          : this.updatedAfter),
      userRemoteId: (userRemoteId != null
          ? userRemoteId.value
          : this.userRemoteId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SearchNonAvailabilityEventsRequest {
  const SearchNonAvailabilityEventsRequest({this.period, this.vehicleIds});

  factory SearchNonAvailabilityEventsRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$SearchNonAvailabilityEventsRequestFromJson(json);

  static const toJsonFactory = _$SearchNonAvailabilityEventsRequestToJson;
  Map<String, dynamic> toJson() =>
      _$SearchNonAvailabilityEventsRequestToJson(this);

  @JsonKey(name: 'period')
  final Period? period;
  @JsonKey(name: 'vehicleIds', defaultValue: <String>[])
  final List<String>? vehicleIds;
  static const fromJsonFactory = _$SearchNonAvailabilityEventsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SearchNonAvailabilityEventsRequest &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.vehicleIds, vehicleIds) ||
                const DeepCollectionEquality().equals(
                  other.vehicleIds,
                  vehicleIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(vehicleIds) ^
      runtimeType.hashCode;
}

extension $SearchNonAvailabilityEventsRequestExtension
    on SearchNonAvailabilityEventsRequest {
  SearchNonAvailabilityEventsRequest copyWith({
    Period? period,
    List<String>? vehicleIds,
  }) {
    return SearchNonAvailabilityEventsRequest(
      period: period ?? this.period,
      vehicleIds: vehicleIds ?? this.vehicleIds,
    );
  }

  SearchNonAvailabilityEventsRequest copyWithWrapped({
    Wrapped<Period?>? period,
    Wrapped<List<String>?>? vehicleIds,
  }) {
    return SearchNonAvailabilityEventsRequest(
      period: (period != null ? period.value : this.period),
      vehicleIds: (vehicleIds != null ? vehicleIds.value : this.vehicleIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SearchTelematicsTrackingRequest {
  const SearchTelematicsTrackingRequest({
    this.charging,
    this.endDate,
    this.eventReason,
    this.latestPerVehicle,
    this.maxResults,
    this.startDate,
    this.vehicleIds,
  });

  factory SearchTelematicsTrackingRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchTelematicsTrackingRequestFromJson(json);

  static const toJsonFactory = _$SearchTelematicsTrackingRequestToJson;
  Map<String, dynamic> toJson() =>
      _$SearchTelematicsTrackingRequestToJson(this);

  @JsonKey(name: 'charging')
  final bool? charging;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(
    name: 'eventReason',
    toJson: searchTelematicsTrackingRequestEventReasonNullableToJson,
    fromJson: searchTelematicsTrackingRequestEventReasonNullableFromJson,
  )
  final enums.SearchTelematicsTrackingRequestEventReason? eventReason;
  @JsonKey(name: 'latestPerVehicle')
  final bool? latestPerVehicle;
  @JsonKey(name: 'maxResults')
  final int? maxResults;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'vehicleIds', defaultValue: <String>[])
  final List<String>? vehicleIds;
  static const fromJsonFactory = _$SearchTelematicsTrackingRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SearchTelematicsTrackingRequest &&
            (identical(other.charging, charging) ||
                const DeepCollectionEquality().equals(
                  other.charging,
                  charging,
                )) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(
                  other.endDate,
                  endDate,
                )) &&
            (identical(other.eventReason, eventReason) ||
                const DeepCollectionEquality().equals(
                  other.eventReason,
                  eventReason,
                )) &&
            (identical(other.latestPerVehicle, latestPerVehicle) ||
                const DeepCollectionEquality().equals(
                  other.latestPerVehicle,
                  latestPerVehicle,
                )) &&
            (identical(other.maxResults, maxResults) ||
                const DeepCollectionEquality().equals(
                  other.maxResults,
                  maxResults,
                )) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )) &&
            (identical(other.vehicleIds, vehicleIds) ||
                const DeepCollectionEquality().equals(
                  other.vehicleIds,
                  vehicleIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(charging) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(eventReason) ^
      const DeepCollectionEquality().hash(latestPerVehicle) ^
      const DeepCollectionEquality().hash(maxResults) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(vehicleIds) ^
      runtimeType.hashCode;
}

extension $SearchTelematicsTrackingRequestExtension
    on SearchTelematicsTrackingRequest {
  SearchTelematicsTrackingRequest copyWith({
    bool? charging,
    DateTime? endDate,
    enums.SearchTelematicsTrackingRequestEventReason? eventReason,
    bool? latestPerVehicle,
    int? maxResults,
    DateTime? startDate,
    List<String>? vehicleIds,
  }) {
    return SearchTelematicsTrackingRequest(
      charging: charging ?? this.charging,
      endDate: endDate ?? this.endDate,
      eventReason: eventReason ?? this.eventReason,
      latestPerVehicle: latestPerVehicle ?? this.latestPerVehicle,
      maxResults: maxResults ?? this.maxResults,
      startDate: startDate ?? this.startDate,
      vehicleIds: vehicleIds ?? this.vehicleIds,
    );
  }

  SearchTelematicsTrackingRequest copyWithWrapped({
    Wrapped<bool?>? charging,
    Wrapped<DateTime?>? endDate,
    Wrapped<enums.SearchTelematicsTrackingRequestEventReason?>? eventReason,
    Wrapped<bool?>? latestPerVehicle,
    Wrapped<int?>? maxResults,
    Wrapped<DateTime?>? startDate,
    Wrapped<List<String>?>? vehicleIds,
  }) {
    return SearchTelematicsTrackingRequest(
      charging: (charging != null ? charging.value : this.charging),
      endDate: (endDate != null ? endDate.value : this.endDate),
      eventReason: (eventReason != null ? eventReason.value : this.eventReason),
      latestPerVehicle: (latestPerVehicle != null
          ? latestPerVehicle.value
          : this.latestPerVehicle),
      maxResults: (maxResults != null ? maxResults.value : this.maxResults),
      startDate: (startDate != null ? startDate.value : this.startDate),
      vehicleIds: (vehicleIds != null ? vehicleIds.value : this.vehicleIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SearchVehiclesRequest {
  const SearchVehiclesRequest({
    this.location,
    this.maxDistance,
    this.period,
    this.subscriptionId,
    this.vehicleFilterCriteria,
  });

  factory SearchVehiclesRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchVehiclesRequestFromJson(json);

  static const toJsonFactory = _$SearchVehiclesRequestToJson;
  Map<String, dynamic> toJson() => _$SearchVehiclesRequestToJson(this);

  @JsonKey(name: 'location')
  final GpsCoordinate? location;
  @JsonKey(name: 'maxDistance')
  final double? maxDistance;
  @JsonKey(name: 'period')
  final Period? period;
  @JsonKey(name: 'subscriptionId')
  final String? subscriptionId;
  @JsonKey(name: 'vehicleFilterCriteria')
  final VehicleFilterCriteria? vehicleFilterCriteria;
  static const fromJsonFactory = _$SearchVehiclesRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SearchVehiclesRequest &&
            (identical(other.location, location) ||
                const DeepCollectionEquality().equals(
                  other.location,
                  location,
                )) &&
            (identical(other.maxDistance, maxDistance) ||
                const DeepCollectionEquality().equals(
                  other.maxDistance,
                  maxDistance,
                )) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.subscriptionId, subscriptionId) ||
                const DeepCollectionEquality().equals(
                  other.subscriptionId,
                  subscriptionId,
                )) &&
            (identical(other.vehicleFilterCriteria, vehicleFilterCriteria) ||
                const DeepCollectionEquality().equals(
                  other.vehicleFilterCriteria,
                  vehicleFilterCriteria,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(maxDistance) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(subscriptionId) ^
      const DeepCollectionEquality().hash(vehicleFilterCriteria) ^
      runtimeType.hashCode;
}

extension $SearchVehiclesRequestExtension on SearchVehiclesRequest {
  SearchVehiclesRequest copyWith({
    GpsCoordinate? location,
    double? maxDistance,
    Period? period,
    String? subscriptionId,
    VehicleFilterCriteria? vehicleFilterCriteria,
  }) {
    return SearchVehiclesRequest(
      location: location ?? this.location,
      maxDistance: maxDistance ?? this.maxDistance,
      period: period ?? this.period,
      subscriptionId: subscriptionId ?? this.subscriptionId,
      vehicleFilterCriteria:
          vehicleFilterCriteria ?? this.vehicleFilterCriteria,
    );
  }

  SearchVehiclesRequest copyWithWrapped({
    Wrapped<GpsCoordinate?>? location,
    Wrapped<double?>? maxDistance,
    Wrapped<Period?>? period,
    Wrapped<String?>? subscriptionId,
    Wrapped<VehicleFilterCriteria?>? vehicleFilterCriteria,
  }) {
    return SearchVehiclesRequest(
      location: (location != null ? location.value : this.location),
      maxDistance: (maxDistance != null ? maxDistance.value : this.maxDistance),
      period: (period != null ? period.value : this.period),
      subscriptionId: (subscriptionId != null
          ? subscriptionId.value
          : this.subscriptionId),
      vehicleFilterCriteria: (vehicleFilterCriteria != null
          ? vehicleFilterCriteria.value
          : this.vehicleFilterCriteria),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SignupUser {
  const SignupUser({required this.email, required this.password});

  factory SignupUser.fromJson(Map<String, dynamic> json) =>
      _$SignupUserFromJson(json);

  static const toJsonFactory = _$SignupUserToJson;
  Map<String, dynamic> toJson() => _$SignupUserToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$SignupUserFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SignupUser &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $SignupUserExtension on SignupUser {
  SignupUser copyWith({String? email, String? password}) {
    return SignupUser(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  SignupUser copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? password,
  }) {
    return SignupUser(
      email: (email != null ? email.value : this.email),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class StartVehicleUsageRequest {
  const StartVehicleUsageRequest({this.bookingId, this.vehicleId});

  factory StartVehicleUsageRequest.fromJson(Map<String, dynamic> json) =>
      _$StartVehicleUsageRequestFromJson(json);

  static const toJsonFactory = _$StartVehicleUsageRequestToJson;
  Map<String, dynamic> toJson() => _$StartVehicleUsageRequestToJson(this);

  @JsonKey(name: 'bookingId')
  final String? bookingId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$StartVehicleUsageRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StartVehicleUsageRequest &&
            (identical(other.bookingId, bookingId) ||
                const DeepCollectionEquality().equals(
                  other.bookingId,
                  bookingId,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bookingId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $StartVehicleUsageRequestExtension on StartVehicleUsageRequest {
  StartVehicleUsageRequest copyWith({String? bookingId, String? vehicleId}) {
    return StartVehicleUsageRequest(
      bookingId: bookingId ?? this.bookingId,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  StartVehicleUsageRequest copyWithWrapped({
    Wrapped<String?>? bookingId,
    Wrapped<String?>? vehicleId,
  }) {
    return StartVehicleUsageRequest(
      bookingId: (bookingId != null ? bookingId.value : this.bookingId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class StoreConfigValueRequest {
  const StoreConfigValueRequest({this.$value});

  factory StoreConfigValueRequest.fromJson(Map<String, dynamic> json) =>
      _$StoreConfigValueRequestFromJson(json);

  static const toJsonFactory = _$StoreConfigValueRequestToJson;
  Map<String, dynamic> toJson() => _$StoreConfigValueRequestToJson(this);

  @JsonKey(name: 'value')
  final String? $value;
  static const fromJsonFactory = _$StoreConfigValueRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StoreConfigValueRequest &&
            (identical(other.$value, $value) ||
                const DeepCollectionEquality().equals(other.$value, $value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash($value) ^ runtimeType.hashCode;
}

extension $StoreConfigValueRequestExtension on StoreConfigValueRequest {
  StoreConfigValueRequest copyWith({String? $value}) {
    return StoreConfigValueRequest($value: $value ?? this.$value);
  }

  StoreConfigValueRequest copyWithWrapped({Wrapped<String?>? $value}) {
    return StoreConfigValueRequest(
      $value: ($value != null ? $value.value : this.$value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class StoreTeslaTokensRequest {
  const StoreTeslaTokensRequest({this.accessToken, this.refreshToken});

  factory StoreTeslaTokensRequest.fromJson(Map<String, dynamic> json) =>
      _$StoreTeslaTokensRequestFromJson(json);

  static const toJsonFactory = _$StoreTeslaTokensRequestToJson;
  Map<String, dynamic> toJson() => _$StoreTeslaTokensRequestToJson(this);

  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  static const fromJsonFactory = _$StoreTeslaTokensRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StoreTeslaTokensRequest &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      runtimeType.hashCode;
}

extension $StoreTeslaTokensRequestExtension on StoreTeslaTokensRequest {
  StoreTeslaTokensRequest copyWith({
    String? accessToken,
    String? refreshToken,
  }) {
    return StoreTeslaTokensRequest(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  StoreTeslaTokensRequest copyWithWrapped({
    Wrapped<String?>? accessToken,
    Wrapped<String?>? refreshToken,
  }) {
    return StoreTeslaTokensRequest(
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Subscription {
  const Subscription({
    this.clientId,
    this.clientName,
    this.clientSuspended,
    this.clientRoles,
    this.commitment,
    this.delegatedTrustClientId,
    this.endDate,
    this.id,
    this.possibleFormulas,
    this.startDate,
    this.subscriptionContract,
    this.subscriptionType,
    this.vehicleId,
    this.vehicles,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  static const toJsonFactory = _$SubscriptionToJson;
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);

  @JsonKey(name: 'clientId')
  final int? clientId;
  @JsonKey(name: 'clientName')
  final String? clientName;
  @JsonKey(name: 'clientSuspended')
  final bool? clientSuspended;
  @JsonKey(
    name: 'clientRoles',
    toJson: subscriptionClientRolesNullableToJson,
    fromJson: subscriptionClientRolesNullableFromJson,
  )
  final enums.SubscriptionClientRoles? clientRoles;
  @JsonKey(name: 'commitment')
  final int? commitment;
  @JsonKey(name: 'delegatedTrustClientId')
  final int? delegatedTrustClientId;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'possibleFormulas', defaultValue: <BattFormula>[])
  final List<BattFormula>? possibleFormulas;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'subscriptionContract')
  final SubscriptionContract? subscriptionContract;
  @JsonKey(name: 'subscriptionType')
  final String? subscriptionType;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'vehicles', defaultValue: <String>[])
  final List<String>? vehicles;
  static const fromJsonFactory = _$SubscriptionFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Subscription &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality().equals(
                  other.clientId,
                  clientId,
                )) &&
            (identical(other.clientName, clientName) ||
                const DeepCollectionEquality().equals(
                  other.clientName,
                  clientName,
                )) &&
            (identical(other.clientSuspended, clientSuspended) ||
                const DeepCollectionEquality().equals(
                  other.clientSuspended,
                  clientSuspended,
                )) &&
            (identical(other.clientRoles, clientRoles) ||
                const DeepCollectionEquality().equals(
                  other.clientRoles,
                  clientRoles,
                )) &&
            (identical(other.commitment, commitment) ||
                const DeepCollectionEquality().equals(
                  other.commitment,
                  commitment,
                )) &&
            (identical(other.delegatedTrustClientId, delegatedTrustClientId) ||
                const DeepCollectionEquality().equals(
                  other.delegatedTrustClientId,
                  delegatedTrustClientId,
                )) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(
                  other.endDate,
                  endDate,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.possibleFormulas, possibleFormulas) ||
                const DeepCollectionEquality().equals(
                  other.possibleFormulas,
                  possibleFormulas,
                )) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )) &&
            (identical(other.subscriptionContract, subscriptionContract) ||
                const DeepCollectionEquality().equals(
                  other.subscriptionContract,
                  subscriptionContract,
                )) &&
            (identical(other.subscriptionType, subscriptionType) ||
                const DeepCollectionEquality().equals(
                  other.subscriptionType,
                  subscriptionType,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality().equals(
                  other.vehicles,
                  vehicles,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(clientName) ^
      const DeepCollectionEquality().hash(clientSuspended) ^
      const DeepCollectionEquality().hash(clientRoles) ^
      const DeepCollectionEquality().hash(commitment) ^
      const DeepCollectionEquality().hash(delegatedTrustClientId) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(possibleFormulas) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(subscriptionContract) ^
      const DeepCollectionEquality().hash(subscriptionType) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $SubscriptionExtension on Subscription {
  Subscription copyWith({
    int? clientId,
    String? clientName,
    bool? clientSuspended,
    enums.SubscriptionClientRoles? clientRoles,
    int? commitment,
    int? delegatedTrustClientId,
    DateTime? endDate,
    int? id,
    List<BattFormula>? possibleFormulas,
    DateTime? startDate,
    SubscriptionContract? subscriptionContract,
    String? subscriptionType,
    String? vehicleId,
    List<String>? vehicles,
  }) {
    return Subscription(
      clientId: clientId ?? this.clientId,
      clientName: clientName ?? this.clientName,
      clientSuspended: clientSuspended ?? this.clientSuspended,
      clientRoles: clientRoles ?? this.clientRoles,
      commitment: commitment ?? this.commitment,
      delegatedTrustClientId:
          delegatedTrustClientId ?? this.delegatedTrustClientId,
      endDate: endDate ?? this.endDate,
      id: id ?? this.id,
      possibleFormulas: possibleFormulas ?? this.possibleFormulas,
      startDate: startDate ?? this.startDate,
      subscriptionContract: subscriptionContract ?? this.subscriptionContract,
      subscriptionType: subscriptionType ?? this.subscriptionType,
      vehicleId: vehicleId ?? this.vehicleId,
      vehicles: vehicles ?? this.vehicles,
    );
  }

  Subscription copyWithWrapped({
    Wrapped<int?>? clientId,
    Wrapped<String?>? clientName,
    Wrapped<bool?>? clientSuspended,
    Wrapped<enums.SubscriptionClientRoles?>? clientRoles,
    Wrapped<int?>? commitment,
    Wrapped<int?>? delegatedTrustClientId,
    Wrapped<DateTime?>? endDate,
    Wrapped<int?>? id,
    Wrapped<List<BattFormula>?>? possibleFormulas,
    Wrapped<DateTime?>? startDate,
    Wrapped<SubscriptionContract?>? subscriptionContract,
    Wrapped<String?>? subscriptionType,
    Wrapped<String?>? vehicleId,
    Wrapped<List<String>?>? vehicles,
  }) {
    return Subscription(
      clientId: (clientId != null ? clientId.value : this.clientId),
      clientName: (clientName != null ? clientName.value : this.clientName),
      clientSuspended: (clientSuspended != null
          ? clientSuspended.value
          : this.clientSuspended),
      clientRoles: (clientRoles != null ? clientRoles.value : this.clientRoles),
      commitment: (commitment != null ? commitment.value : this.commitment),
      delegatedTrustClientId: (delegatedTrustClientId != null
          ? delegatedTrustClientId.value
          : this.delegatedTrustClientId),
      endDate: (endDate != null ? endDate.value : this.endDate),
      id: (id != null ? id.value : this.id),
      possibleFormulas: (possibleFormulas != null
          ? possibleFormulas.value
          : this.possibleFormulas),
      startDate: (startDate != null ? startDate.value : this.startDate),
      subscriptionContract: (subscriptionContract != null
          ? subscriptionContract.value
          : this.subscriptionContract),
      subscriptionType: (subscriptionType != null
          ? subscriptionType.value
          : this.subscriptionType),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
      vehicles: (vehicles != null ? vehicles.value : this.vehicles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateUser {
  const UpdateUser({
    this.email,
    this.enabled,
    this.firstName,
    this.lastName,
    this.phoneNumber,
  });

  factory UpdateUser.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserFromJson(json);

  static const toJsonFactory = _$UpdateUserToJson;
  Map<String, dynamic> toJson() => _$UpdateUserToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'enabled')
  final bool? enabled;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  static const fromJsonFactory = _$UpdateUserFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateUser &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality().equals(
                  other.enabled,
                  enabled,
                )) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(
                  other.firstName,
                  firstName,
                )) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality().equals(
                  other.lastName,
                  lastName,
                )) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      runtimeType.hashCode;
}

extension $UpdateUserExtension on UpdateUser {
  UpdateUser copyWith({
    String? email,
    bool? enabled,
    String? firstName,
    String? lastName,
    String? phoneNumber,
  }) {
    return UpdateUser(
      email: email ?? this.email,
      enabled: enabled ?? this.enabled,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  UpdateUser copyWithWrapped({
    Wrapped<String?>? email,
    Wrapped<bool?>? enabled,
    Wrapped<String?>? firstName,
    Wrapped<String?>? lastName,
    Wrapped<String?>? phoneNumber,
  }) {
    return UpdateUser(
      email: (email != null ? email.value : this.email),
      enabled: (enabled != null ? enabled.value : this.enabled),
      firstName: (firstName != null ? firstName.value : this.firstName),
      lastName: (lastName != null ? lastName.value : this.lastName),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SubscriptionContract {
  const SubscriptionContract({
    this.commitment,
    this.endDate,
    this.startDate,
    this.subscriptionType,
    this.vehicleId,
    this.vehicles,
  });

  factory SubscriptionContract.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionContractFromJson(json);

  static const toJsonFactory = _$SubscriptionContractToJson;
  Map<String, dynamic> toJson() => _$SubscriptionContractToJson(this);

  @JsonKey(name: 'commitment')
  final int? commitment;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'subscriptionType')
  final String? subscriptionType;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'vehicles', defaultValue: <String>[])
  final List<String>? vehicles;
  static const fromJsonFactory = _$SubscriptionContractFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SubscriptionContract &&
            (identical(other.commitment, commitment) ||
                const DeepCollectionEquality().equals(
                  other.commitment,
                  commitment,
                )) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(
                  other.endDate,
                  endDate,
                )) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )) &&
            (identical(other.subscriptionType, subscriptionType) ||
                const DeepCollectionEquality().equals(
                  other.subscriptionType,
                  subscriptionType,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality().equals(
                  other.vehicles,
                  vehicles,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(commitment) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(subscriptionType) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $SubscriptionContractExtension on SubscriptionContract {
  SubscriptionContract copyWith({
    int? commitment,
    DateTime? endDate,
    DateTime? startDate,
    String? subscriptionType,
    String? vehicleId,
    List<String>? vehicles,
  }) {
    return SubscriptionContract(
      commitment: commitment ?? this.commitment,
      endDate: endDate ?? this.endDate,
      startDate: startDate ?? this.startDate,
      subscriptionType: subscriptionType ?? this.subscriptionType,
      vehicleId: vehicleId ?? this.vehicleId,
      vehicles: vehicles ?? this.vehicles,
    );
  }

  SubscriptionContract copyWithWrapped({
    Wrapped<int?>? commitment,
    Wrapped<DateTime?>? endDate,
    Wrapped<DateTime?>? startDate,
    Wrapped<String?>? subscriptionType,
    Wrapped<String?>? vehicleId,
    Wrapped<List<String>?>? vehicles,
  }) {
    return SubscriptionContract(
      commitment: (commitment != null ? commitment.value : this.commitment),
      endDate: (endDate != null ? endDate.value : this.endDate),
      startDate: (startDate != null ? startDate.value : this.startDate),
      subscriptionType: (subscriptionType != null
          ? subscriptionType.value
          : this.subscriptionType),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
      vehicles: (vehicles != null ? vehicles.value : this.vehicles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TelematicsDevice {
  const TelematicsDevice({
    this.alwaysUseBluetooth,
    this.bydMobilizeHack,
    this.ignitionCheck,
    this.keyfobCheck,
    this.maxRange,
    this.phoneNumber,
    this.providerDeviceId,
    this.providerId,
    this.vehicleId,
  });

  factory TelematicsDevice.fromJson(Map<String, dynamic> json) =>
      _$TelematicsDeviceFromJson(json);

  static const toJsonFactory = _$TelematicsDeviceToJson;
  Map<String, dynamic> toJson() => _$TelematicsDeviceToJson(this);

  @JsonKey(name: 'alwaysUseBluetooth')
  final bool? alwaysUseBluetooth;
  @JsonKey(name: 'bydMobilizeHack')
  final bool? bydMobilizeHack;
  @JsonKey(name: 'ignitionCheck')
  final bool? ignitionCheck;
  @JsonKey(name: 'keyfobCheck')
  final bool? keyfobCheck;
  @JsonKey(name: 'maxRange')
  final int? maxRange;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'providerDeviceId')
  final String? providerDeviceId;
  @JsonKey(name: 'providerId')
  final String? providerId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$TelematicsDeviceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TelematicsDevice &&
            (identical(other.alwaysUseBluetooth, alwaysUseBluetooth) ||
                const DeepCollectionEquality().equals(
                  other.alwaysUseBluetooth,
                  alwaysUseBluetooth,
                )) &&
            (identical(other.bydMobilizeHack, bydMobilizeHack) ||
                const DeepCollectionEquality().equals(
                  other.bydMobilizeHack,
                  bydMobilizeHack,
                )) &&
            (identical(other.ignitionCheck, ignitionCheck) ||
                const DeepCollectionEquality().equals(
                  other.ignitionCheck,
                  ignitionCheck,
                )) &&
            (identical(other.keyfobCheck, keyfobCheck) ||
                const DeepCollectionEquality().equals(
                  other.keyfobCheck,
                  keyfobCheck,
                )) &&
            (identical(other.maxRange, maxRange) ||
                const DeepCollectionEquality().equals(
                  other.maxRange,
                  maxRange,
                )) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.providerDeviceId, providerDeviceId) ||
                const DeepCollectionEquality().equals(
                  other.providerDeviceId,
                  providerDeviceId,
                )) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality().equals(
                  other.providerId,
                  providerId,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(alwaysUseBluetooth) ^
      const DeepCollectionEquality().hash(bydMobilizeHack) ^
      const DeepCollectionEquality().hash(ignitionCheck) ^
      const DeepCollectionEquality().hash(keyfobCheck) ^
      const DeepCollectionEquality().hash(maxRange) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(providerDeviceId) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $TelematicsDeviceExtension on TelematicsDevice {
  TelematicsDevice copyWith({
    bool? alwaysUseBluetooth,
    bool? bydMobilizeHack,
    bool? ignitionCheck,
    bool? keyfobCheck,
    int? maxRange,
    String? phoneNumber,
    String? providerDeviceId,
    String? providerId,
    String? vehicleId,
  }) {
    return TelematicsDevice(
      alwaysUseBluetooth: alwaysUseBluetooth ?? this.alwaysUseBluetooth,
      bydMobilizeHack: bydMobilizeHack ?? this.bydMobilizeHack,
      ignitionCheck: ignitionCheck ?? this.ignitionCheck,
      keyfobCheck: keyfobCheck ?? this.keyfobCheck,
      maxRange: maxRange ?? this.maxRange,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      providerDeviceId: providerDeviceId ?? this.providerDeviceId,
      providerId: providerId ?? this.providerId,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  TelematicsDevice copyWithWrapped({
    Wrapped<bool?>? alwaysUseBluetooth,
    Wrapped<bool?>? bydMobilizeHack,
    Wrapped<bool?>? ignitionCheck,
    Wrapped<bool?>? keyfobCheck,
    Wrapped<int?>? maxRange,
    Wrapped<String?>? phoneNumber,
    Wrapped<String?>? providerDeviceId,
    Wrapped<String?>? providerId,
    Wrapped<String?>? vehicleId,
  }) {
    return TelematicsDevice(
      alwaysUseBluetooth: (alwaysUseBluetooth != null
          ? alwaysUseBluetooth.value
          : this.alwaysUseBluetooth),
      bydMobilizeHack: (bydMobilizeHack != null
          ? bydMobilizeHack.value
          : this.bydMobilizeHack),
      ignitionCheck: (ignitionCheck != null
          ? ignitionCheck.value
          : this.ignitionCheck),
      keyfobCheck: (keyfobCheck != null ? keyfobCheck.value : this.keyfobCheck),
      maxRange: (maxRange != null ? maxRange.value : this.maxRange),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      providerDeviceId: (providerDeviceId != null
          ? providerDeviceId.value
          : this.providerDeviceId),
      providerId: (providerId != null ? providerId.value : this.providerId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TelematicsProvider {
  const TelematicsProvider({this.id});

  factory TelematicsProvider.fromJson(Map<String, dynamic> json) =>
      _$TelematicsProviderFromJson(json);

  static const toJsonFactory = _$TelematicsProviderToJson;
  Map<String, dynamic> toJson() => _$TelematicsProviderToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$TelematicsProviderFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TelematicsProvider &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $TelematicsProviderExtension on TelematicsProvider {
  TelematicsProvider copyWith({String? id}) {
    return TelematicsProvider(id: id ?? this.id);
  }

  TelematicsProvider copyWithWrapped({Wrapped<String?>? id}) {
    return TelematicsProvider(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class TelematicsProviderPage {
  const TelematicsProviderPage({this.providers});

  factory TelematicsProviderPage.fromJson(Map<String, dynamic> json) =>
      _$TelematicsProviderPageFromJson(json);

  static const toJsonFactory = _$TelematicsProviderPageToJson;
  Map<String, dynamic> toJson() => _$TelematicsProviderPageToJson(this);

  @JsonKey(name: 'providers', defaultValue: <TelematicsProvider>[])
  final List<TelematicsProvider>? providers;
  static const fromJsonFactory = _$TelematicsProviderPageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TelematicsProviderPage &&
            (identical(other.providers, providers) ||
                const DeepCollectionEquality().equals(
                  other.providers,
                  providers,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(providers) ^ runtimeType.hashCode;
}

extension $TelematicsProviderPageExtension on TelematicsProviderPage {
  TelematicsProviderPage copyWith({List<TelematicsProvider>? providers}) {
    return TelematicsProviderPage(providers: providers ?? this.providers);
  }

  TelematicsProviderPage copyWithWrapped({
    Wrapped<List<TelematicsProvider>?>? providers,
  }) {
    return TelematicsProviderPage(
      providers: (providers != null ? providers.value : this.providers),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TelematicsRequest {
  const TelematicsRequest({
    this.alwaysUseBluetooth,
    this.bydMobilizeHack,
    this.ignitionCheck,
    this.keyfobCheck,
    this.maxRange,
    this.phoneNumber,
    required this.providerDeviceId,
    required this.providerId,
    required this.vehicleId,
  });

  factory TelematicsRequest.fromJson(Map<String, dynamic> json) =>
      _$TelematicsRequestFromJson(json);

  static const toJsonFactory = _$TelematicsRequestToJson;
  Map<String, dynamic> toJson() => _$TelematicsRequestToJson(this);

  @JsonKey(name: 'alwaysUseBluetooth')
  final bool? alwaysUseBluetooth;
  @JsonKey(name: 'bydMobilizeHack')
  final bool? bydMobilizeHack;
  @JsonKey(name: 'ignitionCheck')
  final bool? ignitionCheck;
  @JsonKey(name: 'keyfobCheck')
  final bool? keyfobCheck;
  @JsonKey(name: 'maxRange')
  final int? maxRange;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'providerDeviceId')
  final String providerDeviceId;
  @JsonKey(name: 'providerId')
  final String providerId;
  @JsonKey(name: 'vehicleId')
  final String vehicleId;
  static const fromJsonFactory = _$TelematicsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TelematicsRequest &&
            (identical(other.alwaysUseBluetooth, alwaysUseBluetooth) ||
                const DeepCollectionEquality().equals(
                  other.alwaysUseBluetooth,
                  alwaysUseBluetooth,
                )) &&
            (identical(other.bydMobilizeHack, bydMobilizeHack) ||
                const DeepCollectionEquality().equals(
                  other.bydMobilizeHack,
                  bydMobilizeHack,
                )) &&
            (identical(other.ignitionCheck, ignitionCheck) ||
                const DeepCollectionEquality().equals(
                  other.ignitionCheck,
                  ignitionCheck,
                )) &&
            (identical(other.keyfobCheck, keyfobCheck) ||
                const DeepCollectionEquality().equals(
                  other.keyfobCheck,
                  keyfobCheck,
                )) &&
            (identical(other.maxRange, maxRange) ||
                const DeepCollectionEquality().equals(
                  other.maxRange,
                  maxRange,
                )) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.providerDeviceId, providerDeviceId) ||
                const DeepCollectionEquality().equals(
                  other.providerDeviceId,
                  providerDeviceId,
                )) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality().equals(
                  other.providerId,
                  providerId,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(alwaysUseBluetooth) ^
      const DeepCollectionEquality().hash(bydMobilizeHack) ^
      const DeepCollectionEquality().hash(ignitionCheck) ^
      const DeepCollectionEquality().hash(keyfobCheck) ^
      const DeepCollectionEquality().hash(maxRange) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(providerDeviceId) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $TelematicsRequestExtension on TelematicsRequest {
  TelematicsRequest copyWith({
    bool? alwaysUseBluetooth,
    bool? bydMobilizeHack,
    bool? ignitionCheck,
    bool? keyfobCheck,
    int? maxRange,
    String? phoneNumber,
    String? providerDeviceId,
    String? providerId,
    String? vehicleId,
  }) {
    return TelematicsRequest(
      alwaysUseBluetooth: alwaysUseBluetooth ?? this.alwaysUseBluetooth,
      bydMobilizeHack: bydMobilizeHack ?? this.bydMobilizeHack,
      ignitionCheck: ignitionCheck ?? this.ignitionCheck,
      keyfobCheck: keyfobCheck ?? this.keyfobCheck,
      maxRange: maxRange ?? this.maxRange,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      providerDeviceId: providerDeviceId ?? this.providerDeviceId,
      providerId: providerId ?? this.providerId,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  TelematicsRequest copyWithWrapped({
    Wrapped<bool?>? alwaysUseBluetooth,
    Wrapped<bool?>? bydMobilizeHack,
    Wrapped<bool?>? ignitionCheck,
    Wrapped<bool?>? keyfobCheck,
    Wrapped<int?>? maxRange,
    Wrapped<String?>? phoneNumber,
    Wrapped<String>? providerDeviceId,
    Wrapped<String>? providerId,
    Wrapped<String>? vehicleId,
  }) {
    return TelematicsRequest(
      alwaysUseBluetooth: (alwaysUseBluetooth != null
          ? alwaysUseBluetooth.value
          : this.alwaysUseBluetooth),
      bydMobilizeHack: (bydMobilizeHack != null
          ? bydMobilizeHack.value
          : this.bydMobilizeHack),
      ignitionCheck: (ignitionCheck != null
          ? ignitionCheck.value
          : this.ignitionCheck),
      keyfobCheck: (keyfobCheck != null ? keyfobCheck.value : this.keyfobCheck),
      maxRange: (maxRange != null ? maxRange.value : this.maxRange),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      providerDeviceId: (providerDeviceId != null
          ? providerDeviceId.value
          : this.providerDeviceId),
      providerId: (providerId != null ? providerId.value : this.providerId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TelematicsTracking {
  const TelematicsTracking({
    this.address,
    this.batteryPercentage,
    this.charging,
    this.dateCreated,
    this.eventReason,
    this.locationPosition,
    this.mileage,
    this.telematicsId,
    this.vehicleId,
  });

  factory TelematicsTracking.fromJson(Map<String, dynamic> json) =>
      _$TelematicsTrackingFromJson(json);

  static const toJsonFactory = _$TelematicsTrackingToJson;
  Map<String, dynamic> toJson() => _$TelematicsTrackingToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'batteryPercentage')
  final int? batteryPercentage;
  @JsonKey(name: 'charging')
  final bool? charging;
  @JsonKey(name: 'dateCreated')
  final DateTime? dateCreated;
  @JsonKey(
    name: 'eventReason',
    toJson: telematicsTrackingEventReasonNullableToJson,
    fromJson: telematicsTrackingEventReasonNullableFromJson,
  )
  final enums.TelematicsTrackingEventReason? eventReason;
  @JsonKey(name: 'locationPosition')
  final LocationPosition? locationPosition;
  @JsonKey(name: 'mileage')
  final double? mileage;
  @JsonKey(name: 'telematicsId')
  final String? telematicsId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$TelematicsTrackingFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TelematicsTracking &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(
                  other.address,
                  address,
                )) &&
            (identical(other.batteryPercentage, batteryPercentage) ||
                const DeepCollectionEquality().equals(
                  other.batteryPercentage,
                  batteryPercentage,
                )) &&
            (identical(other.charging, charging) ||
                const DeepCollectionEquality().equals(
                  other.charging,
                  charging,
                )) &&
            (identical(other.dateCreated, dateCreated) ||
                const DeepCollectionEquality().equals(
                  other.dateCreated,
                  dateCreated,
                )) &&
            (identical(other.eventReason, eventReason) ||
                const DeepCollectionEquality().equals(
                  other.eventReason,
                  eventReason,
                )) &&
            (identical(other.locationPosition, locationPosition) ||
                const DeepCollectionEquality().equals(
                  other.locationPosition,
                  locationPosition,
                )) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality().equals(
                  other.mileage,
                  mileage,
                )) &&
            (identical(other.telematicsId, telematicsId) ||
                const DeepCollectionEquality().equals(
                  other.telematicsId,
                  telematicsId,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(batteryPercentage) ^
      const DeepCollectionEquality().hash(charging) ^
      const DeepCollectionEquality().hash(dateCreated) ^
      const DeepCollectionEquality().hash(eventReason) ^
      const DeepCollectionEquality().hash(locationPosition) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(telematicsId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $TelematicsTrackingExtension on TelematicsTracking {
  TelematicsTracking copyWith({
    String? address,
    int? batteryPercentage,
    bool? charging,
    DateTime? dateCreated,
    enums.TelematicsTrackingEventReason? eventReason,
    LocationPosition? locationPosition,
    double? mileage,
    String? telematicsId,
    String? vehicleId,
  }) {
    return TelematicsTracking(
      address: address ?? this.address,
      batteryPercentage: batteryPercentage ?? this.batteryPercentage,
      charging: charging ?? this.charging,
      dateCreated: dateCreated ?? this.dateCreated,
      eventReason: eventReason ?? this.eventReason,
      locationPosition: locationPosition ?? this.locationPosition,
      mileage: mileage ?? this.mileage,
      telematicsId: telematicsId ?? this.telematicsId,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  TelematicsTracking copyWithWrapped({
    Wrapped<String?>? address,
    Wrapped<int?>? batteryPercentage,
    Wrapped<bool?>? charging,
    Wrapped<DateTime?>? dateCreated,
    Wrapped<enums.TelematicsTrackingEventReason?>? eventReason,
    Wrapped<LocationPosition?>? locationPosition,
    Wrapped<double?>? mileage,
    Wrapped<String?>? telematicsId,
    Wrapped<String?>? vehicleId,
  }) {
    return TelematicsTracking(
      address: (address != null ? address.value : this.address),
      batteryPercentage: (batteryPercentage != null
          ? batteryPercentage.value
          : this.batteryPercentage),
      charging: (charging != null ? charging.value : this.charging),
      dateCreated: (dateCreated != null ? dateCreated.value : this.dateCreated),
      eventReason: (eventReason != null ? eventReason.value : this.eventReason),
      locationPosition: (locationPosition != null
          ? locationPosition.value
          : this.locationPosition),
      mileage: (mileage != null ? mileage.value : this.mileage),
      telematicsId: (telematicsId != null
          ? telematicsId.value
          : this.telematicsId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TelematicsVehicleUsage {
  const TelematicsVehicleUsage({
    this.inversBluetoothToken,
    this.lockStatus,
    this.mileageInfo,
  });

  factory TelematicsVehicleUsage.fromJson(Map<String, dynamic> json) =>
      _$TelematicsVehicleUsageFromJson(json);

  static const toJsonFactory = _$TelematicsVehicleUsageToJson;
  Map<String, dynamic> toJson() => _$TelematicsVehicleUsageToJson(this);

  @JsonKey(name: 'inversBluetoothToken')
  final BluetoothToken? inversBluetoothToken;
  @JsonKey(
    name: 'lockStatus',
    toJson: telematicsVehicleUsageLockStatusNullableToJson,
    fromJson: telematicsVehicleUsageLockStatusNullableFromJson,
  )
  final enums.TelematicsVehicleUsageLockStatus? lockStatus;
  @JsonKey(name: 'mileageInfo')
  final Mileage? mileageInfo;
  static const fromJsonFactory = _$TelematicsVehicleUsageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TelematicsVehicleUsage &&
            (identical(other.inversBluetoothToken, inversBluetoothToken) ||
                const DeepCollectionEquality().equals(
                  other.inversBluetoothToken,
                  inversBluetoothToken,
                )) &&
            (identical(other.lockStatus, lockStatus) ||
                const DeepCollectionEquality().equals(
                  other.lockStatus,
                  lockStatus,
                )) &&
            (identical(other.mileageInfo, mileageInfo) ||
                const DeepCollectionEquality().equals(
                  other.mileageInfo,
                  mileageInfo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(inversBluetoothToken) ^
      const DeepCollectionEquality().hash(lockStatus) ^
      const DeepCollectionEquality().hash(mileageInfo) ^
      runtimeType.hashCode;
}

extension $TelematicsVehicleUsageExtension on TelematicsVehicleUsage {
  TelematicsVehicleUsage copyWith({
    BluetoothToken? inversBluetoothToken,
    enums.TelematicsVehicleUsageLockStatus? lockStatus,
    Mileage? mileageInfo,
  }) {
    return TelematicsVehicleUsage(
      inversBluetoothToken: inversBluetoothToken ?? this.inversBluetoothToken,
      lockStatus: lockStatus ?? this.lockStatus,
      mileageInfo: mileageInfo ?? this.mileageInfo,
    );
  }

  TelematicsVehicleUsage copyWithWrapped({
    Wrapped<BluetoothToken?>? inversBluetoothToken,
    Wrapped<enums.TelematicsVehicleUsageLockStatus?>? lockStatus,
    Wrapped<Mileage?>? mileageInfo,
  }) {
    return TelematicsVehicleUsage(
      inversBluetoothToken: (inversBluetoothToken != null
          ? inversBluetoothToken.value
          : this.inversBluetoothToken),
      lockStatus: (lockStatus != null ? lockStatus.value : this.lockStatus),
      mileageInfo: (mileageInfo != null ? mileageInfo.value : this.mileageInfo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TerminateContractHints {
  const TerminateContractHints({
    this.actionAllowed,
    this.maximalDate,
    this.minimalDate,
    this.terminateOption,
  });

  factory TerminateContractHints.fromJson(Map<String, dynamic> json) =>
      _$TerminateContractHintsFromJson(json);

  static const toJsonFactory = _$TerminateContractHintsToJson;
  Map<String, dynamic> toJson() => _$TerminateContractHintsToJson(this);

  @JsonKey(name: 'actionAllowed')
  final bool? actionAllowed;
  @JsonKey(name: 'maximalDate', toJson: _dateToJson)
  final DateTime? maximalDate;
  @JsonKey(name: 'minimalDate', toJson: _dateToJson)
  final DateTime? minimalDate;
  @JsonKey(
    name: 'terminateOption',
    toJson: terminateDayOptionNullableToJson,
    fromJson: terminateDayOptionNullableFromJson,
  )
  final enums.TerminateDayOption? terminateOption;
  static const fromJsonFactory = _$TerminateContractHintsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TerminateContractHints &&
            (identical(other.actionAllowed, actionAllowed) ||
                const DeepCollectionEquality().equals(
                  other.actionAllowed,
                  actionAllowed,
                )) &&
            (identical(other.maximalDate, maximalDate) ||
                const DeepCollectionEquality().equals(
                  other.maximalDate,
                  maximalDate,
                )) &&
            (identical(other.minimalDate, minimalDate) ||
                const DeepCollectionEquality().equals(
                  other.minimalDate,
                  minimalDate,
                )) &&
            (identical(other.terminateOption, terminateOption) ||
                const DeepCollectionEquality().equals(
                  other.terminateOption,
                  terminateOption,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(actionAllowed) ^
      const DeepCollectionEquality().hash(maximalDate) ^
      const DeepCollectionEquality().hash(minimalDate) ^
      const DeepCollectionEquality().hash(terminateOption) ^
      runtimeType.hashCode;
}

extension $TerminateContractHintsExtension on TerminateContractHints {
  TerminateContractHints copyWith({
    bool? actionAllowed,
    DateTime? maximalDate,
    DateTime? minimalDate,
    enums.TerminateDayOption? terminateOption,
  }) {
    return TerminateContractHints(
      actionAllowed: actionAllowed ?? this.actionAllowed,
      maximalDate: maximalDate ?? this.maximalDate,
      minimalDate: minimalDate ?? this.minimalDate,
      terminateOption: terminateOption ?? this.terminateOption,
    );
  }

  TerminateContractHints copyWithWrapped({
    Wrapped<bool?>? actionAllowed,
    Wrapped<DateTime?>? maximalDate,
    Wrapped<DateTime?>? minimalDate,
    Wrapped<enums.TerminateDayOption?>? terminateOption,
  }) {
    return TerminateContractHints(
      actionAllowed: (actionAllowed != null
          ? actionAllowed.value
          : this.actionAllowed),
      maximalDate: (maximalDate != null ? maximalDate.value : this.maximalDate),
      minimalDate: (minimalDate != null ? minimalDate.value : this.minimalDate),
      terminateOption: (terminateOption != null
          ? terminateOption.value
          : this.terminateOption),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TerminateContractHintsApiDataResponse {
  const TerminateContractHintsApiDataResponse({this.data});

  factory TerminateContractHintsApiDataResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$TerminateContractHintsApiDataResponseFromJson(json);

  static const toJsonFactory = _$TerminateContractHintsApiDataResponseToJson;
  Map<String, dynamic> toJson() =>
      _$TerminateContractHintsApiDataResponseToJson(this);

  @JsonKey(name: 'data')
  final TerminateContractHints? data;
  static const fromJsonFactory =
      _$TerminateContractHintsApiDataResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TerminateContractHintsApiDataResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $TerminateContractHintsApiDataResponseExtension
    on TerminateContractHintsApiDataResponse {
  TerminateContractHintsApiDataResponse copyWith({
    TerminateContractHints? data,
  }) {
    return TerminateContractHintsApiDataResponse(data: data ?? this.data);
  }

  TerminateContractHintsApiDataResponse copyWithWrapped({
    Wrapped<TerminateContractHints?>? data,
  }) {
    return TerminateContractHintsApiDataResponse(
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TerminateContractRequest {
  const TerminateContractRequest({this.reason, this.terminationDate});

  factory TerminateContractRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminateContractRequestFromJson(json);

  static const toJsonFactory = _$TerminateContractRequestToJson;
  Map<String, dynamic> toJson() => _$TerminateContractRequestToJson(this);

  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'terminationDate', toJson: _dateToJson)
  final DateTime? terminationDate;
  static const fromJsonFactory = _$TerminateContractRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TerminateContractRequest &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.terminationDate, terminationDate) ||
                const DeepCollectionEquality().equals(
                  other.terminationDate,
                  terminationDate,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(terminationDate) ^
      runtimeType.hashCode;
}

extension $TerminateContractRequestExtension on TerminateContractRequest {
  TerminateContractRequest copyWith({
    String? reason,
    DateTime? terminationDate,
  }) {
    return TerminateContractRequest(
      reason: reason ?? this.reason,
      terminationDate: terminationDate ?? this.terminationDate,
    );
  }

  TerminateContractRequest copyWithWrapped({
    Wrapped<String?>? reason,
    Wrapped<DateTime?>? terminationDate,
  }) {
    return TerminateContractRequest(
      reason: (reason != null ? reason.value : this.reason),
      terminationDate: (terminationDate != null
          ? terminationDate.value
          : this.terminationDate),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateBookingRequest {
  const UpdateBookingRequest({
    this.adminComments,
    this.authorizationComments,
    this.comments,
    this.doNotInvoice,
    this.invoiceComments,
    this.invoiced,
    this.needsCorrection,
    this.needsCorrectionComments,
    this.period,
  });

  factory UpdateBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBookingRequestFromJson(json);

  static const toJsonFactory = _$UpdateBookingRequestToJson;
  Map<String, dynamic> toJson() => _$UpdateBookingRequestToJson(this);

  @JsonKey(name: 'adminComments')
  final String? adminComments;
  @JsonKey(name: 'authorizationComments')
  final String? authorizationComments;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'doNotInvoice')
  final bool? doNotInvoice;
  @JsonKey(name: 'invoiceComments')
  final String? invoiceComments;
  @JsonKey(name: 'invoiced')
  final bool? invoiced;
  @JsonKey(name: 'needsCorrection')
  final bool? needsCorrection;
  @JsonKey(name: 'needsCorrectionComments')
  final String? needsCorrectionComments;
  @JsonKey(name: 'period')
  final Period? period;
  static const fromJsonFactory = _$UpdateBookingRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateBookingRequest &&
            (identical(other.adminComments, adminComments) ||
                const DeepCollectionEquality().equals(
                  other.adminComments,
                  adminComments,
                )) &&
            (identical(other.authorizationComments, authorizationComments) ||
                const DeepCollectionEquality().equals(
                  other.authorizationComments,
                  authorizationComments,
                )) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality().equals(
                  other.comments,
                  comments,
                )) &&
            (identical(other.doNotInvoice, doNotInvoice) ||
                const DeepCollectionEquality().equals(
                  other.doNotInvoice,
                  doNotInvoice,
                )) &&
            (identical(other.invoiceComments, invoiceComments) ||
                const DeepCollectionEquality().equals(
                  other.invoiceComments,
                  invoiceComments,
                )) &&
            (identical(other.invoiced, invoiced) ||
                const DeepCollectionEquality().equals(
                  other.invoiced,
                  invoiced,
                )) &&
            (identical(other.needsCorrection, needsCorrection) ||
                const DeepCollectionEquality().equals(
                  other.needsCorrection,
                  needsCorrection,
                )) &&
            (identical(
                  other.needsCorrectionComments,
                  needsCorrectionComments,
                ) ||
                const DeepCollectionEquality().equals(
                  other.needsCorrectionComments,
                  needsCorrectionComments,
                )) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(adminComments) ^
      const DeepCollectionEquality().hash(authorizationComments) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(doNotInvoice) ^
      const DeepCollectionEquality().hash(invoiceComments) ^
      const DeepCollectionEquality().hash(invoiced) ^
      const DeepCollectionEquality().hash(needsCorrection) ^
      const DeepCollectionEquality().hash(needsCorrectionComments) ^
      const DeepCollectionEquality().hash(period) ^
      runtimeType.hashCode;
}

extension $UpdateBookingRequestExtension on UpdateBookingRequest {
  UpdateBookingRequest copyWith({
    String? adminComments,
    String? authorizationComments,
    String? comments,
    bool? doNotInvoice,
    String? invoiceComments,
    bool? invoiced,
    bool? needsCorrection,
    String? needsCorrectionComments,
    Period? period,
  }) {
    return UpdateBookingRequest(
      adminComments: adminComments ?? this.adminComments,
      authorizationComments:
          authorizationComments ?? this.authorizationComments,
      comments: comments ?? this.comments,
      doNotInvoice: doNotInvoice ?? this.doNotInvoice,
      invoiceComments: invoiceComments ?? this.invoiceComments,
      invoiced: invoiced ?? this.invoiced,
      needsCorrection: needsCorrection ?? this.needsCorrection,
      needsCorrectionComments:
          needsCorrectionComments ?? this.needsCorrectionComments,
      period: period ?? this.period,
    );
  }

  UpdateBookingRequest copyWithWrapped({
    Wrapped<String?>? adminComments,
    Wrapped<String?>? authorizationComments,
    Wrapped<String?>? comments,
    Wrapped<bool?>? doNotInvoice,
    Wrapped<String?>? invoiceComments,
    Wrapped<bool?>? invoiced,
    Wrapped<bool?>? needsCorrection,
    Wrapped<String?>? needsCorrectionComments,
    Wrapped<Period?>? period,
  }) {
    return UpdateBookingRequest(
      adminComments: (adminComments != null
          ? adminComments.value
          : this.adminComments),
      authorizationComments: (authorizationComments != null
          ? authorizationComments.value
          : this.authorizationComments),
      comments: (comments != null ? comments.value : this.comments),
      doNotInvoice: (doNotInvoice != null
          ? doNotInvoice.value
          : this.doNotInvoice),
      invoiceComments: (invoiceComments != null
          ? invoiceComments.value
          : this.invoiceComments),
      invoiced: (invoiced != null ? invoiced.value : this.invoiced),
      needsCorrection: (needsCorrection != null
          ? needsCorrection.value
          : this.needsCorrection),
      needsCorrectionComments: (needsCorrectionComments != null
          ? needsCorrectionComments.value
          : this.needsCorrectionComments),
      period: (period != null ? period.value : this.period),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateClient {
  const UpdateClient({
    required this.city,
    required this.country,
    this.domainNameForUserOnboarding,
    required this.email,
    required this.houseNumber,
    required this.name,
    this.odooId,
    required this.postalCode,
    required this.street,
    this.suspended,
    this.suspendedReason,
    this.vat,
  });

  factory UpdateClient.fromJson(Map<String, dynamic> json) =>
      _$UpdateClientFromJson(json);

  static const toJsonFactory = _$UpdateClientToJson;
  Map<String, dynamic> toJson() => _$UpdateClientToJson(this);

  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'domainNameForUserOnboarding')
  final String? domainNameForUserOnboarding;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'houseNumber')
  final String houseNumber;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'odooId')
  final int? odooId;
  @JsonKey(name: 'postalCode')
  final String postalCode;
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'suspended')
  final bool? suspended;
  @JsonKey(name: 'suspendedReason')
  final String? suspendedReason;
  @JsonKey(name: 'vat')
  final String? vat;
  static const fromJsonFactory = _$UpdateClientFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateClient &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(
                  other.country,
                  country,
                )) &&
            (identical(
                  other.domainNameForUserOnboarding,
                  domainNameForUserOnboarding,
                ) ||
                const DeepCollectionEquality().equals(
                  other.domainNameForUserOnboarding,
                  domainNameForUserOnboarding,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality().equals(
                  other.houseNumber,
                  houseNumber,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.odooId, odooId) ||
                const DeepCollectionEquality().equals(other.odooId, odooId)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality().equals(
                  other.postalCode,
                  postalCode,
                )) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.suspended, suspended) ||
                const DeepCollectionEquality().equals(
                  other.suspended,
                  suspended,
                )) &&
            (identical(other.suspendedReason, suspendedReason) ||
                const DeepCollectionEquality().equals(
                  other.suspendedReason,
                  suspendedReason,
                )) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(domainNameForUserOnboarding) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(houseNumber) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(odooId) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(suspended) ^
      const DeepCollectionEquality().hash(suspendedReason) ^
      const DeepCollectionEquality().hash(vat) ^
      runtimeType.hashCode;
}

extension $UpdateClientExtension on UpdateClient {
  UpdateClient copyWith({
    String? city,
    String? country,
    String? domainNameForUserOnboarding,
    String? email,
    String? houseNumber,
    String? name,
    int? odooId,
    String? postalCode,
    String? street,
    bool? suspended,
    String? suspendedReason,
    String? vat,
  }) {
    return UpdateClient(
      city: city ?? this.city,
      country: country ?? this.country,
      domainNameForUserOnboarding:
          domainNameForUserOnboarding ?? this.domainNameForUserOnboarding,
      email: email ?? this.email,
      houseNumber: houseNumber ?? this.houseNumber,
      name: name ?? this.name,
      odooId: odooId ?? this.odooId,
      postalCode: postalCode ?? this.postalCode,
      street: street ?? this.street,
      suspended: suspended ?? this.suspended,
      suspendedReason: suspendedReason ?? this.suspendedReason,
      vat: vat ?? this.vat,
    );
  }

  UpdateClient copyWithWrapped({
    Wrapped<String>? city,
    Wrapped<String>? country,
    Wrapped<String?>? domainNameForUserOnboarding,
    Wrapped<String>? email,
    Wrapped<String>? houseNumber,
    Wrapped<String>? name,
    Wrapped<int?>? odooId,
    Wrapped<String>? postalCode,
    Wrapped<String>? street,
    Wrapped<bool?>? suspended,
    Wrapped<String?>? suspendedReason,
    Wrapped<String?>? vat,
  }) {
    return UpdateClient(
      city: (city != null ? city.value : this.city),
      country: (country != null ? country.value : this.country),
      domainNameForUserOnboarding: (domainNameForUserOnboarding != null
          ? domainNameForUserOnboarding.value
          : this.domainNameForUserOnboarding),
      email: (email != null ? email.value : this.email),
      houseNumber: (houseNumber != null ? houseNumber.value : this.houseNumber),
      name: (name != null ? name.value : this.name),
      odooId: (odooId != null ? odooId.value : this.odooId),
      postalCode: (postalCode != null ? postalCode.value : this.postalCode),
      street: (street != null ? street.value : this.street),
      suspended: (suspended != null ? suspended.value : this.suspended),
      suspendedReason: (suspendedReason != null
          ? suspendedReason.value
          : this.suspendedReason),
      vat: (vat != null ? vat.value : this.vat),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateIssueRequest {
  const UpdateIssueRequest({
    this.assignedToRemoteId,
    this.bookingId,
    this.comment,
    this.description,
    this.priority,
    this.status,
    this.title,
    this.userRemoteId,
    this.vehicleId,
  });

  factory UpdateIssueRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateIssueRequestFromJson(json);

  static const toJsonFactory = _$UpdateIssueRequestToJson;
  Map<String, dynamic> toJson() => _$UpdateIssueRequestToJson(this);

  @JsonKey(name: 'assignedToRemoteId')
  final String? assignedToRemoteId;
  @JsonKey(name: 'bookingId')
  final String? bookingId;
  @JsonKey(name: 'comment')
  final String? comment;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(
    name: 'priority',
    toJson: updateIssueRequestPriorityNullableToJson,
    fromJson: updateIssueRequestPriorityNullableFromJson,
  )
  final enums.UpdateIssueRequestPriority? priority;
  @JsonKey(
    name: 'status',
    toJson: updateIssueRequestStatusNullableToJson,
    fromJson: updateIssueRequestStatusNullableFromJson,
  )
  final enums.UpdateIssueRequestStatus? status;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'userRemoteId')
  final String? userRemoteId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$UpdateIssueRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateIssueRequest &&
            (identical(other.assignedToRemoteId, assignedToRemoteId) ||
                const DeepCollectionEquality().equals(
                  other.assignedToRemoteId,
                  assignedToRemoteId,
                )) &&
            (identical(other.bookingId, bookingId) ||
                const DeepCollectionEquality().equals(
                  other.bookingId,
                  bookingId,
                )) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(
                  other.comment,
                  comment,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality().equals(
                  other.priority,
                  priority,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.userRemoteId, userRemoteId) ||
                const DeepCollectionEquality().equals(
                  other.userRemoteId,
                  userRemoteId,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(assignedToRemoteId) ^
      const DeepCollectionEquality().hash(bookingId) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(userRemoteId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $UpdateIssueRequestExtension on UpdateIssueRequest {
  UpdateIssueRequest copyWith({
    String? assignedToRemoteId,
    String? bookingId,
    String? comment,
    String? description,
    enums.UpdateIssueRequestPriority? priority,
    enums.UpdateIssueRequestStatus? status,
    String? title,
    String? userRemoteId,
    String? vehicleId,
  }) {
    return UpdateIssueRequest(
      assignedToRemoteId: assignedToRemoteId ?? this.assignedToRemoteId,
      bookingId: bookingId ?? this.bookingId,
      comment: comment ?? this.comment,
      description: description ?? this.description,
      priority: priority ?? this.priority,
      status: status ?? this.status,
      title: title ?? this.title,
      userRemoteId: userRemoteId ?? this.userRemoteId,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  UpdateIssueRequest copyWithWrapped({
    Wrapped<String?>? assignedToRemoteId,
    Wrapped<String?>? bookingId,
    Wrapped<String?>? comment,
    Wrapped<String?>? description,
    Wrapped<enums.UpdateIssueRequestPriority?>? priority,
    Wrapped<enums.UpdateIssueRequestStatus?>? status,
    Wrapped<String?>? title,
    Wrapped<String?>? userRemoteId,
    Wrapped<String?>? vehicleId,
  }) {
    return UpdateIssueRequest(
      assignedToRemoteId: (assignedToRemoteId != null
          ? assignedToRemoteId.value
          : this.assignedToRemoteId),
      bookingId: (bookingId != null ? bookingId.value : this.bookingId),
      comment: (comment != null ? comment.value : this.comment),
      description: (description != null ? description.value : this.description),
      priority: (priority != null ? priority.value : this.priority),
      status: (status != null ? status.value : this.status),
      title: (title != null ? title.value : this.title),
      userRemoteId: (userRemoteId != null
          ? userRemoteId.value
          : this.userRemoteId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateTelematicsRequest {
  const UpdateTelematicsRequest({
    this.alwaysUseBluetooth,
    this.bydMobilizeHack,
    this.ignitionCheck,
    this.keyfobCheck,
    this.maxRange,
    this.phoneNumber,
    required this.providerDeviceId,
    required this.providerId,
  });

  factory UpdateTelematicsRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTelematicsRequestFromJson(json);

  static const toJsonFactory = _$UpdateTelematicsRequestToJson;
  Map<String, dynamic> toJson() => _$UpdateTelematicsRequestToJson(this);

  @JsonKey(name: 'alwaysUseBluetooth')
  final bool? alwaysUseBluetooth;
  @JsonKey(name: 'bydMobilizeHack')
  final bool? bydMobilizeHack;
  @JsonKey(name: 'ignitionCheck')
  final bool? ignitionCheck;
  @JsonKey(name: 'keyfobCheck')
  final bool? keyfobCheck;
  @JsonKey(name: 'maxRange')
  final int? maxRange;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'providerDeviceId')
  final String providerDeviceId;
  @JsonKey(name: 'providerId')
  final String providerId;
  static const fromJsonFactory = _$UpdateTelematicsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateTelematicsRequest &&
            (identical(other.alwaysUseBluetooth, alwaysUseBluetooth) ||
                const DeepCollectionEquality().equals(
                  other.alwaysUseBluetooth,
                  alwaysUseBluetooth,
                )) &&
            (identical(other.bydMobilizeHack, bydMobilizeHack) ||
                const DeepCollectionEquality().equals(
                  other.bydMobilizeHack,
                  bydMobilizeHack,
                )) &&
            (identical(other.ignitionCheck, ignitionCheck) ||
                const DeepCollectionEquality().equals(
                  other.ignitionCheck,
                  ignitionCheck,
                )) &&
            (identical(other.keyfobCheck, keyfobCheck) ||
                const DeepCollectionEquality().equals(
                  other.keyfobCheck,
                  keyfobCheck,
                )) &&
            (identical(other.maxRange, maxRange) ||
                const DeepCollectionEquality().equals(
                  other.maxRange,
                  maxRange,
                )) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.phoneNumber,
                  phoneNumber,
                )) &&
            (identical(other.providerDeviceId, providerDeviceId) ||
                const DeepCollectionEquality().equals(
                  other.providerDeviceId,
                  providerDeviceId,
                )) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality().equals(
                  other.providerId,
                  providerId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(alwaysUseBluetooth) ^
      const DeepCollectionEquality().hash(bydMobilizeHack) ^
      const DeepCollectionEquality().hash(ignitionCheck) ^
      const DeepCollectionEquality().hash(keyfobCheck) ^
      const DeepCollectionEquality().hash(maxRange) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(providerDeviceId) ^
      const DeepCollectionEquality().hash(providerId) ^
      runtimeType.hashCode;
}

extension $UpdateTelematicsRequestExtension on UpdateTelematicsRequest {
  UpdateTelematicsRequest copyWith({
    bool? alwaysUseBluetooth,
    bool? bydMobilizeHack,
    bool? ignitionCheck,
    bool? keyfobCheck,
    int? maxRange,
    String? phoneNumber,
    String? providerDeviceId,
    String? providerId,
  }) {
    return UpdateTelematicsRequest(
      alwaysUseBluetooth: alwaysUseBluetooth ?? this.alwaysUseBluetooth,
      bydMobilizeHack: bydMobilizeHack ?? this.bydMobilizeHack,
      ignitionCheck: ignitionCheck ?? this.ignitionCheck,
      keyfobCheck: keyfobCheck ?? this.keyfobCheck,
      maxRange: maxRange ?? this.maxRange,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      providerDeviceId: providerDeviceId ?? this.providerDeviceId,
      providerId: providerId ?? this.providerId,
    );
  }

  UpdateTelematicsRequest copyWithWrapped({
    Wrapped<bool?>? alwaysUseBluetooth,
    Wrapped<bool?>? bydMobilizeHack,
    Wrapped<bool?>? ignitionCheck,
    Wrapped<bool?>? keyfobCheck,
    Wrapped<int?>? maxRange,
    Wrapped<String?>? phoneNumber,
    Wrapped<String>? providerDeviceId,
    Wrapped<String>? providerId,
  }) {
    return UpdateTelematicsRequest(
      alwaysUseBluetooth: (alwaysUseBluetooth != null
          ? alwaysUseBluetooth.value
          : this.alwaysUseBluetooth),
      bydMobilizeHack: (bydMobilizeHack != null
          ? bydMobilizeHack.value
          : this.bydMobilizeHack),
      ignitionCheck: (ignitionCheck != null
          ? ignitionCheck.value
          : this.ignitionCheck),
      keyfobCheck: (keyfobCheck != null ? keyfobCheck.value : this.keyfobCheck),
      maxRange: (maxRange != null ? maxRange.value : this.maxRange),
      phoneNumber: (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
      providerDeviceId: (providerDeviceId != null
          ? providerDeviceId.value
          : this.providerDeviceId),
      providerId: (providerId != null ? providerId.value : this.providerId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateVehicleRequest {
  const UpdateVehicleRequest({
    this.addVehicleLocationRequest,
    this.approvalType,
    this.clientId,
    this.description,
    this.electricRange,
    this.equipmentIds,
    this.expectedInFleetDate,
    this.expectedOutOfFleetDate,
    this.imageUrl,
    this.intentIds,
    this.lastPosition,
    this.lastPositionTimestamp,
    this.licensePlate,
    this.name,
    this.operationalStatus,
    this.seats,
    this.typeId,
    required this.vehicleId,
    this.vehicleInfo,
    this.vehicleInfoPreBooking,
    this.vehicleModelId,
    this.vehicleTypeId,
  });

  factory UpdateVehicleRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateVehicleRequestFromJson(json);

  static const toJsonFactory = _$UpdateVehicleRequestToJson;
  Map<String, dynamic> toJson() => _$UpdateVehicleRequestToJson(this);

  @JsonKey(name: 'addVehicleLocationRequest')
  final AddVehicleLocationRequest? addVehicleLocationRequest;
  @JsonKey(
    name: 'approvalType',
    toJson: updateVehicleRequestApprovalTypeNullableToJson,
    fromJson: updateVehicleRequestApprovalTypeNullableFromJson,
  )
  final enums.UpdateVehicleRequestApprovalType? approvalType;
  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'electricRange')
  final int? electricRange;
  @JsonKey(name: 'equipmentIds', defaultValue: <String>[])
  final List<String>? equipmentIds;
  @JsonKey(name: 'expectedInFleetDate')
  final DateTime? expectedInFleetDate;
  @JsonKey(name: 'expectedOutOfFleetDate')
  final DateTime? expectedOutOfFleetDate;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'intentIds', defaultValue: <String>[])
  final List<String>? intentIds;
  @JsonKey(name: 'lastPosition')
  final GpsLocation? lastPosition;
  @JsonKey(name: 'lastPositionTimestamp')
  final DateTime? lastPositionTimestamp;
  @JsonKey(name: 'licensePlate')
  final String? licensePlate;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(
    name: 'operationalStatus',
    toJson: updateVehicleRequestOperationalStatusNullableToJson,
    fromJson: updateVehicleRequestOperationalStatusNullableFromJson,
  )
  final enums.UpdateVehicleRequestOperationalStatus? operationalStatus;
  @JsonKey(name: 'seats')
  final int? seats;
  @JsonKey(name: 'typeId')
  final String? typeId;
  @JsonKey(name: 'vehicleId')
  final String vehicleId;
  @JsonKey(name: 'vehicleInfo')
  final String? vehicleInfo;
  @JsonKey(name: 'vehicleInfoPreBooking')
  final String? vehicleInfoPreBooking;
  @JsonKey(name: 'vehicleModelId')
  final String? vehicleModelId;
  @JsonKey(name: 'vehicleTypeId')
  final String? vehicleTypeId;
  static const fromJsonFactory = _$UpdateVehicleRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateVehicleRequest &&
            (identical(
                  other.addVehicleLocationRequest,
                  addVehicleLocationRequest,
                ) ||
                const DeepCollectionEquality().equals(
                  other.addVehicleLocationRequest,
                  addVehicleLocationRequest,
                )) &&
            (identical(other.approvalType, approvalType) ||
                const DeepCollectionEquality().equals(
                  other.approvalType,
                  approvalType,
                )) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality().equals(
                  other.clientId,
                  clientId,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.electricRange, electricRange) ||
                const DeepCollectionEquality().equals(
                  other.electricRange,
                  electricRange,
                )) &&
            (identical(other.equipmentIds, equipmentIds) ||
                const DeepCollectionEquality().equals(
                  other.equipmentIds,
                  equipmentIds,
                )) &&
            (identical(other.expectedInFleetDate, expectedInFleetDate) ||
                const DeepCollectionEquality().equals(
                  other.expectedInFleetDate,
                  expectedInFleetDate,
                )) &&
            (identical(other.expectedOutOfFleetDate, expectedOutOfFleetDate) ||
                const DeepCollectionEquality().equals(
                  other.expectedOutOfFleetDate,
                  expectedOutOfFleetDate,
                )) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality().equals(
                  other.imageUrl,
                  imageUrl,
                )) &&
            (identical(other.intentIds, intentIds) ||
                const DeepCollectionEquality().equals(
                  other.intentIds,
                  intentIds,
                )) &&
            (identical(other.lastPosition, lastPosition) ||
                const DeepCollectionEquality().equals(
                  other.lastPosition,
                  lastPosition,
                )) &&
            (identical(other.lastPositionTimestamp, lastPositionTimestamp) ||
                const DeepCollectionEquality().equals(
                  other.lastPositionTimestamp,
                  lastPositionTimestamp,
                )) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality().equals(
                  other.licensePlate,
                  licensePlate,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.operationalStatus, operationalStatus) ||
                const DeepCollectionEquality().equals(
                  other.operationalStatus,
                  operationalStatus,
                )) &&
            (identical(other.seats, seats) ||
                const DeepCollectionEquality().equals(other.seats, seats)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )) &&
            (identical(other.vehicleInfo, vehicleInfo) ||
                const DeepCollectionEquality().equals(
                  other.vehicleInfo,
                  vehicleInfo,
                )) &&
            (identical(other.vehicleInfoPreBooking, vehicleInfoPreBooking) ||
                const DeepCollectionEquality().equals(
                  other.vehicleInfoPreBooking,
                  vehicleInfoPreBooking,
                )) &&
            (identical(other.vehicleModelId, vehicleModelId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleModelId,
                  vehicleModelId,
                )) &&
            (identical(other.vehicleTypeId, vehicleTypeId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleTypeId,
                  vehicleTypeId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addVehicleLocationRequest) ^
      const DeepCollectionEquality().hash(approvalType) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(electricRange) ^
      const DeepCollectionEquality().hash(equipmentIds) ^
      const DeepCollectionEquality().hash(expectedInFleetDate) ^
      const DeepCollectionEquality().hash(expectedOutOfFleetDate) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(intentIds) ^
      const DeepCollectionEquality().hash(lastPosition) ^
      const DeepCollectionEquality().hash(lastPositionTimestamp) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(operationalStatus) ^
      const DeepCollectionEquality().hash(seats) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicleInfo) ^
      const DeepCollectionEquality().hash(vehicleInfoPreBooking) ^
      const DeepCollectionEquality().hash(vehicleModelId) ^
      const DeepCollectionEquality().hash(vehicleTypeId) ^
      runtimeType.hashCode;
}

extension $UpdateVehicleRequestExtension on UpdateVehicleRequest {
  UpdateVehicleRequest copyWith({
    AddVehicleLocationRequest? addVehicleLocationRequest,
    enums.UpdateVehicleRequestApprovalType? approvalType,
    String? clientId,
    String? description,
    int? electricRange,
    List<String>? equipmentIds,
    DateTime? expectedInFleetDate,
    DateTime? expectedOutOfFleetDate,
    String? imageUrl,
    List<String>? intentIds,
    GpsLocation? lastPosition,
    DateTime? lastPositionTimestamp,
    String? licensePlate,
    String? name,
    enums.UpdateVehicleRequestOperationalStatus? operationalStatus,
    int? seats,
    String? typeId,
    String? vehicleId,
    String? vehicleInfo,
    String? vehicleInfoPreBooking,
    String? vehicleModelId,
    String? vehicleTypeId,
  }) {
    return UpdateVehicleRequest(
      addVehicleLocationRequest:
          addVehicleLocationRequest ?? this.addVehicleLocationRequest,
      approvalType: approvalType ?? this.approvalType,
      clientId: clientId ?? this.clientId,
      description: description ?? this.description,
      electricRange: electricRange ?? this.electricRange,
      equipmentIds: equipmentIds ?? this.equipmentIds,
      expectedInFleetDate: expectedInFleetDate ?? this.expectedInFleetDate,
      expectedOutOfFleetDate:
          expectedOutOfFleetDate ?? this.expectedOutOfFleetDate,
      imageUrl: imageUrl ?? this.imageUrl,
      intentIds: intentIds ?? this.intentIds,
      lastPosition: lastPosition ?? this.lastPosition,
      lastPositionTimestamp:
          lastPositionTimestamp ?? this.lastPositionTimestamp,
      licensePlate: licensePlate ?? this.licensePlate,
      name: name ?? this.name,
      operationalStatus: operationalStatus ?? this.operationalStatus,
      seats: seats ?? this.seats,
      typeId: typeId ?? this.typeId,
      vehicleId: vehicleId ?? this.vehicleId,
      vehicleInfo: vehicleInfo ?? this.vehicleInfo,
      vehicleInfoPreBooking:
          vehicleInfoPreBooking ?? this.vehicleInfoPreBooking,
      vehicleModelId: vehicleModelId ?? this.vehicleModelId,
      vehicleTypeId: vehicleTypeId ?? this.vehicleTypeId,
    );
  }

  UpdateVehicleRequest copyWithWrapped({
    Wrapped<AddVehicleLocationRequest?>? addVehicleLocationRequest,
    Wrapped<enums.UpdateVehicleRequestApprovalType?>? approvalType,
    Wrapped<String?>? clientId,
    Wrapped<String?>? description,
    Wrapped<int?>? electricRange,
    Wrapped<List<String>?>? equipmentIds,
    Wrapped<DateTime?>? expectedInFleetDate,
    Wrapped<DateTime?>? expectedOutOfFleetDate,
    Wrapped<String?>? imageUrl,
    Wrapped<List<String>?>? intentIds,
    Wrapped<GpsLocation?>? lastPosition,
    Wrapped<DateTime?>? lastPositionTimestamp,
    Wrapped<String?>? licensePlate,
    Wrapped<String?>? name,
    Wrapped<enums.UpdateVehicleRequestOperationalStatus?>? operationalStatus,
    Wrapped<int?>? seats,
    Wrapped<String?>? typeId,
    Wrapped<String>? vehicleId,
    Wrapped<String?>? vehicleInfo,
    Wrapped<String?>? vehicleInfoPreBooking,
    Wrapped<String?>? vehicleModelId,
    Wrapped<String?>? vehicleTypeId,
  }) {
    return UpdateVehicleRequest(
      addVehicleLocationRequest: (addVehicleLocationRequest != null
          ? addVehicleLocationRequest.value
          : this.addVehicleLocationRequest),
      approvalType: (approvalType != null
          ? approvalType.value
          : this.approvalType),
      clientId: (clientId != null ? clientId.value : this.clientId),
      description: (description != null ? description.value : this.description),
      electricRange: (electricRange != null
          ? electricRange.value
          : this.electricRange),
      equipmentIds: (equipmentIds != null
          ? equipmentIds.value
          : this.equipmentIds),
      expectedInFleetDate: (expectedInFleetDate != null
          ? expectedInFleetDate.value
          : this.expectedInFleetDate),
      expectedOutOfFleetDate: (expectedOutOfFleetDate != null
          ? expectedOutOfFleetDate.value
          : this.expectedOutOfFleetDate),
      imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
      intentIds: (intentIds != null ? intentIds.value : this.intentIds),
      lastPosition: (lastPosition != null
          ? lastPosition.value
          : this.lastPosition),
      lastPositionTimestamp: (lastPositionTimestamp != null
          ? lastPositionTimestamp.value
          : this.lastPositionTimestamp),
      licensePlate: (licensePlate != null
          ? licensePlate.value
          : this.licensePlate),
      name: (name != null ? name.value : this.name),
      operationalStatus: (operationalStatus != null
          ? operationalStatus.value
          : this.operationalStatus),
      seats: (seats != null ? seats.value : this.seats),
      typeId: (typeId != null ? typeId.value : this.typeId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
      vehicleInfo: (vehicleInfo != null ? vehicleInfo.value : this.vehicleInfo),
      vehicleInfoPreBooking: (vehicleInfoPreBooking != null
          ? vehicleInfoPreBooking.value
          : this.vehicleInfoPreBooking),
      vehicleModelId: (vehicleModelId != null
          ? vehicleModelId.value
          : this.vehicleModelId),
      vehicleTypeId: (vehicleTypeId != null
          ? vehicleTypeId.value
          : this.vehicleTypeId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class User {
  const User({
    this.displayName,
    this.email,
    this.homeLocation,
    this.id,
    this.imageUrl,
    this.joinedSince,
    this.pushNotificationsEnabled,
    this.workLocation,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'homeLocation')
  final GpsLocation? homeLocation;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'joinedSince')
  final DateTime? joinedSince;
  @JsonKey(name: 'pushNotificationsEnabled')
  final bool? pushNotificationsEnabled;
  @JsonKey(name: 'workLocation')
  final GpsLocation? workLocation;
  static const fromJsonFactory = _$UserFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality().equals(
                  other.displayName,
                  displayName,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.homeLocation, homeLocation) ||
                const DeepCollectionEquality().equals(
                  other.homeLocation,
                  homeLocation,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality().equals(
                  other.imageUrl,
                  imageUrl,
                )) &&
            (identical(other.joinedSince, joinedSince) ||
                const DeepCollectionEquality().equals(
                  other.joinedSince,
                  joinedSince,
                )) &&
            (identical(
                  other.pushNotificationsEnabled,
                  pushNotificationsEnabled,
                ) ||
                const DeepCollectionEquality().equals(
                  other.pushNotificationsEnabled,
                  pushNotificationsEnabled,
                )) &&
            (identical(other.workLocation, workLocation) ||
                const DeepCollectionEquality().equals(
                  other.workLocation,
                  workLocation,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(homeLocation) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(joinedSince) ^
      const DeepCollectionEquality().hash(pushNotificationsEnabled) ^
      const DeepCollectionEquality().hash(workLocation) ^
      runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith({
    String? displayName,
    String? email,
    GpsLocation? homeLocation,
    String? id,
    String? imageUrl,
    DateTime? joinedSince,
    bool? pushNotificationsEnabled,
    GpsLocation? workLocation,
  }) {
    return User(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      homeLocation: homeLocation ?? this.homeLocation,
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      joinedSince: joinedSince ?? this.joinedSince,
      pushNotificationsEnabled:
          pushNotificationsEnabled ?? this.pushNotificationsEnabled,
      workLocation: workLocation ?? this.workLocation,
    );
  }

  User copyWithWrapped({
    Wrapped<String?>? displayName,
    Wrapped<String?>? email,
    Wrapped<GpsLocation?>? homeLocation,
    Wrapped<String?>? id,
    Wrapped<String?>? imageUrl,
    Wrapped<DateTime?>? joinedSince,
    Wrapped<bool?>? pushNotificationsEnabled,
    Wrapped<GpsLocation?>? workLocation,
  }) {
    return User(
      displayName: (displayName != null ? displayName.value : this.displayName),
      email: (email != null ? email.value : this.email),
      homeLocation: (homeLocation != null
          ? homeLocation.value
          : this.homeLocation),
      id: (id != null ? id.value : this.id),
      imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
      joinedSince: (joinedSince != null ? joinedSince.value : this.joinedSince),
      pushNotificationsEnabled: (pushNotificationsEnabled != null
          ? pushNotificationsEnabled.value
          : this.pushNotificationsEnabled),
      workLocation: (workLocation != null
          ? workLocation.value
          : this.workLocation),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Vehicle {
  const Vehicle({
    this.distance,
    this.electricRange,
    this.fanPrice,
    this.favorite,
    this.funPrice,
    this.homePosition,
    this.id,
    this.imageUrl,
    this.lastPosition,
    this.lastPositionTimestamp,
    this.vehicleLocations,
    this.licensePlate,
    this.name,
    this.operationalStatus,
    this.vehicleBodyStyle,
    this.vehicleBrand,
    this.vehicleModel,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  static const toJsonFactory = _$VehicleToJson;
  Map<String, dynamic> toJson() => _$VehicleToJson(this);

  @JsonKey(name: 'distance')
  final double? distance;
  @JsonKey(name: 'electricRange')
  final int? electricRange;
  @JsonKey(name: 'fanPrice')
  final BookingPrice? fanPrice;
  @JsonKey(name: 'favorite')
  final bool? favorite;
  @JsonKey(name: 'funPrice')
  final BookingPrice? funPrice;
  @JsonKey(name: 'homePosition')
  final GpsLocation? homePosition;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @JsonKey(name: 'lastPosition')
  final GpsLocation? lastPosition;
  @JsonKey(name: 'lastPositionTimestamp')
  final DateTime? lastPositionTimestamp;
  @JsonKey(name: 'vehicleLocations', defaultValue: <VehicleLocation>[])
  final List<VehicleLocation>? vehicleLocations;
  @JsonKey(name: 'licensePlate')
  final String? licensePlate;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(
    name: 'operationalStatus',
    toJson: vehicleOperationalStatusNullableToJson,
    fromJson: vehicleOperationalStatusNullableFromJson,
  )
  final enums.VehicleOperationalStatus? operationalStatus;
  @JsonKey(name: 'vehicleBodyStyle')
  final BodyStyle? vehicleBodyStyle;
  @JsonKey(name: 'vehicleBrand')
  final VehicleBrand? vehicleBrand;
  @JsonKey(name: 'vehicleModel')
  final VehicleModel? vehicleModel;
  static const fromJsonFactory = _$VehicleFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Vehicle &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality().equals(
                  other.distance,
                  distance,
                )) &&
            (identical(other.electricRange, electricRange) ||
                const DeepCollectionEquality().equals(
                  other.electricRange,
                  electricRange,
                )) &&
            (identical(other.fanPrice, fanPrice) ||
                const DeepCollectionEquality().equals(
                  other.fanPrice,
                  fanPrice,
                )) &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality().equals(
                  other.favorite,
                  favorite,
                )) &&
            (identical(other.funPrice, funPrice) ||
                const DeepCollectionEquality().equals(
                  other.funPrice,
                  funPrice,
                )) &&
            (identical(other.homePosition, homePosition) ||
                const DeepCollectionEquality().equals(
                  other.homePosition,
                  homePosition,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality().equals(
                  other.imageUrl,
                  imageUrl,
                )) &&
            (identical(other.lastPosition, lastPosition) ||
                const DeepCollectionEquality().equals(
                  other.lastPosition,
                  lastPosition,
                )) &&
            (identical(other.lastPositionTimestamp, lastPositionTimestamp) ||
                const DeepCollectionEquality().equals(
                  other.lastPositionTimestamp,
                  lastPositionTimestamp,
                )) &&
            (identical(other.vehicleLocations, vehicleLocations) ||
                const DeepCollectionEquality().equals(
                  other.vehicleLocations,
                  vehicleLocations,
                )) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality().equals(
                  other.licensePlate,
                  licensePlate,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.operationalStatus, operationalStatus) ||
                const DeepCollectionEquality().equals(
                  other.operationalStatus,
                  operationalStatus,
                )) &&
            (identical(other.vehicleBodyStyle, vehicleBodyStyle) ||
                const DeepCollectionEquality().equals(
                  other.vehicleBodyStyle,
                  vehicleBodyStyle,
                )) &&
            (identical(other.vehicleBrand, vehicleBrand) ||
                const DeepCollectionEquality().equals(
                  other.vehicleBrand,
                  vehicleBrand,
                )) &&
            (identical(other.vehicleModel, vehicleModel) ||
                const DeepCollectionEquality().equals(
                  other.vehicleModel,
                  vehicleModel,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(electricRange) ^
      const DeepCollectionEquality().hash(fanPrice) ^
      const DeepCollectionEquality().hash(favorite) ^
      const DeepCollectionEquality().hash(funPrice) ^
      const DeepCollectionEquality().hash(homePosition) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(lastPosition) ^
      const DeepCollectionEquality().hash(lastPositionTimestamp) ^
      const DeepCollectionEquality().hash(vehicleLocations) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(operationalStatus) ^
      const DeepCollectionEquality().hash(vehicleBodyStyle) ^
      const DeepCollectionEquality().hash(vehicleBrand) ^
      const DeepCollectionEquality().hash(vehicleModel) ^
      runtimeType.hashCode;
}

extension $VehicleExtension on Vehicle {
  Vehicle copyWith({
    double? distance,
    int? electricRange,
    BookingPrice? fanPrice,
    bool? favorite,
    BookingPrice? funPrice,
    GpsLocation? homePosition,
    String? id,
    String? imageUrl,
    GpsLocation? lastPosition,
    DateTime? lastPositionTimestamp,
    List<VehicleLocation>? vehicleLocations,
    String? licensePlate,
    String? name,
    enums.VehicleOperationalStatus? operationalStatus,
    BodyStyle? vehicleBodyStyle,
    VehicleBrand? vehicleBrand,
    VehicleModel? vehicleModel,
  }) {
    return Vehicle(
      distance: distance ?? this.distance,
      electricRange: electricRange ?? this.electricRange,
      fanPrice: fanPrice ?? this.fanPrice,
      favorite: favorite ?? this.favorite,
      funPrice: funPrice ?? this.funPrice,
      homePosition: homePosition ?? this.homePosition,
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      lastPosition: lastPosition ?? this.lastPosition,
      lastPositionTimestamp:
          lastPositionTimestamp ?? this.lastPositionTimestamp,
      vehicleLocations: vehicleLocations ?? this.vehicleLocations,
      licensePlate: licensePlate ?? this.licensePlate,
      name: name ?? this.name,
      operationalStatus: operationalStatus ?? this.operationalStatus,
      vehicleBodyStyle: vehicleBodyStyle ?? this.vehicleBodyStyle,
      vehicleBrand: vehicleBrand ?? this.vehicleBrand,
      vehicleModel: vehicleModel ?? this.vehicleModel,
    );
  }

  Vehicle copyWithWrapped({
    Wrapped<double?>? distance,
    Wrapped<int?>? electricRange,
    Wrapped<BookingPrice?>? fanPrice,
    Wrapped<bool?>? favorite,
    Wrapped<BookingPrice?>? funPrice,
    Wrapped<GpsLocation?>? homePosition,
    Wrapped<String?>? id,
    Wrapped<String?>? imageUrl,
    Wrapped<GpsLocation?>? lastPosition,
    Wrapped<DateTime?>? lastPositionTimestamp,
    Wrapped<List<VehicleLocation>?>? vehicleLocations,
    Wrapped<String?>? licensePlate,
    Wrapped<String?>? name,
    Wrapped<enums.VehicleOperationalStatus?>? operationalStatus,
    Wrapped<BodyStyle?>? vehicleBodyStyle,
    Wrapped<VehicleBrand?>? vehicleBrand,
    Wrapped<VehicleModel?>? vehicleModel,
  }) {
    return Vehicle(
      distance: (distance != null ? distance.value : this.distance),
      electricRange: (electricRange != null
          ? electricRange.value
          : this.electricRange),
      fanPrice: (fanPrice != null ? fanPrice.value : this.fanPrice),
      favorite: (favorite != null ? favorite.value : this.favorite),
      funPrice: (funPrice != null ? funPrice.value : this.funPrice),
      homePosition: (homePosition != null
          ? homePosition.value
          : this.homePosition),
      id: (id != null ? id.value : this.id),
      imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
      lastPosition: (lastPosition != null
          ? lastPosition.value
          : this.lastPosition),
      lastPositionTimestamp: (lastPositionTimestamp != null
          ? lastPositionTimestamp.value
          : this.lastPositionTimestamp),
      vehicleLocations: (vehicleLocations != null
          ? vehicleLocations.value
          : this.vehicleLocations),
      licensePlate: (licensePlate != null
          ? licensePlate.value
          : this.licensePlate),
      name: (name != null ? name.value : this.name),
      operationalStatus: (operationalStatus != null
          ? operationalStatus.value
          : this.operationalStatus),
      vehicleBodyStyle: (vehicleBodyStyle != null
          ? vehicleBodyStyle.value
          : this.vehicleBodyStyle),
      vehicleBrand: (vehicleBrand != null
          ? vehicleBrand.value
          : this.vehicleBrand),
      vehicleModel: (vehicleModel != null
          ? vehicleModel.value
          : this.vehicleModel),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleBaseLocation {
  const VehicleBaseLocation({
    this.adType,
    this.borough,
    this.homePosition,
    this.id,
    this.memo,
    this.name,
    this.status,
  });

  factory VehicleBaseLocation.fromJson(Map<String, dynamic> json) =>
      _$VehicleBaseLocationFromJson(json);

  static const toJsonFactory = _$VehicleBaseLocationToJson;
  Map<String, dynamic> toJson() => _$VehicleBaseLocationToJson(this);

  @JsonKey(name: 'adType')
  final String? adType;
  @JsonKey(name: 'borough')
  final String? borough;
  @JsonKey(name: 'homePosition')
  final GpsLocation? homePosition;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'status')
  final String? status;
  static const fromJsonFactory = _$VehicleBaseLocationFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleBaseLocation &&
            (identical(other.adType, adType) ||
                const DeepCollectionEquality().equals(other.adType, adType)) &&
            (identical(other.borough, borough) ||
                const DeepCollectionEquality().equals(
                  other.borough,
                  borough,
                )) &&
            (identical(other.homePosition, homePosition) ||
                const DeepCollectionEquality().equals(
                  other.homePosition,
                  homePosition,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(adType) ^
      const DeepCollectionEquality().hash(borough) ^
      const DeepCollectionEquality().hash(homePosition) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $VehicleBaseLocationExtension on VehicleBaseLocation {
  VehicleBaseLocation copyWith({
    String? adType,
    String? borough,
    GpsLocation? homePosition,
    String? id,
    String? memo,
    String? name,
    String? status,
  }) {
    return VehicleBaseLocation(
      adType: adType ?? this.adType,
      borough: borough ?? this.borough,
      homePosition: homePosition ?? this.homePosition,
      id: id ?? this.id,
      memo: memo ?? this.memo,
      name: name ?? this.name,
      status: status ?? this.status,
    );
  }

  VehicleBaseLocation copyWithWrapped({
    Wrapped<String?>? adType,
    Wrapped<String?>? borough,
    Wrapped<GpsLocation?>? homePosition,
    Wrapped<String?>? id,
    Wrapped<String?>? memo,
    Wrapped<String?>? name,
    Wrapped<String?>? status,
  }) {
    return VehicleBaseLocation(
      adType: (adType != null ? adType.value : this.adType),
      borough: (borough != null ? borough.value : this.borough),
      homePosition: (homePosition != null
          ? homePosition.value
          : this.homePosition),
      id: (id != null ? id.value : this.id),
      memo: (memo != null ? memo.value : this.memo),
      name: (name != null ? name.value : this.name),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleBaseLocationPage {
  const VehicleBaseLocationPage({this.vehicleBaseLocations});

  factory VehicleBaseLocationPage.fromJson(Map<String, dynamic> json) =>
      _$VehicleBaseLocationPageFromJson(json);

  static const toJsonFactory = _$VehicleBaseLocationPageToJson;
  Map<String, dynamic> toJson() => _$VehicleBaseLocationPageToJson(this);

  @JsonKey(name: 'vehicleBaseLocations', defaultValue: <VehicleBaseLocation>[])
  final List<VehicleBaseLocation>? vehicleBaseLocations;
  static const fromJsonFactory = _$VehicleBaseLocationPageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleBaseLocationPage &&
            (identical(other.vehicleBaseLocations, vehicleBaseLocations) ||
                const DeepCollectionEquality().equals(
                  other.vehicleBaseLocations,
                  vehicleBaseLocations,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicleBaseLocations) ^
      runtimeType.hashCode;
}

extension $VehicleBaseLocationPageExtension on VehicleBaseLocationPage {
  VehicleBaseLocationPage copyWith({
    List<VehicleBaseLocation>? vehicleBaseLocations,
  }) {
    return VehicleBaseLocationPage(
      vehicleBaseLocations: vehicleBaseLocations ?? this.vehicleBaseLocations,
    );
  }

  VehicleBaseLocationPage copyWithWrapped({
    Wrapped<List<VehicleBaseLocation>?>? vehicleBaseLocations,
  }) {
    return VehicleBaseLocationPage(
      vehicleBaseLocations: (vehicleBaseLocations != null
          ? vehicleBaseLocations.value
          : this.vehicleBaseLocations),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleBrand {
  const VehicleBrand({this.id, this.name});

  factory VehicleBrand.fromJson(Map<String, dynamic> json) =>
      _$VehicleBrandFromJson(json);

  static const toJsonFactory = _$VehicleBrandToJson;
  Map<String, dynamic> toJson() => _$VehicleBrandToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$VehicleBrandFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleBrand &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $VehicleBrandExtension on VehicleBrand {
  VehicleBrand copyWith({String? id, String? name}) {
    return VehicleBrand(id: id ?? this.id, name: name ?? this.name);
  }

  VehicleBrand copyWithWrapped({Wrapped<String?>? id, Wrapped<String?>? name}) {
    return VehicleBrand(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleLocation {
  const VehicleLocation({this.vehicleBaseLocation, this.from, this.until});

  factory VehicleLocation.fromJson(Map<String, dynamic> json) =>
      _$VehicleLocationFromJson(json);

  static const toJsonFactory = _$VehicleLocationToJson;
  Map<String, dynamic> toJson() => _$VehicleLocationToJson(this);

  @JsonKey(name: 'vehicleBaseLocation')
  final VehicleBaseLocation? vehicleBaseLocation;
  @JsonKey(name: 'from')
  final DateTime? from;
  @JsonKey(name: 'until')
  final DateTime? until;
  static const fromJsonFactory = _$VehicleLocationFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleLocation &&
            (identical(other.vehicleBaseLocation, vehicleBaseLocation) ||
                const DeepCollectionEquality().equals(
                  other.vehicleBaseLocation,
                  vehicleBaseLocation,
                )) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.until, until) ||
                const DeepCollectionEquality().equals(other.until, until)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicleBaseLocation) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(until) ^
      runtimeType.hashCode;
}

extension $VehicleLocationExtension on VehicleLocation {
  VehicleLocation copyWith({
    VehicleBaseLocation? vehicleBaseLocation,
    DateTime? from,
    DateTime? until,
  }) {
    return VehicleLocation(
      vehicleBaseLocation: vehicleBaseLocation ?? this.vehicleBaseLocation,
      from: from ?? this.from,
      until: until ?? this.until,
    );
  }

  VehicleLocation copyWithWrapped({
    Wrapped<VehicleBaseLocation?>? vehicleBaseLocation,
    Wrapped<DateTime?>? from,
    Wrapped<DateTime?>? until,
  }) {
    return VehicleLocation(
      vehicleBaseLocation: (vehicleBaseLocation != null
          ? vehicleBaseLocation.value
          : this.vehicleBaseLocation),
      from: (from != null ? from.value : this.from),
      until: (until != null ? until.value : this.until),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleBrandPage {
  const VehicleBrandPage({this.vehicleBrands});

  factory VehicleBrandPage.fromJson(Map<String, dynamic> json) =>
      _$VehicleBrandPageFromJson(json);

  static const toJsonFactory = _$VehicleBrandPageToJson;
  Map<String, dynamic> toJson() => _$VehicleBrandPageToJson(this);

  @JsonKey(name: 'vehicleBrands', defaultValue: <VehicleBrand>[])
  final List<VehicleBrand>? vehicleBrands;
  static const fromJsonFactory = _$VehicleBrandPageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleBrandPage &&
            (identical(other.vehicleBrands, vehicleBrands) ||
                const DeepCollectionEquality().equals(
                  other.vehicleBrands,
                  vehicleBrands,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicleBrands) ^ runtimeType.hashCode;
}

extension $VehicleBrandPageExtension on VehicleBrandPage {
  VehicleBrandPage copyWith({List<VehicleBrand>? vehicleBrands}) {
    return VehicleBrandPage(vehicleBrands: vehicleBrands ?? this.vehicleBrands);
  }

  VehicleBrandPage copyWithWrapped({
    Wrapped<List<VehicleBrand>?>? vehicleBrands,
  }) {
    return VehicleBrandPage(
      vehicleBrands: (vehicleBrands != null
          ? vehicleBrands.value
          : this.vehicleBrands),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleContract {
  const VehicleContract({
    this.battMaxType,
    this.battOrderNumber,
    this.clientContractId,
    this.clientId,
    this.clientName,
    this.clientRoles,
    this.costForAdditionalKmsExclVat,
    this.creditedDayPriceExclVat,
    this.creditedKmPriceExclVat,
    this.endDate,
    this.isDeliveringTrustForPrivateUse,
    this.mainUserId,
    this.maxInvoiceAmountExclVat,
    this.mileageKmAtEndOfContract,
    this.mileageKmAtStartOfContract,
    this.monthlyInsurance,
    this.monthlyLeaseAmountExclVat,
    this.monthlyPrefundElectricityExVat,
    this.numberOfMonths,
    this.paidStartupCost,
    this.startDate,
    this.vehicleDboId,
    this.vehicleId,
    this.yearlyKmsOnContract,
  });

  factory VehicleContract.fromJson(Map<String, dynamic> json) =>
      _$VehicleContractFromJson(json);

  static const toJsonFactory = _$VehicleContractToJson;
  Map<String, dynamic> toJson() => _$VehicleContractToJson(this);

  @JsonKey(
    name: 'battMaxType',
    toJson: vehicleContractBattMaxTypeNullableToJson,
    fromJson: vehicleContractBattMaxTypeNullableFromJson,
  )
  final enums.VehicleContractBattMaxType? battMaxType;
  @JsonKey(name: 'battOrderNumber')
  final String? battOrderNumber;
  @JsonKey(name: 'clientContractId')
  final int? clientContractId;
  @JsonKey(name: 'clientId')
  final int? clientId;
  @JsonKey(name: 'clientName')
  final String? clientName;
  @JsonKey(name: 'clientRoles')
  final String? clientRoles;
  @JsonKey(name: 'costForAdditionalKmsExclVat')
  final double? costForAdditionalKmsExclVat;
  @JsonKey(name: 'creditedDayPriceExclVat')
  final double? creditedDayPriceExclVat;
  @JsonKey(name: 'creditedKmPriceExclVat')
  final double? creditedKmPriceExclVat;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'isDeliveringTrustForPrivateUse')
  final bool? isDeliveringTrustForPrivateUse;
  @JsonKey(name: 'mainUserId')
  final int? mainUserId;
  @JsonKey(name: 'maxInvoiceAmountExclVat')
  final double? maxInvoiceAmountExclVat;
  @JsonKey(name: 'mileageKmAtEndOfContract')
  final int? mileageKmAtEndOfContract;
  @JsonKey(name: 'mileageKmAtStartOfContract')
  final int? mileageKmAtStartOfContract;
  @JsonKey(name: 'monthlyInsurance')
  final double? monthlyInsurance;
  @JsonKey(name: 'monthlyLeaseAmountExclVat')
  final double? monthlyLeaseAmountExclVat;
  @JsonKey(name: 'monthlyPrefundElectricityExVat')
  final double? monthlyPrefundElectricityExVat;
  @JsonKey(name: 'numberOfMonths')
  final int? numberOfMonths;
  @JsonKey(name: 'paidStartupCost')
  final double? paidStartupCost;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'vehicleDboId')
  final int? vehicleDboId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'yearlyKmsOnContract')
  final int? yearlyKmsOnContract;
  static const fromJsonFactory = _$VehicleContractFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleContract &&
            (identical(other.battMaxType, battMaxType) ||
                const DeepCollectionEquality().equals(
                  other.battMaxType,
                  battMaxType,
                )) &&
            (identical(other.battOrderNumber, battOrderNumber) ||
                const DeepCollectionEquality().equals(
                  other.battOrderNumber,
                  battOrderNumber,
                )) &&
            (identical(other.clientContractId, clientContractId) ||
                const DeepCollectionEquality().equals(
                  other.clientContractId,
                  clientContractId,
                )) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality().equals(
                  other.clientId,
                  clientId,
                )) &&
            (identical(other.clientName, clientName) ||
                const DeepCollectionEquality().equals(
                  other.clientName,
                  clientName,
                )) &&
            (identical(other.clientRoles, clientRoles) ||
                const DeepCollectionEquality().equals(
                  other.clientRoles,
                  clientRoles,
                )) &&
            (identical(
                  other.costForAdditionalKmsExclVat,
                  costForAdditionalKmsExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.costForAdditionalKmsExclVat,
                  costForAdditionalKmsExclVat,
                )) &&
            (identical(
                  other.creditedDayPriceExclVat,
                  creditedDayPriceExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.creditedDayPriceExclVat,
                  creditedDayPriceExclVat,
                )) &&
            (identical(other.creditedKmPriceExclVat, creditedKmPriceExclVat) ||
                const DeepCollectionEquality().equals(
                  other.creditedKmPriceExclVat,
                  creditedKmPriceExclVat,
                )) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(
                  other.endDate,
                  endDate,
                )) &&
            (identical(
                  other.isDeliveringTrustForPrivateUse,
                  isDeliveringTrustForPrivateUse,
                ) ||
                const DeepCollectionEquality().equals(
                  other.isDeliveringTrustForPrivateUse,
                  isDeliveringTrustForPrivateUse,
                )) &&
            (identical(other.mainUserId, mainUserId) ||
                const DeepCollectionEquality().equals(
                  other.mainUserId,
                  mainUserId,
                )) &&
            (identical(
                  other.maxInvoiceAmountExclVat,
                  maxInvoiceAmountExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.maxInvoiceAmountExclVat,
                  maxInvoiceAmountExclVat,
                )) &&
            (identical(
                  other.mileageKmAtEndOfContract,
                  mileageKmAtEndOfContract,
                ) ||
                const DeepCollectionEquality().equals(
                  other.mileageKmAtEndOfContract,
                  mileageKmAtEndOfContract,
                )) &&
            (identical(
                  other.mileageKmAtStartOfContract,
                  mileageKmAtStartOfContract,
                ) ||
                const DeepCollectionEquality().equals(
                  other.mileageKmAtStartOfContract,
                  mileageKmAtStartOfContract,
                )) &&
            (identical(other.monthlyInsurance, monthlyInsurance) ||
                const DeepCollectionEquality().equals(
                  other.monthlyInsurance,
                  monthlyInsurance,
                )) &&
            (identical(
                  other.monthlyLeaseAmountExclVat,
                  monthlyLeaseAmountExclVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.monthlyLeaseAmountExclVat,
                  monthlyLeaseAmountExclVat,
                )) &&
            (identical(
                  other.monthlyPrefundElectricityExVat,
                  monthlyPrefundElectricityExVat,
                ) ||
                const DeepCollectionEquality().equals(
                  other.monthlyPrefundElectricityExVat,
                  monthlyPrefundElectricityExVat,
                )) &&
            (identical(other.numberOfMonths, numberOfMonths) ||
                const DeepCollectionEquality().equals(
                  other.numberOfMonths,
                  numberOfMonths,
                )) &&
            (identical(other.paidStartupCost, paidStartupCost) ||
                const DeepCollectionEquality().equals(
                  other.paidStartupCost,
                  paidStartupCost,
                )) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(
                  other.startDate,
                  startDate,
                )) &&
            (identical(other.vehicleDboId, vehicleDboId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleDboId,
                  vehicleDboId,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )) &&
            (identical(other.yearlyKmsOnContract, yearlyKmsOnContract) ||
                const DeepCollectionEquality().equals(
                  other.yearlyKmsOnContract,
                  yearlyKmsOnContract,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(battMaxType) ^
      const DeepCollectionEquality().hash(battOrderNumber) ^
      const DeepCollectionEquality().hash(clientContractId) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(clientName) ^
      const DeepCollectionEquality().hash(clientRoles) ^
      const DeepCollectionEquality().hash(costForAdditionalKmsExclVat) ^
      const DeepCollectionEquality().hash(creditedDayPriceExclVat) ^
      const DeepCollectionEquality().hash(creditedKmPriceExclVat) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(isDeliveringTrustForPrivateUse) ^
      const DeepCollectionEquality().hash(mainUserId) ^
      const DeepCollectionEquality().hash(maxInvoiceAmountExclVat) ^
      const DeepCollectionEquality().hash(mileageKmAtEndOfContract) ^
      const DeepCollectionEquality().hash(mileageKmAtStartOfContract) ^
      const DeepCollectionEquality().hash(monthlyInsurance) ^
      const DeepCollectionEquality().hash(monthlyLeaseAmountExclVat) ^
      const DeepCollectionEquality().hash(monthlyPrefundElectricityExVat) ^
      const DeepCollectionEquality().hash(numberOfMonths) ^
      const DeepCollectionEquality().hash(paidStartupCost) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(vehicleDboId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(yearlyKmsOnContract) ^
      runtimeType.hashCode;
}

extension $VehicleContractExtension on VehicleContract {
  VehicleContract copyWith({
    enums.VehicleContractBattMaxType? battMaxType,
    String? battOrderNumber,
    int? clientContractId,
    int? clientId,
    String? clientName,
    String? clientRoles,
    double? costForAdditionalKmsExclVat,
    double? creditedDayPriceExclVat,
    double? creditedKmPriceExclVat,
    DateTime? endDate,
    bool? isDeliveringTrustForPrivateUse,
    int? mainUserId,
    double? maxInvoiceAmountExclVat,
    int? mileageKmAtEndOfContract,
    int? mileageKmAtStartOfContract,
    double? monthlyInsurance,
    double? monthlyLeaseAmountExclVat,
    double? monthlyPrefundElectricityExVat,
    int? numberOfMonths,
    double? paidStartupCost,
    DateTime? startDate,
    int? vehicleDboId,
    String? vehicleId,
    int? yearlyKmsOnContract,
  }) {
    return VehicleContract(
      battMaxType: battMaxType ?? this.battMaxType,
      battOrderNumber: battOrderNumber ?? this.battOrderNumber,
      clientContractId: clientContractId ?? this.clientContractId,
      clientId: clientId ?? this.clientId,
      clientName: clientName ?? this.clientName,
      clientRoles: clientRoles ?? this.clientRoles,
      costForAdditionalKmsExclVat:
          costForAdditionalKmsExclVat ?? this.costForAdditionalKmsExclVat,
      creditedDayPriceExclVat:
          creditedDayPriceExclVat ?? this.creditedDayPriceExclVat,
      creditedKmPriceExclVat:
          creditedKmPriceExclVat ?? this.creditedKmPriceExclVat,
      endDate: endDate ?? this.endDate,
      isDeliveringTrustForPrivateUse:
          isDeliveringTrustForPrivateUse ?? this.isDeliveringTrustForPrivateUse,
      mainUserId: mainUserId ?? this.mainUserId,
      maxInvoiceAmountExclVat:
          maxInvoiceAmountExclVat ?? this.maxInvoiceAmountExclVat,
      mileageKmAtEndOfContract:
          mileageKmAtEndOfContract ?? this.mileageKmAtEndOfContract,
      mileageKmAtStartOfContract:
          mileageKmAtStartOfContract ?? this.mileageKmAtStartOfContract,
      monthlyInsurance: monthlyInsurance ?? this.monthlyInsurance,
      monthlyLeaseAmountExclVat:
          monthlyLeaseAmountExclVat ?? this.monthlyLeaseAmountExclVat,
      monthlyPrefundElectricityExVat:
          monthlyPrefundElectricityExVat ?? this.monthlyPrefundElectricityExVat,
      numberOfMonths: numberOfMonths ?? this.numberOfMonths,
      paidStartupCost: paidStartupCost ?? this.paidStartupCost,
      startDate: startDate ?? this.startDate,
      vehicleDboId: vehicleDboId ?? this.vehicleDboId,
      vehicleId: vehicleId ?? this.vehicleId,
      yearlyKmsOnContract: yearlyKmsOnContract ?? this.yearlyKmsOnContract,
    );
  }

  VehicleContract copyWithWrapped({
    Wrapped<enums.VehicleContractBattMaxType?>? battMaxType,
    Wrapped<String?>? battOrderNumber,
    Wrapped<int?>? clientContractId,
    Wrapped<int?>? clientId,
    Wrapped<String?>? clientName,
    Wrapped<String?>? clientRoles,
    Wrapped<double?>? costForAdditionalKmsExclVat,
    Wrapped<double?>? creditedDayPriceExclVat,
    Wrapped<double?>? creditedKmPriceExclVat,
    Wrapped<DateTime?>? endDate,
    Wrapped<bool?>? isDeliveringTrustForPrivateUse,
    Wrapped<int?>? mainUserId,
    Wrapped<double?>? maxInvoiceAmountExclVat,
    Wrapped<int?>? mileageKmAtEndOfContract,
    Wrapped<int?>? mileageKmAtStartOfContract,
    Wrapped<double?>? monthlyInsurance,
    Wrapped<double?>? monthlyLeaseAmountExclVat,
    Wrapped<double?>? monthlyPrefundElectricityExVat,
    Wrapped<int?>? numberOfMonths,
    Wrapped<double?>? paidStartupCost,
    Wrapped<DateTime?>? startDate,
    Wrapped<int?>? vehicleDboId,
    Wrapped<String?>? vehicleId,
    Wrapped<int?>? yearlyKmsOnContract,
  }) {
    return VehicleContract(
      battMaxType: (battMaxType != null ? battMaxType.value : this.battMaxType),
      battOrderNumber: (battOrderNumber != null
          ? battOrderNumber.value
          : this.battOrderNumber),
      clientContractId: (clientContractId != null
          ? clientContractId.value
          : this.clientContractId),
      clientId: (clientId != null ? clientId.value : this.clientId),
      clientName: (clientName != null ? clientName.value : this.clientName),
      clientRoles: (clientRoles != null ? clientRoles.value : this.clientRoles),
      costForAdditionalKmsExclVat: (costForAdditionalKmsExclVat != null
          ? costForAdditionalKmsExclVat.value
          : this.costForAdditionalKmsExclVat),
      creditedDayPriceExclVat: (creditedDayPriceExclVat != null
          ? creditedDayPriceExclVat.value
          : this.creditedDayPriceExclVat),
      creditedKmPriceExclVat: (creditedKmPriceExclVat != null
          ? creditedKmPriceExclVat.value
          : this.creditedKmPriceExclVat),
      endDate: (endDate != null ? endDate.value : this.endDate),
      isDeliveringTrustForPrivateUse: (isDeliveringTrustForPrivateUse != null
          ? isDeliveringTrustForPrivateUse.value
          : this.isDeliveringTrustForPrivateUse),
      mainUserId: (mainUserId != null ? mainUserId.value : this.mainUserId),
      maxInvoiceAmountExclVat: (maxInvoiceAmountExclVat != null
          ? maxInvoiceAmountExclVat.value
          : this.maxInvoiceAmountExclVat),
      mileageKmAtEndOfContract: (mileageKmAtEndOfContract != null
          ? mileageKmAtEndOfContract.value
          : this.mileageKmAtEndOfContract),
      mileageKmAtStartOfContract: (mileageKmAtStartOfContract != null
          ? mileageKmAtStartOfContract.value
          : this.mileageKmAtStartOfContract),
      monthlyInsurance: (monthlyInsurance != null
          ? monthlyInsurance.value
          : this.monthlyInsurance),
      monthlyLeaseAmountExclVat: (monthlyLeaseAmountExclVat != null
          ? monthlyLeaseAmountExclVat.value
          : this.monthlyLeaseAmountExclVat),
      monthlyPrefundElectricityExVat: (monthlyPrefundElectricityExVat != null
          ? monthlyPrefundElectricityExVat.value
          : this.monthlyPrefundElectricityExVat),
      numberOfMonths: (numberOfMonths != null
          ? numberOfMonths.value
          : this.numberOfMonths),
      paidStartupCost: (paidStartupCost != null
          ? paidStartupCost.value
          : this.paidStartupCost),
      startDate: (startDate != null ? startDate.value : this.startDate),
      vehicleDboId: (vehicleDboId != null
          ? vehicleDboId.value
          : this.vehicleDboId),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
      yearlyKmsOnContract: (yearlyKmsOnContract != null
          ? yearlyKmsOnContract.value
          : this.yearlyKmsOnContract),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleContractResponse {
  const VehicleContractResponse({this.clientContracts});

  factory VehicleContractResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleContractResponseFromJson(json);

  static const toJsonFactory = _$VehicleContractResponseToJson;
  Map<String, dynamic> toJson() => _$VehicleContractResponseToJson(this);

  @JsonKey(name: 'clientContracts', defaultValue: <ClientContractResponse>[])
  final List<ClientContractResponse>? clientContracts;
  static const fromJsonFactory = _$VehicleContractResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleContractResponse &&
            (identical(other.clientContracts, clientContracts) ||
                const DeepCollectionEquality().equals(
                  other.clientContracts,
                  clientContracts,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(clientContracts) ^
      runtimeType.hashCode;
}

extension $VehicleContractResponseExtension on VehicleContractResponse {
  VehicleContractResponse copyWith({
    List<ClientContractResponse>? clientContracts,
  }) {
    return VehicleContractResponse(
      clientContracts: clientContracts ?? this.clientContracts,
    );
  }

  VehicleContractResponse copyWithWrapped({
    Wrapped<List<ClientContractResponse>?>? clientContracts,
  }) {
    return VehicleContractResponse(
      clientContracts: (clientContracts != null
          ? clientContracts.value
          : this.clientContracts),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleFilterCriteria {
  const VehicleFilterCriteria({
    this.bodyStyleIds,
    this.brandIds,
    this.licensePlate,
    this.minRange,
    this.modelIds,
    this.name,
  });

  factory VehicleFilterCriteria.fromJson(Map<String, dynamic> json) =>
      _$VehicleFilterCriteriaFromJson(json);

  static const toJsonFactory = _$VehicleFilterCriteriaToJson;
  Map<String, dynamic> toJson() => _$VehicleFilterCriteriaToJson(this);

  @JsonKey(name: 'bodyStyleIds', defaultValue: <String>[])
  final List<String>? bodyStyleIds;
  @JsonKey(name: 'brandIds', defaultValue: <String>[])
  final List<String>? brandIds;
  @JsonKey(name: 'licensePlate')
  final String? licensePlate;
  @JsonKey(name: 'minRange')
  final int? minRange;
  @JsonKey(name: 'modelIds', defaultValue: <String>[])
  final List<String>? modelIds;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$VehicleFilterCriteriaFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleFilterCriteria &&
            (identical(other.bodyStyleIds, bodyStyleIds) ||
                const DeepCollectionEquality().equals(
                  other.bodyStyleIds,
                  bodyStyleIds,
                )) &&
            (identical(other.brandIds, brandIds) ||
                const DeepCollectionEquality().equals(
                  other.brandIds,
                  brandIds,
                )) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality().equals(
                  other.licensePlate,
                  licensePlate,
                )) &&
            (identical(other.minRange, minRange) ||
                const DeepCollectionEquality().equals(
                  other.minRange,
                  minRange,
                )) &&
            (identical(other.modelIds, modelIds) ||
                const DeepCollectionEquality().equals(
                  other.modelIds,
                  modelIds,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bodyStyleIds) ^
      const DeepCollectionEquality().hash(brandIds) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(minRange) ^
      const DeepCollectionEquality().hash(modelIds) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $VehicleFilterCriteriaExtension on VehicleFilterCriteria {
  VehicleFilterCriteria copyWith({
    List<String>? bodyStyleIds,
    List<String>? brandIds,
    String? licensePlate,
    int? minRange,
    List<String>? modelIds,
    String? name,
  }) {
    return VehicleFilterCriteria(
      bodyStyleIds: bodyStyleIds ?? this.bodyStyleIds,
      brandIds: brandIds ?? this.brandIds,
      licensePlate: licensePlate ?? this.licensePlate,
      minRange: minRange ?? this.minRange,
      modelIds: modelIds ?? this.modelIds,
      name: name ?? this.name,
    );
  }

  VehicleFilterCriteria copyWithWrapped({
    Wrapped<List<String>?>? bodyStyleIds,
    Wrapped<List<String>?>? brandIds,
    Wrapped<String?>? licensePlate,
    Wrapped<int?>? minRange,
    Wrapped<List<String>?>? modelIds,
    Wrapped<String?>? name,
  }) {
    return VehicleFilterCriteria(
      bodyStyleIds: (bodyStyleIds != null
          ? bodyStyleIds.value
          : this.bodyStyleIds),
      brandIds: (brandIds != null ? brandIds.value : this.brandIds),
      licensePlate: (licensePlate != null
          ? licensePlate.value
          : this.licensePlate),
      minRange: (minRange != null ? minRange.value : this.minRange),
      modelIds: (modelIds != null ? modelIds.value : this.modelIds),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleFilterEnums {
  const VehicleFilterEnums({this.bodyStyles, this.brands, this.models});

  factory VehicleFilterEnums.fromJson(Map<String, dynamic> json) =>
      _$VehicleFilterEnumsFromJson(json);

  static const toJsonFactory = _$VehicleFilterEnumsToJson;
  Map<String, dynamic> toJson() => _$VehicleFilterEnumsToJson(this);

  @JsonKey(name: 'bodyStyles', defaultValue: <BodyStyle>[])
  final List<BodyStyle>? bodyStyles;
  @JsonKey(name: 'brands', defaultValue: <VehicleBrand>[])
  final List<VehicleBrand>? brands;
  @JsonKey(name: 'models', defaultValue: <VehicleModel>[])
  final List<VehicleModel>? models;
  static const fromJsonFactory = _$VehicleFilterEnumsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleFilterEnums &&
            (identical(other.bodyStyles, bodyStyles) ||
                const DeepCollectionEquality().equals(
                  other.bodyStyles,
                  bodyStyles,
                )) &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)) &&
            (identical(other.models, models) ||
                const DeepCollectionEquality().equals(other.models, models)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bodyStyles) ^
      const DeepCollectionEquality().hash(brands) ^
      const DeepCollectionEquality().hash(models) ^
      runtimeType.hashCode;
}

extension $VehicleFilterEnumsExtension on VehicleFilterEnums {
  VehicleFilterEnums copyWith({
    List<BodyStyle>? bodyStyles,
    List<VehicleBrand>? brands,
    List<VehicleModel>? models,
  }) {
    return VehicleFilterEnums(
      bodyStyles: bodyStyles ?? this.bodyStyles,
      brands: brands ?? this.brands,
      models: models ?? this.models,
    );
  }

  VehicleFilterEnums copyWithWrapped({
    Wrapped<List<BodyStyle>?>? bodyStyles,
    Wrapped<List<VehicleBrand>?>? brands,
    Wrapped<List<VehicleModel>?>? models,
  }) {
    return VehicleFilterEnums(
      bodyStyles: (bodyStyles != null ? bodyStyles.value : this.bodyStyles),
      brands: (brands != null ? brands.value : this.brands),
      models: (models != null ? models.value : this.models),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleGroup {
  const VehicleGroup({this.id, this.name, this.vehicles});

  factory VehicleGroup.fromJson(Map<String, dynamic> json) =>
      _$VehicleGroupFromJson(json);

  static const toJsonFactory = _$VehicleGroupToJson;
  Map<String, dynamic> toJson() => _$VehicleGroupToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? vehicles;
  static const fromJsonFactory = _$VehicleGroupFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleGroup &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality().equals(
                  other.vehicles,
                  vehicles,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $VehicleGroupExtension on VehicleGroup {
  VehicleGroup copyWith({String? id, String? name, List<Vehicle>? vehicles}) {
    return VehicleGroup(
      id: id ?? this.id,
      name: name ?? this.name,
      vehicles: vehicles ?? this.vehicles,
    );
  }

  VehicleGroup copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<String?>? name,
    Wrapped<List<Vehicle>?>? vehicles,
  }) {
    return VehicleGroup(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      vehicles: (vehicles != null ? vehicles.value : this.vehicles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleGroupPage {
  const VehicleGroupPage({this.vehicleGroups});

  factory VehicleGroupPage.fromJson(Map<String, dynamic> json) =>
      _$VehicleGroupPageFromJson(json);

  static const toJsonFactory = _$VehicleGroupPageToJson;
  Map<String, dynamic> toJson() => _$VehicleGroupPageToJson(this);

  @JsonKey(name: 'vehicleGroups', defaultValue: <VehicleGroup>[])
  final List<VehicleGroup>? vehicleGroups;
  static const fromJsonFactory = _$VehicleGroupPageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleGroupPage &&
            (identical(other.vehicleGroups, vehicleGroups) ||
                const DeepCollectionEquality().equals(
                  other.vehicleGroups,
                  vehicleGroups,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicleGroups) ^ runtimeType.hashCode;
}

extension $VehicleGroupPageExtension on VehicleGroupPage {
  VehicleGroupPage copyWith({List<VehicleGroup>? vehicleGroups}) {
    return VehicleGroupPage(vehicleGroups: vehicleGroups ?? this.vehicleGroups);
  }

  VehicleGroupPage copyWithWrapped({
    Wrapped<List<VehicleGroup>?>? vehicleGroups,
  }) {
    return VehicleGroupPage(
      vehicleGroups: (vehicleGroups != null
          ? vehicleGroups.value
          : this.vehicleGroups),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleLockStatus {
  const VehicleLockStatus({this.centralLockStatus, this.immobilizerStatus});

  factory VehicleLockStatus.fromJson(Map<String, dynamic> json) =>
      _$VehicleLockStatusFromJson(json);

  static const toJsonFactory = _$VehicleLockStatusToJson;
  Map<String, dynamic> toJson() => _$VehicleLockStatusToJson(this);

  @JsonKey(
    name: 'centralLockStatus',
    toJson: vehicleLockStatusCentralLockStatusNullableToJson,
    fromJson: vehicleLockStatusCentralLockStatusNullableFromJson,
  )
  final enums.VehicleLockStatusCentralLockStatus? centralLockStatus;
  @JsonKey(
    name: 'immobilizerStatus',
    toJson: vehicleLockStatusImmobilizerStatusNullableToJson,
    fromJson: vehicleLockStatusImmobilizerStatusNullableFromJson,
  )
  final enums.VehicleLockStatusImmobilizerStatus? immobilizerStatus;
  static const fromJsonFactory = _$VehicleLockStatusFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleLockStatus &&
            (identical(other.centralLockStatus, centralLockStatus) ||
                const DeepCollectionEquality().equals(
                  other.centralLockStatus,
                  centralLockStatus,
                )) &&
            (identical(other.immobilizerStatus, immobilizerStatus) ||
                const DeepCollectionEquality().equals(
                  other.immobilizerStatus,
                  immobilizerStatus,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(centralLockStatus) ^
      const DeepCollectionEquality().hash(immobilizerStatus) ^
      runtimeType.hashCode;
}

extension $VehicleLockStatusExtension on VehicleLockStatus {
  VehicleLockStatus copyWith({
    enums.VehicleLockStatusCentralLockStatus? centralLockStatus,
    enums.VehicleLockStatusImmobilizerStatus? immobilizerStatus,
  }) {
    return VehicleLockStatus(
      centralLockStatus: centralLockStatus ?? this.centralLockStatus,
      immobilizerStatus: immobilizerStatus ?? this.immobilizerStatus,
    );
  }

  VehicleLockStatus copyWithWrapped({
    Wrapped<enums.VehicleLockStatusCentralLockStatus?>? centralLockStatus,
    Wrapped<enums.VehicleLockStatusImmobilizerStatus?>? immobilizerStatus,
  }) {
    return VehicleLockStatus(
      centralLockStatus: (centralLockStatus != null
          ? centralLockStatus.value
          : this.centralLockStatus),
      immobilizerStatus: (immobilizerStatus != null
          ? immobilizerStatus.value
          : this.immobilizerStatus),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleModel {
  const VehicleModel({this.bodyStyle, this.brandId, this.id, this.name});

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);

  static const toJsonFactory = _$VehicleModelToJson;
  Map<String, dynamic> toJson() => _$VehicleModelToJson(this);

  @JsonKey(name: 'bodyStyle')
  final BodyStyle? bodyStyle;
  @JsonKey(name: 'brandId')
  final String? brandId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$VehicleModelFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleModel &&
            (identical(other.bodyStyle, bodyStyle) ||
                const DeepCollectionEquality().equals(
                  other.bodyStyle,
                  bodyStyle,
                )) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality().equals(
                  other.brandId,
                  brandId,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bodyStyle) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $VehicleModelExtension on VehicleModel {
  VehicleModel copyWith({
    BodyStyle? bodyStyle,
    String? brandId,
    String? id,
    String? name,
  }) {
    return VehicleModel(
      bodyStyle: bodyStyle ?? this.bodyStyle,
      brandId: brandId ?? this.brandId,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  VehicleModel copyWithWrapped({
    Wrapped<BodyStyle?>? bodyStyle,
    Wrapped<String?>? brandId,
    Wrapped<String?>? id,
    Wrapped<String?>? name,
  }) {
    return VehicleModel(
      bodyStyle: (bodyStyle != null ? bodyStyle.value : this.bodyStyle),
      brandId: (brandId != null ? brandId.value : this.brandId),
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleModelPage {
  const VehicleModelPage({this.vehicleModels});

  factory VehicleModelPage.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelPageFromJson(json);

  static const toJsonFactory = _$VehicleModelPageToJson;
  Map<String, dynamic> toJson() => _$VehicleModelPageToJson(this);

  @JsonKey(name: 'vehicleModels', defaultValue: <VehicleModel>[])
  final List<VehicleModel>? vehicleModels;
  static const fromJsonFactory = _$VehicleModelPageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleModelPage &&
            (identical(other.vehicleModels, vehicleModels) ||
                const DeepCollectionEquality().equals(
                  other.vehicleModels,
                  vehicleModels,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicleModels) ^ runtimeType.hashCode;
}

extension $VehicleModelPageExtension on VehicleModelPage {
  VehicleModelPage copyWith({List<VehicleModel>? vehicleModels}) {
    return VehicleModelPage(vehicleModels: vehicleModels ?? this.vehicleModels);
  }

  VehicleModelPage copyWithWrapped({
    Wrapped<List<VehicleModel>?>? vehicleModels,
  }) {
    return VehicleModelPage(
      vehicleModels: (vehicleModels != null
          ? vehicleModels.value
          : this.vehicleModels),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleModelRate {
  const VehicleModelRate({
    required this.dateCreated,
    required this.dayPrice,
    required this.hourPrice,
    required this.id,
    required this.kmPrice,
    required this.lastUpdated,
    required this.validFrom,
    this.validUntil,
    required this.vehicleModelId,
  });

  factory VehicleModelRate.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelRateFromJson(json);

  static const toJsonFactory = _$VehicleModelRateToJson;
  Map<String, dynamic> toJson() => _$VehicleModelRateToJson(this);

  @JsonKey(name: 'dateCreated')
  final DateTime dateCreated;
  @JsonKey(name: 'dayPrice')
  final double dayPrice;
  @JsonKey(name: 'hourPrice')
  final double hourPrice;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'kmPrice')
  final double kmPrice;
  @JsonKey(name: 'lastUpdated')
  final DateTime lastUpdated;
  @JsonKey(name: 'validFrom')
  final DateTime validFrom;
  @JsonKey(name: 'validUntil')
  final DateTime? validUntil;
  @JsonKey(name: 'vehicleModelId')
  final String vehicleModelId;
  static const fromJsonFactory = _$VehicleModelRateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleModelRate &&
            (identical(other.dateCreated, dateCreated) ||
                const DeepCollectionEquality().equals(
                  other.dateCreated,
                  dateCreated,
                )) &&
            (identical(other.dayPrice, dayPrice) ||
                const DeepCollectionEquality().equals(
                  other.dayPrice,
                  dayPrice,
                )) &&
            (identical(other.hourPrice, hourPrice) ||
                const DeepCollectionEquality().equals(
                  other.hourPrice,
                  hourPrice,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.kmPrice, kmPrice) ||
                const DeepCollectionEquality().equals(
                  other.kmPrice,
                  kmPrice,
                )) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdated,
                  lastUpdated,
                )) &&
            (identical(other.validFrom, validFrom) ||
                const DeepCollectionEquality().equals(
                  other.validFrom,
                  validFrom,
                )) &&
            (identical(other.validUntil, validUntil) ||
                const DeepCollectionEquality().equals(
                  other.validUntil,
                  validUntil,
                )) &&
            (identical(other.vehicleModelId, vehicleModelId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleModelId,
                  vehicleModelId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dateCreated) ^
      const DeepCollectionEquality().hash(dayPrice) ^
      const DeepCollectionEquality().hash(hourPrice) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(kmPrice) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash(validFrom) ^
      const DeepCollectionEquality().hash(validUntil) ^
      const DeepCollectionEquality().hash(vehicleModelId) ^
      runtimeType.hashCode;
}

extension $VehicleModelRateExtension on VehicleModelRate {
  VehicleModelRate copyWith({
    DateTime? dateCreated,
    double? dayPrice,
    double? hourPrice,
    String? id,
    double? kmPrice,
    DateTime? lastUpdated,
    DateTime? validFrom,
    DateTime? validUntil,
    String? vehicleModelId,
  }) {
    return VehicleModelRate(
      dateCreated: dateCreated ?? this.dateCreated,
      dayPrice: dayPrice ?? this.dayPrice,
      hourPrice: hourPrice ?? this.hourPrice,
      id: id ?? this.id,
      kmPrice: kmPrice ?? this.kmPrice,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      validFrom: validFrom ?? this.validFrom,
      validUntil: validUntil ?? this.validUntil,
      vehicleModelId: vehicleModelId ?? this.vehicleModelId,
    );
  }

  VehicleModelRate copyWithWrapped({
    Wrapped<DateTime>? dateCreated,
    Wrapped<double>? dayPrice,
    Wrapped<double>? hourPrice,
    Wrapped<String>? id,
    Wrapped<double>? kmPrice,
    Wrapped<DateTime>? lastUpdated,
    Wrapped<DateTime>? validFrom,
    Wrapped<DateTime?>? validUntil,
    Wrapped<String>? vehicleModelId,
  }) {
    return VehicleModelRate(
      dateCreated: (dateCreated != null ? dateCreated.value : this.dateCreated),
      dayPrice: (dayPrice != null ? dayPrice.value : this.dayPrice),
      hourPrice: (hourPrice != null ? hourPrice.value : this.hourPrice),
      id: (id != null ? id.value : this.id),
      kmPrice: (kmPrice != null ? kmPrice.value : this.kmPrice),
      lastUpdated: (lastUpdated != null ? lastUpdated.value : this.lastUpdated),
      validFrom: (validFrom != null ? validFrom.value : this.validFrom),
      validUntil: (validUntil != null ? validUntil.value : this.validUntil),
      vehicleModelId: (vehicleModelId != null
          ? vehicleModelId.value
          : this.vehicleModelId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleRate {
  const VehicleRate({
    required this.dateCreated,
    this.dayPrice,
    this.discountPercent,
    this.hourPrice,
    required this.id,
    this.kmPrice,
    required this.lastUpdated,
    required this.validFrom,
    this.validUntil,
    required this.vehicleId,
  });

  factory VehicleRate.fromJson(Map<String, dynamic> json) =>
      _$VehicleRateFromJson(json);

  static const toJsonFactory = _$VehicleRateToJson;
  Map<String, dynamic> toJson() => _$VehicleRateToJson(this);

  @JsonKey(name: 'dateCreated')
  final DateTime dateCreated;
  @JsonKey(name: 'dayPrice')
  final double? dayPrice;
  @JsonKey(name: 'discountPercent')
  final double? discountPercent;
  @JsonKey(name: 'hourPrice')
  final double? hourPrice;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'kmPrice')
  final double? kmPrice;
  @JsonKey(name: 'lastUpdated')
  final DateTime lastUpdated;
  @JsonKey(name: 'validFrom')
  final DateTime validFrom;
  @JsonKey(name: 'validUntil')
  final DateTime? validUntil;
  @JsonKey(name: 'vehicleId')
  final String vehicleId;
  static const fromJsonFactory = _$VehicleRateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleRate &&
            (identical(other.dateCreated, dateCreated) ||
                const DeepCollectionEquality().equals(
                  other.dateCreated,
                  dateCreated,
                )) &&
            (identical(other.dayPrice, dayPrice) ||
                const DeepCollectionEquality().equals(
                  other.dayPrice,
                  dayPrice,
                )) &&
            (identical(other.discountPercent, discountPercent) ||
                const DeepCollectionEquality().equals(
                  other.discountPercent,
                  discountPercent,
                )) &&
            (identical(other.hourPrice, hourPrice) ||
                const DeepCollectionEquality().equals(
                  other.hourPrice,
                  hourPrice,
                )) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.kmPrice, kmPrice) ||
                const DeepCollectionEquality().equals(
                  other.kmPrice,
                  kmPrice,
                )) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality().equals(
                  other.lastUpdated,
                  lastUpdated,
                )) &&
            (identical(other.validFrom, validFrom) ||
                const DeepCollectionEquality().equals(
                  other.validFrom,
                  validFrom,
                )) &&
            (identical(other.validUntil, validUntil) ||
                const DeepCollectionEquality().equals(
                  other.validUntil,
                  validUntil,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dateCreated) ^
      const DeepCollectionEquality().hash(dayPrice) ^
      const DeepCollectionEquality().hash(discountPercent) ^
      const DeepCollectionEquality().hash(hourPrice) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(kmPrice) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash(validFrom) ^
      const DeepCollectionEquality().hash(validUntil) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $VehicleRateExtension on VehicleRate {
  VehicleRate copyWith({
    DateTime? dateCreated,
    double? dayPrice,
    double? discountPercent,
    double? hourPrice,
    String? id,
    double? kmPrice,
    DateTime? lastUpdated,
    DateTime? validFrom,
    DateTime? validUntil,
    String? vehicleId,
  }) {
    return VehicleRate(
      dateCreated: dateCreated ?? this.dateCreated,
      dayPrice: dayPrice ?? this.dayPrice,
      discountPercent: discountPercent ?? this.discountPercent,
      hourPrice: hourPrice ?? this.hourPrice,
      id: id ?? this.id,
      kmPrice: kmPrice ?? this.kmPrice,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      validFrom: validFrom ?? this.validFrom,
      validUntil: validUntil ?? this.validUntil,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  VehicleRate copyWithWrapped({
    Wrapped<DateTime>? dateCreated,
    Wrapped<double?>? dayPrice,
    Wrapped<double?>? discountPercent,
    Wrapped<double?>? hourPrice,
    Wrapped<String>? id,
    Wrapped<double?>? kmPrice,
    Wrapped<DateTime>? lastUpdated,
    Wrapped<DateTime>? validFrom,
    Wrapped<DateTime?>? validUntil,
    Wrapped<String>? vehicleId,
  }) {
    return VehicleRate(
      dateCreated: (dateCreated != null ? dateCreated.value : this.dateCreated),
      dayPrice: (dayPrice != null ? dayPrice.value : this.dayPrice),
      discountPercent: (discountPercent != null
          ? discountPercent.value
          : this.discountPercent),
      hourPrice: (hourPrice != null ? hourPrice.value : this.hourPrice),
      id: (id != null ? id.value : this.id),
      kmPrice: (kmPrice != null ? kmPrice.value : this.kmPrice),
      lastUpdated: (lastUpdated != null ? lastUpdated.value : this.lastUpdated),
      validFrom: (validFrom != null ? validFrom.value : this.validFrom),
      validUntil: (validUntil != null ? validUntil.value : this.validUntil),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleUsage {
  const VehicleUsage({
    this.id,
    this.mileageDelta,
    this.mileageEndValue,
    this.mileageStartValue,
    this.period,
    this.status,
    this.statusMessage,
    this.vehicleId,
  });

  factory VehicleUsage.fromJson(Map<String, dynamic> json) =>
      _$VehicleUsageFromJson(json);

  static const toJsonFactory = _$VehicleUsageToJson;
  Map<String, dynamic> toJson() => _$VehicleUsageToJson(this);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'mileageDelta')
  final double? mileageDelta;
  @JsonKey(name: 'mileageEndValue')
  final double? mileageEndValue;
  @JsonKey(name: 'mileageStartValue')
  final double? mileageStartValue;
  @JsonKey(name: 'period')
  final Period? period;
  @JsonKey(
    name: 'status',
    toJson: vehicleUsageStatusNullableToJson,
    fromJson: vehicleUsageStatusNullableFromJson,
  )
  final enums.VehicleUsageStatus? status;
  @JsonKey(name: 'statusMessage')
  final String? statusMessage;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$VehicleUsageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleUsage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mileageDelta, mileageDelta) ||
                const DeepCollectionEquality().equals(
                  other.mileageDelta,
                  mileageDelta,
                )) &&
            (identical(other.mileageEndValue, mileageEndValue) ||
                const DeepCollectionEquality().equals(
                  other.mileageEndValue,
                  mileageEndValue,
                )) &&
            (identical(other.mileageStartValue, mileageStartValue) ||
                const DeepCollectionEquality().equals(
                  other.mileageStartValue,
                  mileageStartValue,
                )) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.statusMessage, statusMessage) ||
                const DeepCollectionEquality().equals(
                  other.statusMessage,
                  statusMessage,
                )) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality().equals(
                  other.vehicleId,
                  vehicleId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mileageDelta) ^
      const DeepCollectionEquality().hash(mileageEndValue) ^
      const DeepCollectionEquality().hash(mileageStartValue) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(statusMessage) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $VehicleUsageExtension on VehicleUsage {
  VehicleUsage copyWith({
    String? id,
    double? mileageDelta,
    double? mileageEndValue,
    double? mileageStartValue,
    Period? period,
    enums.VehicleUsageStatus? status,
    String? statusMessage,
    String? vehicleId,
  }) {
    return VehicleUsage(
      id: id ?? this.id,
      mileageDelta: mileageDelta ?? this.mileageDelta,
      mileageEndValue: mileageEndValue ?? this.mileageEndValue,
      mileageStartValue: mileageStartValue ?? this.mileageStartValue,
      period: period ?? this.period,
      status: status ?? this.status,
      statusMessage: statusMessage ?? this.statusMessage,
      vehicleId: vehicleId ?? this.vehicleId,
    );
  }

  VehicleUsage copyWithWrapped({
    Wrapped<String?>? id,
    Wrapped<double?>? mileageDelta,
    Wrapped<double?>? mileageEndValue,
    Wrapped<double?>? mileageStartValue,
    Wrapped<Period?>? period,
    Wrapped<enums.VehicleUsageStatus?>? status,
    Wrapped<String?>? statusMessage,
    Wrapped<String?>? vehicleId,
  }) {
    return VehicleUsage(
      id: (id != null ? id.value : this.id),
      mileageDelta: (mileageDelta != null
          ? mileageDelta.value
          : this.mileageDelta),
      mileageEndValue: (mileageEndValue != null
          ? mileageEndValue.value
          : this.mileageEndValue),
      mileageStartValue: (mileageStartValue != null
          ? mileageStartValue.value
          : this.mileageStartValue),
      period: (period != null ? period.value : this.period),
      status: (status != null ? status.value : this.status),
      statusMessage: (statusMessage != null
          ? statusMessage.value
          : this.statusMessage),
      vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleUsagePage {
  const VehicleUsagePage({this.vehicleUsages});

  factory VehicleUsagePage.fromJson(Map<String, dynamic> json) =>
      _$VehicleUsagePageFromJson(json);

  static const toJsonFactory = _$VehicleUsagePageToJson;
  Map<String, dynamic> toJson() => _$VehicleUsagePageToJson(this);

  @JsonKey(name: 'vehicleUsages', defaultValue: <VehicleUsage>[])
  final List<VehicleUsage>? vehicleUsages;
  static const fromJsonFactory = _$VehicleUsagePageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleUsagePage &&
            (identical(other.vehicleUsages, vehicleUsages) ||
                const DeepCollectionEquality().equals(
                  other.vehicleUsages,
                  vehicleUsages,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicleUsages) ^ runtimeType.hashCode;
}

extension $VehicleUsagePageExtension on VehicleUsagePage {
  VehicleUsagePage copyWith({List<VehicleUsage>? vehicleUsages}) {
    return VehicleUsagePage(vehicleUsages: vehicleUsages ?? this.vehicleUsages);
  }

  VehicleUsagePage copyWithWrapped({
    Wrapped<List<VehicleUsage>?>? vehicleUsages,
  }) {
    return VehicleUsagePage(
      vehicleUsages: (vehicleUsages != null
          ? vehicleUsages.value
          : this.vehicleUsages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleUsageUpdateStatusRequest {
  const VehicleUsageUpdateStatusRequest({
    this.mileage,
    required this.status,
    this.statusMessage,
  });

  factory VehicleUsageUpdateStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$VehicleUsageUpdateStatusRequestFromJson(json);

  static const toJsonFactory = _$VehicleUsageUpdateStatusRequestToJson;
  Map<String, dynamic> toJson() =>
      _$VehicleUsageUpdateStatusRequestToJson(this);

  @JsonKey(name: 'mileage')
  final double? mileage;
  @JsonKey(
    name: 'status',
    toJson: vehicleUsageUpdateStatusRequestStatusToJson,
    fromJson: vehicleUsageUpdateStatusRequestStatusFromJson,
  )
  final enums.VehicleUsageUpdateStatusRequestStatus status;
  @JsonKey(name: 'statusMessage')
  final String? statusMessage;
  static const fromJsonFactory = _$VehicleUsageUpdateStatusRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehicleUsageUpdateStatusRequest &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality().equals(
                  other.mileage,
                  mileage,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.statusMessage, statusMessage) ||
                const DeepCollectionEquality().equals(
                  other.statusMessage,
                  statusMessage,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(statusMessage) ^
      runtimeType.hashCode;
}

extension $VehicleUsageUpdateStatusRequestExtension
    on VehicleUsageUpdateStatusRequest {
  VehicleUsageUpdateStatusRequest copyWith({
    double? mileage,
    enums.VehicleUsageUpdateStatusRequestStatus? status,
    String? statusMessage,
  }) {
    return VehicleUsageUpdateStatusRequest(
      mileage: mileage ?? this.mileage,
      status: status ?? this.status,
      statusMessage: statusMessage ?? this.statusMessage,
    );
  }

  VehicleUsageUpdateStatusRequest copyWithWrapped({
    Wrapped<double?>? mileage,
    Wrapped<enums.VehicleUsageUpdateStatusRequestStatus>? status,
    Wrapped<String?>? statusMessage,
  }) {
    return VehicleUsageUpdateStatusRequest(
      mileage: (mileage != null ? mileage.value : this.mileage),
      status: (status != null ? status.value : this.status),
      statusMessage: (statusMessage != null
          ? statusMessage.value
          : this.statusMessage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehiclesAndGroupsResponse {
  const VehiclesAndGroupsResponse({
    this.adminVehicleIds,
    this.groups,
    this.ownerVehicleIds,
  });

  factory VehiclesAndGroupsResponse.fromJson(Map<String, dynamic> json) =>
      _$VehiclesAndGroupsResponseFromJson(json);

  static const toJsonFactory = _$VehiclesAndGroupsResponseToJson;
  Map<String, dynamic> toJson() => _$VehiclesAndGroupsResponseToJson(this);

  @JsonKey(name: 'adminVehicleIds', defaultValue: <String>[])
  final List<String>? adminVehicleIds;
  @JsonKey(name: 'groups', defaultValue: <String>[])
  final List<String>? groups;
  @JsonKey(name: 'ownerVehicleIds', defaultValue: <String>[])
  final List<String>? ownerVehicleIds;
  static const fromJsonFactory = _$VehiclesAndGroupsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehiclesAndGroupsResponse &&
            (identical(other.adminVehicleIds, adminVehicleIds) ||
                const DeepCollectionEquality().equals(
                  other.adminVehicleIds,
                  adminVehicleIds,
                )) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.ownerVehicleIds, ownerVehicleIds) ||
                const DeepCollectionEquality().equals(
                  other.ownerVehicleIds,
                  ownerVehicleIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(adminVehicleIds) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(ownerVehicleIds) ^
      runtimeType.hashCode;
}

extension $VehiclesAndGroupsResponseExtension on VehiclesAndGroupsResponse {
  VehiclesAndGroupsResponse copyWith({
    List<String>? adminVehicleIds,
    List<String>? groups,
    List<String>? ownerVehicleIds,
  }) {
    return VehiclesAndGroupsResponse(
      adminVehicleIds: adminVehicleIds ?? this.adminVehicleIds,
      groups: groups ?? this.groups,
      ownerVehicleIds: ownerVehicleIds ?? this.ownerVehicleIds,
    );
  }

  VehiclesAndGroupsResponse copyWithWrapped({
    Wrapped<List<String>?>? adminVehicleIds,
    Wrapped<List<String>?>? groups,
    Wrapped<List<String>?>? ownerVehicleIds,
  }) {
    return VehiclesAndGroupsResponse(
      adminVehicleIds: (adminVehicleIds != null
          ? adminVehicleIds.value
          : this.adminVehicleIds),
      groups: (groups != null ? groups.value : this.groups),
      ownerVehicleIds: (ownerVehicleIds != null
          ? ownerVehicleIds.value
          : this.ownerVehicleIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class VehiclesPage {
  const VehiclesPage({this.vehicles});

  factory VehiclesPage.fromJson(Map<String, dynamic> json) =>
      _$VehiclesPageFromJson(json);

  static const toJsonFactory = _$VehiclesPageToJson;
  Map<String, dynamic> toJson() => _$VehiclesPageToJson(this);

  @JsonKey(name: 'vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? vehicles;
  static const fromJsonFactory = _$VehiclesPageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is VehiclesPage &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality().equals(
                  other.vehicles,
                  vehicles,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicles) ^ runtimeType.hashCode;
}

extension $VehiclesPageExtension on VehiclesPage {
  VehiclesPage copyWith({List<Vehicle>? vehicles}) {
    return VehiclesPage(vehicles: vehicles ?? this.vehicles);
  }

  VehiclesPage copyWithWrapped({Wrapped<List<Vehicle>?>? vehicles}) {
    return VehiclesPage(
      vehicles: (vehicles != null ? vehicles.value : this.vehicles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserV1UsersOnboardingDocumentsPut$RequestBody {
  const UserV1UsersOnboardingDocumentsPut$RequestBody({
    this.backDriverLicense,
    this.backId,
    this.damageStatistic,
    this.frontDriverLicense,
    this.frontId,
    this.selfie,
  });

  factory UserV1UsersOnboardingDocumentsPut$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$UserV1UsersOnboardingDocumentsPut$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$UserV1UsersOnboardingDocumentsPut$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$UserV1UsersOnboardingDocumentsPut$RequestBodyToJson(this);

  @JsonKey(name: 'backDriverLicense')
  final String? backDriverLicense;
  @JsonKey(name: 'backId')
  final String? backId;
  @JsonKey(name: 'damageStatistic')
  final String? damageStatistic;
  @JsonKey(name: 'frontDriverLicense')
  final String? frontDriverLicense;
  @JsonKey(name: 'frontId')
  final String? frontId;
  @JsonKey(name: 'selfie')
  final String? selfie;
  static const fromJsonFactory =
      _$UserV1UsersOnboardingDocumentsPut$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserV1UsersOnboardingDocumentsPut$RequestBody &&
            (identical(other.backDriverLicense, backDriverLicense) ||
                const DeepCollectionEquality().equals(
                  other.backDriverLicense,
                  backDriverLicense,
                )) &&
            (identical(other.backId, backId) ||
                const DeepCollectionEquality().equals(other.backId, backId)) &&
            (identical(other.damageStatistic, damageStatistic) ||
                const DeepCollectionEquality().equals(
                  other.damageStatistic,
                  damageStatistic,
                )) &&
            (identical(other.frontDriverLicense, frontDriverLicense) ||
                const DeepCollectionEquality().equals(
                  other.frontDriverLicense,
                  frontDriverLicense,
                )) &&
            (identical(other.frontId, frontId) ||
                const DeepCollectionEquality().equals(
                  other.frontId,
                  frontId,
                )) &&
            (identical(other.selfie, selfie) ||
                const DeepCollectionEquality().equals(other.selfie, selfie)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(backDriverLicense) ^
      const DeepCollectionEquality().hash(backId) ^
      const DeepCollectionEquality().hash(damageStatistic) ^
      const DeepCollectionEquality().hash(frontDriverLicense) ^
      const DeepCollectionEquality().hash(frontId) ^
      const DeepCollectionEquality().hash(selfie) ^
      runtimeType.hashCode;
}

extension $UserV1UsersOnboardingDocumentsPut$RequestBodyExtension
    on UserV1UsersOnboardingDocumentsPut$RequestBody {
  UserV1UsersOnboardingDocumentsPut$RequestBody copyWith({
    String? backDriverLicense,
    String? backId,
    String? damageStatistic,
    String? frontDriverLicense,
    String? frontId,
    String? selfie,
  }) {
    return UserV1UsersOnboardingDocumentsPut$RequestBody(
      backDriverLicense: backDriverLicense ?? this.backDriverLicense,
      backId: backId ?? this.backId,
      damageStatistic: damageStatistic ?? this.damageStatistic,
      frontDriverLicense: frontDriverLicense ?? this.frontDriverLicense,
      frontId: frontId ?? this.frontId,
      selfie: selfie ?? this.selfie,
    );
  }

  UserV1UsersOnboardingDocumentsPut$RequestBody copyWithWrapped({
    Wrapped<String?>? backDriverLicense,
    Wrapped<String?>? backId,
    Wrapped<String?>? damageStatistic,
    Wrapped<String?>? frontDriverLicense,
    Wrapped<String?>? frontId,
    Wrapped<String?>? selfie,
  }) {
    return UserV1UsersOnboardingDocumentsPut$RequestBody(
      backDriverLicense: (backDriverLicense != null
          ? backDriverLicense.value
          : this.backDriverLicense),
      backId: (backId != null ? backId.value : this.backId),
      damageStatistic: (damageStatistic != null
          ? damageStatistic.value
          : this.damageStatistic),
      frontDriverLicense: (frontDriverLicense != null
          ? frontDriverLicense.value
          : this.frontDriverLicense),
      frontId: (frontId != null ? frontId.value : this.frontId),
      selfie: (selfie != null ? selfie.value : this.selfie),
    );
  }
}

String? adjacentNonAvailabilityTypeNullableToJson(
  enums.AdjacentNonAvailabilityType? adjacentNonAvailabilityType,
) {
  return adjacentNonAvailabilityType?.value;
}

String? adjacentNonAvailabilityTypeToJson(
  enums.AdjacentNonAvailabilityType adjacentNonAvailabilityType,
) {
  return adjacentNonAvailabilityType.value;
}

enums.AdjacentNonAvailabilityType adjacentNonAvailabilityTypeFromJson(
  Object? adjacentNonAvailabilityType, [
  enums.AdjacentNonAvailabilityType? defaultValue,
]) {
  return enums.AdjacentNonAvailabilityType.values.firstWhereOrNull(
        (e) => e.value == adjacentNonAvailabilityType,
      ) ??
      defaultValue ??
      enums.AdjacentNonAvailabilityType.swaggerGeneratedUnknown;
}

enums.AdjacentNonAvailabilityType? adjacentNonAvailabilityTypeNullableFromJson(
  Object? adjacentNonAvailabilityType, [
  enums.AdjacentNonAvailabilityType? defaultValue,
]) {
  if (adjacentNonAvailabilityType == null) {
    return null;
  }
  return enums.AdjacentNonAvailabilityType.values.firstWhereOrNull(
        (e) => e.value == adjacentNonAvailabilityType,
      ) ??
      defaultValue;
}

String adjacentNonAvailabilityTypeExplodedListToJson(
  List<enums.AdjacentNonAvailabilityType>? adjacentNonAvailabilityType,
) {
  return adjacentNonAvailabilityType?.map((e) => e.value!).join(',') ?? '';
}

List<String> adjacentNonAvailabilityTypeListToJson(
  List<enums.AdjacentNonAvailabilityType>? adjacentNonAvailabilityType,
) {
  if (adjacentNonAvailabilityType == null) {
    return [];
  }

  return adjacentNonAvailabilityType.map((e) => e.value!).toList();
}

List<enums.AdjacentNonAvailabilityType> adjacentNonAvailabilityTypeListFromJson(
  List? adjacentNonAvailabilityType, [
  List<enums.AdjacentNonAvailabilityType>? defaultValue,
]) {
  if (adjacentNonAvailabilityType == null) {
    return defaultValue ?? [];
  }

  return adjacentNonAvailabilityType
      .map((e) => adjacentNonAvailabilityTypeFromJson(e.toString()))
      .toList();
}

List<enums.AdjacentNonAvailabilityType>?
adjacentNonAvailabilityTypeNullableListFromJson(
  List? adjacentNonAvailabilityType, [
  List<enums.AdjacentNonAvailabilityType>? defaultValue,
]) {
  if (adjacentNonAvailabilityType == null) {
    return defaultValue;
  }

  return adjacentNonAvailabilityType
      .map((e) => adjacentNonAvailabilityTypeFromJson(e.toString()))
      .toList();
}

String? battFormulaTypeNullableToJson(enums.BattFormulaType? battFormulaType) {
  return battFormulaType?.value;
}

String? battFormulaTypeToJson(enums.BattFormulaType battFormulaType) {
  return battFormulaType.value;
}

enums.BattFormulaType battFormulaTypeFromJson(
  Object? battFormulaType, [
  enums.BattFormulaType? defaultValue,
]) {
  return enums.BattFormulaType.values.firstWhereOrNull(
        (e) => e.value == battFormulaType,
      ) ??
      defaultValue ??
      enums.BattFormulaType.swaggerGeneratedUnknown;
}

enums.BattFormulaType? battFormulaTypeNullableFromJson(
  Object? battFormulaType, [
  enums.BattFormulaType? defaultValue,
]) {
  if (battFormulaType == null) {
    return null;
  }
  return enums.BattFormulaType.values.firstWhereOrNull(
        (e) => e.value == battFormulaType,
      ) ??
      defaultValue;
}

String battFormulaTypeExplodedListToJson(
  List<enums.BattFormulaType>? battFormulaType,
) {
  return battFormulaType?.map((e) => e.value!).join(',') ?? '';
}

List<String> battFormulaTypeListToJson(
  List<enums.BattFormulaType>? battFormulaType,
) {
  if (battFormulaType == null) {
    return [];
  }

  return battFormulaType.map((e) => e.value!).toList();
}

List<enums.BattFormulaType> battFormulaTypeListFromJson(
  List? battFormulaType, [
  List<enums.BattFormulaType>? defaultValue,
]) {
  if (battFormulaType == null) {
    return defaultValue ?? [];
  }

  return battFormulaType
      .map((e) => battFormulaTypeFromJson(e.toString()))
      .toList();
}

List<enums.BattFormulaType>? battFormulaTypeNullableListFromJson(
  List? battFormulaType, [
  List<enums.BattFormulaType>? defaultValue,
]) {
  if (battFormulaType == null) {
    return defaultValue;
  }

  return battFormulaType
      .map((e) => battFormulaTypeFromJson(e.toString()))
      .toList();
}

String? batteryStatusChargingNullableToJson(
  enums.BatteryStatusCharging? batteryStatusCharging,
) {
  return batteryStatusCharging?.value;
}

String? batteryStatusChargingToJson(
  enums.BatteryStatusCharging batteryStatusCharging,
) {
  return batteryStatusCharging.value;
}

enums.BatteryStatusCharging batteryStatusChargingFromJson(
  Object? batteryStatusCharging, [
  enums.BatteryStatusCharging? defaultValue,
]) {
  return enums.BatteryStatusCharging.values.firstWhereOrNull(
        (e) => e.value == batteryStatusCharging,
      ) ??
      defaultValue ??
      enums.BatteryStatusCharging.swaggerGeneratedUnknown;
}

enums.BatteryStatusCharging? batteryStatusChargingNullableFromJson(
  Object? batteryStatusCharging, [
  enums.BatteryStatusCharging? defaultValue,
]) {
  if (batteryStatusCharging == null) {
    return null;
  }
  return enums.BatteryStatusCharging.values.firstWhereOrNull(
        (e) => e.value == batteryStatusCharging,
      ) ??
      defaultValue;
}

String batteryStatusChargingExplodedListToJson(
  List<enums.BatteryStatusCharging>? batteryStatusCharging,
) {
  return batteryStatusCharging?.map((e) => e.value!).join(',') ?? '';
}

List<String> batteryStatusChargingListToJson(
  List<enums.BatteryStatusCharging>? batteryStatusCharging,
) {
  if (batteryStatusCharging == null) {
    return [];
  }

  return batteryStatusCharging.map((e) => e.value!).toList();
}

List<enums.BatteryStatusCharging> batteryStatusChargingListFromJson(
  List? batteryStatusCharging, [
  List<enums.BatteryStatusCharging>? defaultValue,
]) {
  if (batteryStatusCharging == null) {
    return defaultValue ?? [];
  }

  return batteryStatusCharging
      .map((e) => batteryStatusChargingFromJson(e.toString()))
      .toList();
}

List<enums.BatteryStatusCharging>? batteryStatusChargingNullableListFromJson(
  List? batteryStatusCharging, [
  List<enums.BatteryStatusCharging>? defaultValue,
]) {
  if (batteryStatusCharging == null) {
    return defaultValue;
  }

  return batteryStatusCharging
      .map((e) => batteryStatusChargingFromJson(e.toString()))
      .toList();
}

String? batteryStatusFetchStatusNullableToJson(
  enums.BatteryStatusFetchStatus? batteryStatusFetchStatus,
) {
  return batteryStatusFetchStatus?.value;
}

String? batteryStatusFetchStatusToJson(
  enums.BatteryStatusFetchStatus batteryStatusFetchStatus,
) {
  return batteryStatusFetchStatus.value;
}

enums.BatteryStatusFetchStatus batteryStatusFetchStatusFromJson(
  Object? batteryStatusFetchStatus, [
  enums.BatteryStatusFetchStatus? defaultValue,
]) {
  return enums.BatteryStatusFetchStatus.values.firstWhereOrNull(
        (e) => e.value == batteryStatusFetchStatus,
      ) ??
      defaultValue ??
      enums.BatteryStatusFetchStatus.swaggerGeneratedUnknown;
}

enums.BatteryStatusFetchStatus? batteryStatusFetchStatusNullableFromJson(
  Object? batteryStatusFetchStatus, [
  enums.BatteryStatusFetchStatus? defaultValue,
]) {
  if (batteryStatusFetchStatus == null) {
    return null;
  }
  return enums.BatteryStatusFetchStatus.values.firstWhereOrNull(
        (e) => e.value == batteryStatusFetchStatus,
      ) ??
      defaultValue;
}

String batteryStatusFetchStatusExplodedListToJson(
  List<enums.BatteryStatusFetchStatus>? batteryStatusFetchStatus,
) {
  return batteryStatusFetchStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> batteryStatusFetchStatusListToJson(
  List<enums.BatteryStatusFetchStatus>? batteryStatusFetchStatus,
) {
  if (batteryStatusFetchStatus == null) {
    return [];
  }

  return batteryStatusFetchStatus.map((e) => e.value!).toList();
}

List<enums.BatteryStatusFetchStatus> batteryStatusFetchStatusListFromJson(
  List? batteryStatusFetchStatus, [
  List<enums.BatteryStatusFetchStatus>? defaultValue,
]) {
  if (batteryStatusFetchStatus == null) {
    return defaultValue ?? [];
  }

  return batteryStatusFetchStatus
      .map((e) => batteryStatusFetchStatusFromJson(e.toString()))
      .toList();
}

List<enums.BatteryStatusFetchStatus>?
batteryStatusFetchStatusNullableListFromJson(
  List? batteryStatusFetchStatus, [
  List<enums.BatteryStatusFetchStatus>? defaultValue,
]) {
  if (batteryStatusFetchStatus == null) {
    return defaultValue;
  }

  return batteryStatusFetchStatus
      .map((e) => batteryStatusFetchStatusFromJson(e.toString()))
      .toList();
}

String? billingPriceUnitNullableToJson(
  enums.BillingPriceUnit? billingPriceUnit,
) {
  return billingPriceUnit?.value;
}

String? billingPriceUnitToJson(enums.BillingPriceUnit billingPriceUnit) {
  return billingPriceUnit.value;
}

enums.BillingPriceUnit billingPriceUnitFromJson(
  Object? billingPriceUnit, [
  enums.BillingPriceUnit? defaultValue,
]) {
  return enums.BillingPriceUnit.values.firstWhereOrNull(
        (e) => e.value == billingPriceUnit,
      ) ??
      defaultValue ??
      enums.BillingPriceUnit.swaggerGeneratedUnknown;
}

enums.BillingPriceUnit? billingPriceUnitNullableFromJson(
  Object? billingPriceUnit, [
  enums.BillingPriceUnit? defaultValue,
]) {
  if (billingPriceUnit == null) {
    return null;
  }
  return enums.BillingPriceUnit.values.firstWhereOrNull(
        (e) => e.value == billingPriceUnit,
      ) ??
      defaultValue;
}

String billingPriceUnitExplodedListToJson(
  List<enums.BillingPriceUnit>? billingPriceUnit,
) {
  return billingPriceUnit?.map((e) => e.value!).join(',') ?? '';
}

List<String> billingPriceUnitListToJson(
  List<enums.BillingPriceUnit>? billingPriceUnit,
) {
  if (billingPriceUnit == null) {
    return [];
  }

  return billingPriceUnit.map((e) => e.value!).toList();
}

List<enums.BillingPriceUnit> billingPriceUnitListFromJson(
  List? billingPriceUnit, [
  List<enums.BillingPriceUnit>? defaultValue,
]) {
  if (billingPriceUnit == null) {
    return defaultValue ?? [];
  }

  return billingPriceUnit
      .map((e) => billingPriceUnitFromJson(e.toString()))
      .toList();
}

List<enums.BillingPriceUnit>? billingPriceUnitNullableListFromJson(
  List? billingPriceUnit, [
  List<enums.BillingPriceUnit>? defaultValue,
]) {
  if (billingPriceUnit == null) {
    return defaultValue;
  }

  return billingPriceUnit
      .map((e) => billingPriceUnitFromJson(e.toString()))
      .toList();
}

String? bookingInvoiceStatusNullableToJson(
  enums.BookingInvoiceStatus? bookingInvoiceStatus,
) {
  return bookingInvoiceStatus?.value;
}

String? bookingInvoiceStatusToJson(
  enums.BookingInvoiceStatus bookingInvoiceStatus,
) {
  return bookingInvoiceStatus.value;
}

enums.BookingInvoiceStatus bookingInvoiceStatusFromJson(
  Object? bookingInvoiceStatus, [
  enums.BookingInvoiceStatus? defaultValue,
]) {
  return enums.BookingInvoiceStatus.values.firstWhereOrNull(
        (e) => e.value == bookingInvoiceStatus,
      ) ??
      defaultValue ??
      enums.BookingInvoiceStatus.swaggerGeneratedUnknown;
}

enums.BookingInvoiceStatus? bookingInvoiceStatusNullableFromJson(
  Object? bookingInvoiceStatus, [
  enums.BookingInvoiceStatus? defaultValue,
]) {
  if (bookingInvoiceStatus == null) {
    return null;
  }
  return enums.BookingInvoiceStatus.values.firstWhereOrNull(
        (e) => e.value == bookingInvoiceStatus,
      ) ??
      defaultValue;
}

String bookingInvoiceStatusExplodedListToJson(
  List<enums.BookingInvoiceStatus>? bookingInvoiceStatus,
) {
  return bookingInvoiceStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> bookingInvoiceStatusListToJson(
  List<enums.BookingInvoiceStatus>? bookingInvoiceStatus,
) {
  if (bookingInvoiceStatus == null) {
    return [];
  }

  return bookingInvoiceStatus.map((e) => e.value!).toList();
}

List<enums.BookingInvoiceStatus> bookingInvoiceStatusListFromJson(
  List? bookingInvoiceStatus, [
  List<enums.BookingInvoiceStatus>? defaultValue,
]) {
  if (bookingInvoiceStatus == null) {
    return defaultValue ?? [];
  }

  return bookingInvoiceStatus
      .map((e) => bookingInvoiceStatusFromJson(e.toString()))
      .toList();
}

List<enums.BookingInvoiceStatus>? bookingInvoiceStatusNullableListFromJson(
  List? bookingInvoiceStatus, [
  List<enums.BookingInvoiceStatus>? defaultValue,
]) {
  if (bookingInvoiceStatus == null) {
    return defaultValue;
  }

  return bookingInvoiceStatus
      .map((e) => bookingInvoiceStatusFromJson(e.toString()))
      .toList();
}

String? bookingNextPossibleStatusesNullableToJson(
  enums.BookingNextPossibleStatuses? bookingNextPossibleStatuses,
) {
  return bookingNextPossibleStatuses?.value;
}

String? bookingNextPossibleStatusesToJson(
  enums.BookingNextPossibleStatuses bookingNextPossibleStatuses,
) {
  return bookingNextPossibleStatuses.value;
}

enums.BookingNextPossibleStatuses bookingNextPossibleStatusesFromJson(
  Object? bookingNextPossibleStatuses, [
  enums.BookingNextPossibleStatuses? defaultValue,
]) {
  return enums.BookingNextPossibleStatuses.values.firstWhereOrNull(
        (e) => e.value == bookingNextPossibleStatuses,
      ) ??
      defaultValue ??
      enums.BookingNextPossibleStatuses.swaggerGeneratedUnknown;
}

enums.BookingNextPossibleStatuses? bookingNextPossibleStatusesNullableFromJson(
  Object? bookingNextPossibleStatuses, [
  enums.BookingNextPossibleStatuses? defaultValue,
]) {
  if (bookingNextPossibleStatuses == null) {
    return null;
  }
  return enums.BookingNextPossibleStatuses.values.firstWhereOrNull(
        (e) => e.value == bookingNextPossibleStatuses,
      ) ??
      defaultValue;
}

String bookingNextPossibleStatusesExplodedListToJson(
  List<enums.BookingNextPossibleStatuses>? bookingNextPossibleStatuses,
) {
  return bookingNextPossibleStatuses?.map((e) => e.value!).join(',') ?? '';
}

List<String> bookingNextPossibleStatusesListToJson(
  List<enums.BookingNextPossibleStatuses>? bookingNextPossibleStatuses,
) {
  if (bookingNextPossibleStatuses == null) {
    return [];
  }

  return bookingNextPossibleStatuses.map((e) => e.value!).toList();
}

List<enums.BookingNextPossibleStatuses> bookingNextPossibleStatusesListFromJson(
  List? bookingNextPossibleStatuses, [
  List<enums.BookingNextPossibleStatuses>? defaultValue,
]) {
  if (bookingNextPossibleStatuses == null) {
    return defaultValue ?? [];
  }

  return bookingNextPossibleStatuses
      .map((e) => bookingNextPossibleStatusesFromJson(e.toString()))
      .toList();
}

List<enums.BookingNextPossibleStatuses>?
bookingNextPossibleStatusesNullableListFromJson(
  List? bookingNextPossibleStatuses, [
  List<enums.BookingNextPossibleStatuses>? defaultValue,
]) {
  if (bookingNextPossibleStatuses == null) {
    return defaultValue;
  }

  return bookingNextPossibleStatuses
      .map((e) => bookingNextPossibleStatusesFromJson(e.toString()))
      .toList();
}

String? bookingStatusNullableToJson(enums.BookingStatus? bookingStatus) {
  return bookingStatus?.value;
}

String? bookingStatusToJson(enums.BookingStatus bookingStatus) {
  return bookingStatus.value;
}

enums.BookingStatus bookingStatusFromJson(
  Object? bookingStatus, [
  enums.BookingStatus? defaultValue,
]) {
  return enums.BookingStatus.values.firstWhereOrNull(
        (e) => e.value == bookingStatus,
      ) ??
      defaultValue ??
      enums.BookingStatus.swaggerGeneratedUnknown;
}

enums.BookingStatus? bookingStatusNullableFromJson(
  Object? bookingStatus, [
  enums.BookingStatus? defaultValue,
]) {
  if (bookingStatus == null) {
    return null;
  }
  return enums.BookingStatus.values.firstWhereOrNull(
        (e) => e.value == bookingStatus,
      ) ??
      defaultValue;
}

String bookingStatusExplodedListToJson(
  List<enums.BookingStatus>? bookingStatus,
) {
  return bookingStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> bookingStatusListToJson(List<enums.BookingStatus>? bookingStatus) {
  if (bookingStatus == null) {
    return [];
  }

  return bookingStatus.map((e) => e.value!).toList();
}

List<enums.BookingStatus> bookingStatusListFromJson(
  List? bookingStatus, [
  List<enums.BookingStatus>? defaultValue,
]) {
  if (bookingStatus == null) {
    return defaultValue ?? [];
  }

  return bookingStatus.map((e) => bookingStatusFromJson(e.toString())).toList();
}

List<enums.BookingStatus>? bookingStatusNullableListFromJson(
  List? bookingStatus, [
  List<enums.BookingStatus>? defaultValue,
]) {
  if (bookingStatus == null) {
    return defaultValue;
  }

  return bookingStatus.map((e) => bookingStatusFromJson(e.toString())).toList();
}

String? changeLockRequestLockStatusNullableToJson(
  enums.ChangeLockRequestLockStatus? changeLockRequestLockStatus,
) {
  return changeLockRequestLockStatus?.value;
}

String? changeLockRequestLockStatusToJson(
  enums.ChangeLockRequestLockStatus changeLockRequestLockStatus,
) {
  return changeLockRequestLockStatus.value;
}

enums.ChangeLockRequestLockStatus changeLockRequestLockStatusFromJson(
  Object? changeLockRequestLockStatus, [
  enums.ChangeLockRequestLockStatus? defaultValue,
]) {
  return enums.ChangeLockRequestLockStatus.values.firstWhereOrNull(
        (e) => e.value == changeLockRequestLockStatus,
      ) ??
      defaultValue ??
      enums.ChangeLockRequestLockStatus.swaggerGeneratedUnknown;
}

enums.ChangeLockRequestLockStatus? changeLockRequestLockStatusNullableFromJson(
  Object? changeLockRequestLockStatus, [
  enums.ChangeLockRequestLockStatus? defaultValue,
]) {
  if (changeLockRequestLockStatus == null) {
    return null;
  }
  return enums.ChangeLockRequestLockStatus.values.firstWhereOrNull(
        (e) => e.value == changeLockRequestLockStatus,
      ) ??
      defaultValue;
}

String changeLockRequestLockStatusExplodedListToJson(
  List<enums.ChangeLockRequestLockStatus>? changeLockRequestLockStatus,
) {
  return changeLockRequestLockStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> changeLockRequestLockStatusListToJson(
  List<enums.ChangeLockRequestLockStatus>? changeLockRequestLockStatus,
) {
  if (changeLockRequestLockStatus == null) {
    return [];
  }

  return changeLockRequestLockStatus.map((e) => e.value!).toList();
}

List<enums.ChangeLockRequestLockStatus> changeLockRequestLockStatusListFromJson(
  List? changeLockRequestLockStatus, [
  List<enums.ChangeLockRequestLockStatus>? defaultValue,
]) {
  if (changeLockRequestLockStatus == null) {
    return defaultValue ?? [];
  }

  return changeLockRequestLockStatus
      .map((e) => changeLockRequestLockStatusFromJson(e.toString()))
      .toList();
}

List<enums.ChangeLockRequestLockStatus>?
changeLockRequestLockStatusNullableListFromJson(
  List? changeLockRequestLockStatus, [
  List<enums.ChangeLockRequestLockStatus>? defaultValue,
]) {
  if (changeLockRequestLockStatus == null) {
    return defaultValue;
  }

  return changeLockRequestLockStatus
      .map((e) => changeLockRequestLockStatusFromJson(e.toString()))
      .toList();
}

String? clientContractFormulaNullableToJson(
  enums.ClientContractFormula? clientContractFormula,
) {
  return clientContractFormula?.value;
}

String? clientContractFormulaToJson(
  enums.ClientContractFormula clientContractFormula,
) {
  return clientContractFormula.value;
}

enums.ClientContractFormula clientContractFormulaFromJson(
  Object? clientContractFormula, [
  enums.ClientContractFormula? defaultValue,
]) {
  return enums.ClientContractFormula.values.firstWhereOrNull(
        (e) => e.value == clientContractFormula,
      ) ??
      defaultValue ??
      enums.ClientContractFormula.swaggerGeneratedUnknown;
}

enums.ClientContractFormula? clientContractFormulaNullableFromJson(
  Object? clientContractFormula, [
  enums.ClientContractFormula? defaultValue,
]) {
  if (clientContractFormula == null) {
    return null;
  }
  return enums.ClientContractFormula.values.firstWhereOrNull(
        (e) => e.value == clientContractFormula,
      ) ??
      defaultValue;
}

String clientContractFormulaExplodedListToJson(
  List<enums.ClientContractFormula>? clientContractFormula,
) {
  return clientContractFormula?.map((e) => e.value!).join(',') ?? '';
}

List<String> clientContractFormulaListToJson(
  List<enums.ClientContractFormula>? clientContractFormula,
) {
  if (clientContractFormula == null) {
    return [];
  }

  return clientContractFormula.map((e) => e.value!).toList();
}

List<enums.ClientContractFormula> clientContractFormulaListFromJson(
  List? clientContractFormula, [
  List<enums.ClientContractFormula>? defaultValue,
]) {
  if (clientContractFormula == null) {
    return defaultValue ?? [];
  }

  return clientContractFormula
      .map((e) => clientContractFormulaFromJson(e.toString()))
      .toList();
}

List<enums.ClientContractFormula>? clientContractFormulaNullableListFromJson(
  List? clientContractFormula, [
  List<enums.ClientContractFormula>? defaultValue,
]) {
  if (clientContractFormula == null) {
    return defaultValue;
  }

  return clientContractFormula
      .map((e) => clientContractFormulaFromJson(e.toString()))
      .toList();
}

String? clientContractStatusNullableToJson(
  enums.ClientContractStatus? clientContractStatus,
) {
  return clientContractStatus?.value;
}

String? clientContractStatusToJson(
  enums.ClientContractStatus clientContractStatus,
) {
  return clientContractStatus.value;
}

enums.ClientContractStatus clientContractStatusFromJson(
  Object? clientContractStatus, [
  enums.ClientContractStatus? defaultValue,
]) {
  return enums.ClientContractStatus.values.firstWhereOrNull(
        (e) => e.value == clientContractStatus,
      ) ??
      defaultValue ??
      enums.ClientContractStatus.swaggerGeneratedUnknown;
}

enums.ClientContractStatus? clientContractStatusNullableFromJson(
  Object? clientContractStatus, [
  enums.ClientContractStatus? defaultValue,
]) {
  if (clientContractStatus == null) {
    return null;
  }
  return enums.ClientContractStatus.values.firstWhereOrNull(
        (e) => e.value == clientContractStatus,
      ) ??
      defaultValue;
}

String clientContractStatusExplodedListToJson(
  List<enums.ClientContractStatus>? clientContractStatus,
) {
  return clientContractStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> clientContractStatusListToJson(
  List<enums.ClientContractStatus>? clientContractStatus,
) {
  if (clientContractStatus == null) {
    return [];
  }

  return clientContractStatus.map((e) => e.value!).toList();
}

List<enums.ClientContractStatus> clientContractStatusListFromJson(
  List? clientContractStatus, [
  List<enums.ClientContractStatus>? defaultValue,
]) {
  if (clientContractStatus == null) {
    return defaultValue ?? [];
  }

  return clientContractStatus
      .map((e) => clientContractStatusFromJson(e.toString()))
      .toList();
}

List<enums.ClientContractStatus>? clientContractStatusNullableListFromJson(
  List? clientContractStatus, [
  List<enums.ClientContractStatus>? defaultValue,
]) {
  if (clientContractStatus == null) {
    return defaultValue;
  }

  return clientContractStatus
      .map((e) => clientContractStatusFromJson(e.toString()))
      .toList();
}

String? clientContractTypeNullableToJson(
  enums.ClientContractType? clientContractType,
) {
  return clientContractType?.value;
}

String? clientContractTypeToJson(enums.ClientContractType clientContractType) {
  return clientContractType.value;
}

enums.ClientContractType clientContractTypeFromJson(
  Object? clientContractType, [
  enums.ClientContractType? defaultValue,
]) {
  return enums.ClientContractType.values.firstWhereOrNull(
        (e) => e.value == clientContractType,
      ) ??
      defaultValue ??
      enums.ClientContractType.swaggerGeneratedUnknown;
}

enums.ClientContractType? clientContractTypeNullableFromJson(
  Object? clientContractType, [
  enums.ClientContractType? defaultValue,
]) {
  if (clientContractType == null) {
    return null;
  }
  return enums.ClientContractType.values.firstWhereOrNull(
        (e) => e.value == clientContractType,
      ) ??
      defaultValue;
}

String clientContractTypeExplodedListToJson(
  List<enums.ClientContractType>? clientContractType,
) {
  return clientContractType?.map((e) => e.value!).join(',') ?? '';
}

List<String> clientContractTypeListToJson(
  List<enums.ClientContractType>? clientContractType,
) {
  if (clientContractType == null) {
    return [];
  }

  return clientContractType.map((e) => e.value!).toList();
}

List<enums.ClientContractType> clientContractTypeListFromJson(
  List? clientContractType, [
  List<enums.ClientContractType>? defaultValue,
]) {
  if (clientContractType == null) {
    return defaultValue ?? [];
  }

  return clientContractType
      .map((e) => clientContractTypeFromJson(e.toString()))
      .toList();
}

List<enums.ClientContractType>? clientContractTypeNullableListFromJson(
  List? clientContractType, [
  List<enums.ClientContractType>? defaultValue,
]) {
  if (clientContractType == null) {
    return defaultValue;
  }

  return clientContractType
      .map((e) => clientContractTypeFromJson(e.toString()))
      .toList();
}

String? clientContractVehicleRecordBattMaxTypeNullableToJson(
  enums.ClientContractVehicleRecordBattMaxType?
  clientContractVehicleRecordBattMaxType,
) {
  return clientContractVehicleRecordBattMaxType?.value;
}

String? clientContractVehicleRecordBattMaxTypeToJson(
  enums.ClientContractVehicleRecordBattMaxType
  clientContractVehicleRecordBattMaxType,
) {
  return clientContractVehicleRecordBattMaxType.value;
}

enums.ClientContractVehicleRecordBattMaxType
clientContractVehicleRecordBattMaxTypeFromJson(
  Object? clientContractVehicleRecordBattMaxType, [
  enums.ClientContractVehicleRecordBattMaxType? defaultValue,
]) {
  return enums.ClientContractVehicleRecordBattMaxType.values.firstWhereOrNull(
        (e) => e.value == clientContractVehicleRecordBattMaxType,
      ) ??
      defaultValue ??
      enums.ClientContractVehicleRecordBattMaxType.swaggerGeneratedUnknown;
}

enums.ClientContractVehicleRecordBattMaxType?
clientContractVehicleRecordBattMaxTypeNullableFromJson(
  Object? clientContractVehicleRecordBattMaxType, [
  enums.ClientContractVehicleRecordBattMaxType? defaultValue,
]) {
  if (clientContractVehicleRecordBattMaxType == null) {
    return null;
  }
  return enums.ClientContractVehicleRecordBattMaxType.values.firstWhereOrNull(
        (e) => e.value == clientContractVehicleRecordBattMaxType,
      ) ??
      defaultValue;
}

String clientContractVehicleRecordBattMaxTypeExplodedListToJson(
  List<enums.ClientContractVehicleRecordBattMaxType>?
  clientContractVehicleRecordBattMaxType,
) {
  return clientContractVehicleRecordBattMaxType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> clientContractVehicleRecordBattMaxTypeListToJson(
  List<enums.ClientContractVehicleRecordBattMaxType>?
  clientContractVehicleRecordBattMaxType,
) {
  if (clientContractVehicleRecordBattMaxType == null) {
    return [];
  }

  return clientContractVehicleRecordBattMaxType.map((e) => e.value!).toList();
}

List<enums.ClientContractVehicleRecordBattMaxType>
clientContractVehicleRecordBattMaxTypeListFromJson(
  List? clientContractVehicleRecordBattMaxType, [
  List<enums.ClientContractVehicleRecordBattMaxType>? defaultValue,
]) {
  if (clientContractVehicleRecordBattMaxType == null) {
    return defaultValue ?? [];
  }

  return clientContractVehicleRecordBattMaxType
      .map((e) => clientContractVehicleRecordBattMaxTypeFromJson(e.toString()))
      .toList();
}

List<enums.ClientContractVehicleRecordBattMaxType>?
clientContractVehicleRecordBattMaxTypeNullableListFromJson(
  List? clientContractVehicleRecordBattMaxType, [
  List<enums.ClientContractVehicleRecordBattMaxType>? defaultValue,
]) {
  if (clientContractVehicleRecordBattMaxType == null) {
    return defaultValue;
  }

  return clientContractVehicleRecordBattMaxType
      .map((e) => clientContractVehicleRecordBattMaxTypeFromJson(e.toString()))
      .toList();
}

String? commitmentChangeOptionNullableToJson(
  enums.CommitmentChangeOption? commitmentChangeOption,
) {
  return commitmentChangeOption?.value;
}

String? commitmentChangeOptionToJson(
  enums.CommitmentChangeOption commitmentChangeOption,
) {
  return commitmentChangeOption.value;
}

enums.CommitmentChangeOption commitmentChangeOptionFromJson(
  Object? commitmentChangeOption, [
  enums.CommitmentChangeOption? defaultValue,
]) {
  return enums.CommitmentChangeOption.values.firstWhereOrNull(
        (e) => e.value == commitmentChangeOption,
      ) ??
      defaultValue ??
      enums.CommitmentChangeOption.swaggerGeneratedUnknown;
}

enums.CommitmentChangeOption? commitmentChangeOptionNullableFromJson(
  Object? commitmentChangeOption, [
  enums.CommitmentChangeOption? defaultValue,
]) {
  if (commitmentChangeOption == null) {
    return null;
  }
  return enums.CommitmentChangeOption.values.firstWhereOrNull(
        (e) => e.value == commitmentChangeOption,
      ) ??
      defaultValue;
}

String commitmentChangeOptionExplodedListToJson(
  List<enums.CommitmentChangeOption>? commitmentChangeOption,
) {
  return commitmentChangeOption?.map((e) => e.value!).join(',') ?? '';
}

List<String> commitmentChangeOptionListToJson(
  List<enums.CommitmentChangeOption>? commitmentChangeOption,
) {
  if (commitmentChangeOption == null) {
    return [];
  }

  return commitmentChangeOption.map((e) => e.value!).toList();
}

List<enums.CommitmentChangeOption> commitmentChangeOptionListFromJson(
  List? commitmentChangeOption, [
  List<enums.CommitmentChangeOption>? defaultValue,
]) {
  if (commitmentChangeOption == null) {
    return defaultValue ?? [];
  }

  return commitmentChangeOption
      .map((e) => commitmentChangeOptionFromJson(e.toString()))
      .toList();
}

List<enums.CommitmentChangeOption>? commitmentChangeOptionNullableListFromJson(
  List? commitmentChangeOption, [
  List<enums.CommitmentChangeOption>? defaultValue,
]) {
  if (commitmentChangeOption == null) {
    return defaultValue;
  }

  return commitmentChangeOption
      .map((e) => commitmentChangeOptionFromJson(e.toString()))
      .toList();
}

String? createIssueRequestPriorityNullableToJson(
  enums.CreateIssueRequestPriority? createIssueRequestPriority,
) {
  return createIssueRequestPriority?.value;
}

String? createIssueRequestPriorityToJson(
  enums.CreateIssueRequestPriority createIssueRequestPriority,
) {
  return createIssueRequestPriority.value;
}

enums.CreateIssueRequestPriority createIssueRequestPriorityFromJson(
  Object? createIssueRequestPriority, [
  enums.CreateIssueRequestPriority? defaultValue,
]) {
  return enums.CreateIssueRequestPriority.values.firstWhereOrNull(
        (e) => e.value == createIssueRequestPriority,
      ) ??
      defaultValue ??
      enums.CreateIssueRequestPriority.swaggerGeneratedUnknown;
}

enums.CreateIssueRequestPriority? createIssueRequestPriorityNullableFromJson(
  Object? createIssueRequestPriority, [
  enums.CreateIssueRequestPriority? defaultValue,
]) {
  if (createIssueRequestPriority == null) {
    return null;
  }
  return enums.CreateIssueRequestPriority.values.firstWhereOrNull(
        (e) => e.value == createIssueRequestPriority,
      ) ??
      defaultValue;
}

String createIssueRequestPriorityExplodedListToJson(
  List<enums.CreateIssueRequestPriority>? createIssueRequestPriority,
) {
  return createIssueRequestPriority?.map((e) => e.value!).join(',') ?? '';
}

List<String> createIssueRequestPriorityListToJson(
  List<enums.CreateIssueRequestPriority>? createIssueRequestPriority,
) {
  if (createIssueRequestPriority == null) {
    return [];
  }

  return createIssueRequestPriority.map((e) => e.value!).toList();
}

List<enums.CreateIssueRequestPriority> createIssueRequestPriorityListFromJson(
  List? createIssueRequestPriority, [
  List<enums.CreateIssueRequestPriority>? defaultValue,
]) {
  if (createIssueRequestPriority == null) {
    return defaultValue ?? [];
  }

  return createIssueRequestPriority
      .map((e) => createIssueRequestPriorityFromJson(e.toString()))
      .toList();
}

List<enums.CreateIssueRequestPriority>?
createIssueRequestPriorityNullableListFromJson(
  List? createIssueRequestPriority, [
  List<enums.CreateIssueRequestPriority>? defaultValue,
]) {
  if (createIssueRequestPriority == null) {
    return defaultValue;
  }

  return createIssueRequestPriority
      .map((e) => createIssueRequestPriorityFromJson(e.toString()))
      .toList();
}

String? createVehicleContractBattMaxTypeNullableToJson(
  enums.CreateVehicleContractBattMaxType? createVehicleContractBattMaxType,
) {
  return createVehicleContractBattMaxType?.value;
}

String? createVehicleContractBattMaxTypeToJson(
  enums.CreateVehicleContractBattMaxType createVehicleContractBattMaxType,
) {
  return createVehicleContractBattMaxType.value;
}

enums.CreateVehicleContractBattMaxType createVehicleContractBattMaxTypeFromJson(
  Object? createVehicleContractBattMaxType, [
  enums.CreateVehicleContractBattMaxType? defaultValue,
]) {
  return enums.CreateVehicleContractBattMaxType.values.firstWhereOrNull(
        (e) => e.value == createVehicleContractBattMaxType,
      ) ??
      defaultValue ??
      enums.CreateVehicleContractBattMaxType.swaggerGeneratedUnknown;
}

enums.CreateVehicleContractBattMaxType?
createVehicleContractBattMaxTypeNullableFromJson(
  Object? createVehicleContractBattMaxType, [
  enums.CreateVehicleContractBattMaxType? defaultValue,
]) {
  if (createVehicleContractBattMaxType == null) {
    return null;
  }
  return enums.CreateVehicleContractBattMaxType.values.firstWhereOrNull(
        (e) => e.value == createVehicleContractBattMaxType,
      ) ??
      defaultValue;
}

String createVehicleContractBattMaxTypeExplodedListToJson(
  List<enums.CreateVehicleContractBattMaxType>?
  createVehicleContractBattMaxType,
) {
  return createVehicleContractBattMaxType?.map((e) => e.value!).join(',') ?? '';
}

List<String> createVehicleContractBattMaxTypeListToJson(
  List<enums.CreateVehicleContractBattMaxType>?
  createVehicleContractBattMaxType,
) {
  if (createVehicleContractBattMaxType == null) {
    return [];
  }

  return createVehicleContractBattMaxType.map((e) => e.value!).toList();
}

List<enums.CreateVehicleContractBattMaxType>
createVehicleContractBattMaxTypeListFromJson(
  List? createVehicleContractBattMaxType, [
  List<enums.CreateVehicleContractBattMaxType>? defaultValue,
]) {
  if (createVehicleContractBattMaxType == null) {
    return defaultValue ?? [];
  }

  return createVehicleContractBattMaxType
      .map((e) => createVehicleContractBattMaxTypeFromJson(e.toString()))
      .toList();
}

List<enums.CreateVehicleContractBattMaxType>?
createVehicleContractBattMaxTypeNullableListFromJson(
  List? createVehicleContractBattMaxType, [
  List<enums.CreateVehicleContractBattMaxType>? defaultValue,
]) {
  if (createVehicleContractBattMaxType == null) {
    return defaultValue;
  }

  return createVehicleContractBattMaxType
      .map((e) => createVehicleContractBattMaxTypeFromJson(e.toString()))
      .toList();
}

String? createVehicleContractBillingTypeNullableToJson(
  enums.CreateVehicleContractBillingType? createVehicleContractBillingType,
) {
  return createVehicleContractBillingType?.value;
}

String? createVehicleContractBillingTypeToJson(
  enums.CreateVehicleContractBillingType createVehicleContractBillingType,
) {
  return createVehicleContractBillingType.value;
}

enums.CreateVehicleContractBillingType createVehicleContractBillingTypeFromJson(
  Object? createVehicleContractBillingType, [
  enums.CreateVehicleContractBillingType? defaultValue,
]) {
  return enums.CreateVehicleContractBillingType.values.firstWhereOrNull(
        (e) => e.value == createVehicleContractBillingType,
      ) ??
      defaultValue ??
      enums.CreateVehicleContractBillingType.swaggerGeneratedUnknown;
}

enums.CreateVehicleContractBillingType?
createVehicleContractBillingTypeNullableFromJson(
  Object? createVehicleContractBillingType, [
  enums.CreateVehicleContractBillingType? defaultValue,
]) {
  if (createVehicleContractBillingType == null) {
    return null;
  }
  return enums.CreateVehicleContractBillingType.values.firstWhereOrNull(
        (e) => e.value == createVehicleContractBillingType,
      ) ??
      defaultValue;
}

String createVehicleContractBillingTypeExplodedListToJson(
  List<enums.CreateVehicleContractBillingType>?
  createVehicleContractBillingType,
) {
  return createVehicleContractBillingType?.map((e) => e.value!).join(',') ?? '';
}

List<String> createVehicleContractBillingTypeListToJson(
  List<enums.CreateVehicleContractBillingType>?
  createVehicleContractBillingType,
) {
  if (createVehicleContractBillingType == null) {
    return [];
  }

  return createVehicleContractBillingType.map((e) => e.value!).toList();
}

List<enums.CreateVehicleContractBillingType>
createVehicleContractBillingTypeListFromJson(
  List? createVehicleContractBillingType, [
  List<enums.CreateVehicleContractBillingType>? defaultValue,
]) {
  if (createVehicleContractBillingType == null) {
    return defaultValue ?? [];
  }

  return createVehicleContractBillingType
      .map((e) => createVehicleContractBillingTypeFromJson(e.toString()))
      .toList();
}

List<enums.CreateVehicleContractBillingType>?
createVehicleContractBillingTypeNullableListFromJson(
  List? createVehicleContractBillingType, [
  List<enums.CreateVehicleContractBillingType>? defaultValue,
]) {
  if (createVehicleContractBillingType == null) {
    return defaultValue;
  }

  return createVehicleContractBillingType
      .map((e) => createVehicleContractBillingTypeFromJson(e.toString()))
      .toList();
}

String? formulaChangeOptionNullableToJson(
  enums.FormulaChangeOption? formulaChangeOption,
) {
  return formulaChangeOption?.value;
}

String? formulaChangeOptionToJson(
  enums.FormulaChangeOption formulaChangeOption,
) {
  return formulaChangeOption.value;
}

enums.FormulaChangeOption formulaChangeOptionFromJson(
  Object? formulaChangeOption, [
  enums.FormulaChangeOption? defaultValue,
]) {
  return enums.FormulaChangeOption.values.firstWhereOrNull(
        (e) => e.value == formulaChangeOption,
      ) ??
      defaultValue ??
      enums.FormulaChangeOption.swaggerGeneratedUnknown;
}

enums.FormulaChangeOption? formulaChangeOptionNullableFromJson(
  Object? formulaChangeOption, [
  enums.FormulaChangeOption? defaultValue,
]) {
  if (formulaChangeOption == null) {
    return null;
  }
  return enums.FormulaChangeOption.values.firstWhereOrNull(
        (e) => e.value == formulaChangeOption,
      ) ??
      defaultValue;
}

String formulaChangeOptionExplodedListToJson(
  List<enums.FormulaChangeOption>? formulaChangeOption,
) {
  return formulaChangeOption?.map((e) => e.value!).join(',') ?? '';
}

List<String> formulaChangeOptionListToJson(
  List<enums.FormulaChangeOption>? formulaChangeOption,
) {
  if (formulaChangeOption == null) {
    return [];
  }

  return formulaChangeOption.map((e) => e.value!).toList();
}

List<enums.FormulaChangeOption> formulaChangeOptionListFromJson(
  List? formulaChangeOption, [
  List<enums.FormulaChangeOption>? defaultValue,
]) {
  if (formulaChangeOption == null) {
    return defaultValue ?? [];
  }

  return formulaChangeOption
      .map((e) => formulaChangeOptionFromJson(e.toString()))
      .toList();
}

List<enums.FormulaChangeOption>? formulaChangeOptionNullableListFromJson(
  List? formulaChangeOption, [
  List<enums.FormulaChangeOption>? defaultValue,
]) {
  if (formulaChangeOption == null) {
    return defaultValue;
  }

  return formulaChangeOption
      .map((e) => formulaChangeOptionFromJson(e.toString()))
      .toList();
}

String? invoicePaymentStatusNullableToJson(
  enums.InvoicePaymentStatus? invoicePaymentStatus,
) {
  return invoicePaymentStatus?.value;
}

String? invoicePaymentStatusToJson(
  enums.InvoicePaymentStatus invoicePaymentStatus,
) {
  return invoicePaymentStatus.value;
}

enums.InvoicePaymentStatus invoicePaymentStatusFromJson(
  Object? invoicePaymentStatus, [
  enums.InvoicePaymentStatus? defaultValue,
]) {
  return enums.InvoicePaymentStatus.values.firstWhereOrNull(
        (e) => e.value == invoicePaymentStatus,
      ) ??
      defaultValue ??
      enums.InvoicePaymentStatus.swaggerGeneratedUnknown;
}

enums.InvoicePaymentStatus? invoicePaymentStatusNullableFromJson(
  Object? invoicePaymentStatus, [
  enums.InvoicePaymentStatus? defaultValue,
]) {
  if (invoicePaymentStatus == null) {
    return null;
  }
  return enums.InvoicePaymentStatus.values.firstWhereOrNull(
        (e) => e.value == invoicePaymentStatus,
      ) ??
      defaultValue;
}

String invoicePaymentStatusExplodedListToJson(
  List<enums.InvoicePaymentStatus>? invoicePaymentStatus,
) {
  return invoicePaymentStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> invoicePaymentStatusListToJson(
  List<enums.InvoicePaymentStatus>? invoicePaymentStatus,
) {
  if (invoicePaymentStatus == null) {
    return [];
  }

  return invoicePaymentStatus.map((e) => e.value!).toList();
}

List<enums.InvoicePaymentStatus> invoicePaymentStatusListFromJson(
  List? invoicePaymentStatus, [
  List<enums.InvoicePaymentStatus>? defaultValue,
]) {
  if (invoicePaymentStatus == null) {
    return defaultValue ?? [];
  }

  return invoicePaymentStatus
      .map((e) => invoicePaymentStatusFromJson(e.toString()))
      .toList();
}

List<enums.InvoicePaymentStatus>? invoicePaymentStatusNullableListFromJson(
  List? invoicePaymentStatus, [
  List<enums.InvoicePaymentStatus>? defaultValue,
]) {
  if (invoicePaymentStatus == null) {
    return defaultValue;
  }

  return invoicePaymentStatus
      .map((e) => invoicePaymentStatusFromJson(e.toString()))
      .toList();
}

String? issuePriorityNullableToJson(enums.IssuePriority? issuePriority) {
  return issuePriority?.value;
}

String? issuePriorityToJson(enums.IssuePriority issuePriority) {
  return issuePriority.value;
}

enums.IssuePriority issuePriorityFromJson(
  Object? issuePriority, [
  enums.IssuePriority? defaultValue,
]) {
  return enums.IssuePriority.values.firstWhereOrNull(
        (e) => e.value == issuePriority,
      ) ??
      defaultValue ??
      enums.IssuePriority.swaggerGeneratedUnknown;
}

enums.IssuePriority? issuePriorityNullableFromJson(
  Object? issuePriority, [
  enums.IssuePriority? defaultValue,
]) {
  if (issuePriority == null) {
    return null;
  }
  return enums.IssuePriority.values.firstWhereOrNull(
        (e) => e.value == issuePriority,
      ) ??
      defaultValue;
}

String issuePriorityExplodedListToJson(
  List<enums.IssuePriority>? issuePriority,
) {
  return issuePriority?.map((e) => e.value!).join(',') ?? '';
}

List<String> issuePriorityListToJson(List<enums.IssuePriority>? issuePriority) {
  if (issuePriority == null) {
    return [];
  }

  return issuePriority.map((e) => e.value!).toList();
}

List<enums.IssuePriority> issuePriorityListFromJson(
  List? issuePriority, [
  List<enums.IssuePriority>? defaultValue,
]) {
  if (issuePriority == null) {
    return defaultValue ?? [];
  }

  return issuePriority.map((e) => issuePriorityFromJson(e.toString())).toList();
}

List<enums.IssuePriority>? issuePriorityNullableListFromJson(
  List? issuePriority, [
  List<enums.IssuePriority>? defaultValue,
]) {
  if (issuePriority == null) {
    return defaultValue;
  }

  return issuePriority.map((e) => issuePriorityFromJson(e.toString())).toList();
}

String? issueStatusNullableToJson(enums.IssueStatus? issueStatus) {
  return issueStatus?.value;
}

String? issueStatusToJson(enums.IssueStatus issueStatus) {
  return issueStatus.value;
}

enums.IssueStatus issueStatusFromJson(
  Object? issueStatus, [
  enums.IssueStatus? defaultValue,
]) {
  return enums.IssueStatus.values.firstWhereOrNull(
        (e) => e.value == issueStatus,
      ) ??
      defaultValue ??
      enums.IssueStatus.swaggerGeneratedUnknown;
}

enums.IssueStatus? issueStatusNullableFromJson(
  Object? issueStatus, [
  enums.IssueStatus? defaultValue,
]) {
  if (issueStatus == null) {
    return null;
  }
  return enums.IssueStatus.values.firstWhereOrNull(
        (e) => e.value == issueStatus,
      ) ??
      defaultValue;
}

String issueStatusExplodedListToJson(List<enums.IssueStatus>? issueStatus) {
  return issueStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> issueStatusListToJson(List<enums.IssueStatus>? issueStatus) {
  if (issueStatus == null) {
    return [];
  }

  return issueStatus.map((e) => e.value!).toList();
}

List<enums.IssueStatus> issueStatusListFromJson(
  List? issueStatus, [
  List<enums.IssueStatus>? defaultValue,
]) {
  if (issueStatus == null) {
    return defaultValue ?? [];
  }

  return issueStatus.map((e) => issueStatusFromJson(e.toString())).toList();
}

List<enums.IssueStatus>? issueStatusNullableListFromJson(
  List? issueStatus, [
  List<enums.IssueStatus>? defaultValue,
]) {
  if (issueStatus == null) {
    return defaultValue;
  }

  return issueStatus.map((e) => issueStatusFromJson(e.toString())).toList();
}

String? issueActionPriorityNullableToJson(
  enums.IssueActionPriority? issueActionPriority,
) {
  return issueActionPriority?.value;
}

String? issueActionPriorityToJson(
  enums.IssueActionPriority issueActionPriority,
) {
  return issueActionPriority.value;
}

enums.IssueActionPriority issueActionPriorityFromJson(
  Object? issueActionPriority, [
  enums.IssueActionPriority? defaultValue,
]) {
  return enums.IssueActionPriority.values.firstWhereOrNull(
        (e) => e.value == issueActionPriority,
      ) ??
      defaultValue ??
      enums.IssueActionPriority.swaggerGeneratedUnknown;
}

enums.IssueActionPriority? issueActionPriorityNullableFromJson(
  Object? issueActionPriority, [
  enums.IssueActionPriority? defaultValue,
]) {
  if (issueActionPriority == null) {
    return null;
  }
  return enums.IssueActionPriority.values.firstWhereOrNull(
        (e) => e.value == issueActionPriority,
      ) ??
      defaultValue;
}

String issueActionPriorityExplodedListToJson(
  List<enums.IssueActionPriority>? issueActionPriority,
) {
  return issueActionPriority?.map((e) => e.value!).join(',') ?? '';
}

List<String> issueActionPriorityListToJson(
  List<enums.IssueActionPriority>? issueActionPriority,
) {
  if (issueActionPriority == null) {
    return [];
  }

  return issueActionPriority.map((e) => e.value!).toList();
}

List<enums.IssueActionPriority> issueActionPriorityListFromJson(
  List? issueActionPriority, [
  List<enums.IssueActionPriority>? defaultValue,
]) {
  if (issueActionPriority == null) {
    return defaultValue ?? [];
  }

  return issueActionPriority
      .map((e) => issueActionPriorityFromJson(e.toString()))
      .toList();
}

List<enums.IssueActionPriority>? issueActionPriorityNullableListFromJson(
  List? issueActionPriority, [
  List<enums.IssueActionPriority>? defaultValue,
]) {
  if (issueActionPriority == null) {
    return defaultValue;
  }

  return issueActionPriority
      .map((e) => issueActionPriorityFromJson(e.toString()))
      .toList();
}

String? issueActionStatusNullableToJson(
  enums.IssueActionStatus? issueActionStatus,
) {
  return issueActionStatus?.value;
}

String? issueActionStatusToJson(enums.IssueActionStatus issueActionStatus) {
  return issueActionStatus.value;
}

enums.IssueActionStatus issueActionStatusFromJson(
  Object? issueActionStatus, [
  enums.IssueActionStatus? defaultValue,
]) {
  return enums.IssueActionStatus.values.firstWhereOrNull(
        (e) => e.value == issueActionStatus,
      ) ??
      defaultValue ??
      enums.IssueActionStatus.swaggerGeneratedUnknown;
}

enums.IssueActionStatus? issueActionStatusNullableFromJson(
  Object? issueActionStatus, [
  enums.IssueActionStatus? defaultValue,
]) {
  if (issueActionStatus == null) {
    return null;
  }
  return enums.IssueActionStatus.values.firstWhereOrNull(
        (e) => e.value == issueActionStatus,
      ) ??
      defaultValue;
}

String issueActionStatusExplodedListToJson(
  List<enums.IssueActionStatus>? issueActionStatus,
) {
  return issueActionStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> issueActionStatusListToJson(
  List<enums.IssueActionStatus>? issueActionStatus,
) {
  if (issueActionStatus == null) {
    return [];
  }

  return issueActionStatus.map((e) => e.value!).toList();
}

List<enums.IssueActionStatus> issueActionStatusListFromJson(
  List? issueActionStatus, [
  List<enums.IssueActionStatus>? defaultValue,
]) {
  if (issueActionStatus == null) {
    return defaultValue ?? [];
  }

  return issueActionStatus
      .map((e) => issueActionStatusFromJson(e.toString()))
      .toList();
}

List<enums.IssueActionStatus>? issueActionStatusNullableListFromJson(
  List? issueActionStatus, [
  List<enums.IssueActionStatus>? defaultValue,
]) {
  if (issueActionStatus == null) {
    return defaultValue;
  }

  return issueActionStatus
      .map((e) => issueActionStatusFromJson(e.toString()))
      .toList();
}

String? myAvailableVehicleTypeNullableToJson(
  enums.MyAvailableVehicleType? myAvailableVehicleType,
) {
  return myAvailableVehicleType?.value;
}

String? myAvailableVehicleTypeToJson(
  enums.MyAvailableVehicleType myAvailableVehicleType,
) {
  return myAvailableVehicleType.value;
}

enums.MyAvailableVehicleType myAvailableVehicleTypeFromJson(
  Object? myAvailableVehicleType, [
  enums.MyAvailableVehicleType? defaultValue,
]) {
  return enums.MyAvailableVehicleType.values.firstWhereOrNull(
        (e) => e.value == myAvailableVehicleType,
      ) ??
      defaultValue ??
      enums.MyAvailableVehicleType.swaggerGeneratedUnknown;
}

enums.MyAvailableVehicleType? myAvailableVehicleTypeNullableFromJson(
  Object? myAvailableVehicleType, [
  enums.MyAvailableVehicleType? defaultValue,
]) {
  if (myAvailableVehicleType == null) {
    return null;
  }
  return enums.MyAvailableVehicleType.values.firstWhereOrNull(
        (e) => e.value == myAvailableVehicleType,
      ) ??
      defaultValue;
}

String myAvailableVehicleTypeExplodedListToJson(
  List<enums.MyAvailableVehicleType>? myAvailableVehicleType,
) {
  return myAvailableVehicleType?.map((e) => e.value!).join(',') ?? '';
}

List<String> myAvailableVehicleTypeListToJson(
  List<enums.MyAvailableVehicleType>? myAvailableVehicleType,
) {
  if (myAvailableVehicleType == null) {
    return [];
  }

  return myAvailableVehicleType.map((e) => e.value!).toList();
}

List<enums.MyAvailableVehicleType> myAvailableVehicleTypeListFromJson(
  List? myAvailableVehicleType, [
  List<enums.MyAvailableVehicleType>? defaultValue,
]) {
  if (myAvailableVehicleType == null) {
    return defaultValue ?? [];
  }

  return myAvailableVehicleType
      .map((e) => myAvailableVehicleTypeFromJson(e.toString()))
      .toList();
}

List<enums.MyAvailableVehicleType>? myAvailableVehicleTypeNullableListFromJson(
  List? myAvailableVehicleType, [
  List<enums.MyAvailableVehicleType>? defaultValue,
]) {
  if (myAvailableVehicleType == null) {
    return defaultValue;
  }

  return myAvailableVehicleType
      .map((e) => myAvailableVehicleTypeFromJson(e.toString()))
      .toList();
}

String? nonAvailabilityTypeNullableToJson(
  enums.NonAvailabilityType? nonAvailabilityType,
) {
  return nonAvailabilityType?.value;
}

String? nonAvailabilityTypeToJson(
  enums.NonAvailabilityType nonAvailabilityType,
) {
  return nonAvailabilityType.value;
}

enums.NonAvailabilityType nonAvailabilityTypeFromJson(
  Object? nonAvailabilityType, [
  enums.NonAvailabilityType? defaultValue,
]) {
  return enums.NonAvailabilityType.values.firstWhereOrNull(
        (e) => e.value == nonAvailabilityType,
      ) ??
      defaultValue ??
      enums.NonAvailabilityType.swaggerGeneratedUnknown;
}

enums.NonAvailabilityType? nonAvailabilityTypeNullableFromJson(
  Object? nonAvailabilityType, [
  enums.NonAvailabilityType? defaultValue,
]) {
  if (nonAvailabilityType == null) {
    return null;
  }
  return enums.NonAvailabilityType.values.firstWhereOrNull(
        (e) => e.value == nonAvailabilityType,
      ) ??
      defaultValue;
}

String nonAvailabilityTypeExplodedListToJson(
  List<enums.NonAvailabilityType>? nonAvailabilityType,
) {
  return nonAvailabilityType?.map((e) => e.value!).join(',') ?? '';
}

List<String> nonAvailabilityTypeListToJson(
  List<enums.NonAvailabilityType>? nonAvailabilityType,
) {
  if (nonAvailabilityType == null) {
    return [];
  }

  return nonAvailabilityType.map((e) => e.value!).toList();
}

List<enums.NonAvailabilityType> nonAvailabilityTypeListFromJson(
  List? nonAvailabilityType, [
  List<enums.NonAvailabilityType>? defaultValue,
]) {
  if (nonAvailabilityType == null) {
    return defaultValue ?? [];
  }

  return nonAvailabilityType
      .map((e) => nonAvailabilityTypeFromJson(e.toString()))
      .toList();
}

List<enums.NonAvailabilityType>? nonAvailabilityTypeNullableListFromJson(
  List? nonAvailabilityType, [
  List<enums.NonAvailabilityType>? defaultValue,
]) {
  if (nonAvailabilityType == null) {
    return defaultValue;
  }

  return nonAvailabilityType
      .map((e) => nonAvailabilityTypeFromJson(e.toString()))
      .toList();
}

String? onboardingStatusNullableToJson(
  enums.OnboardingStatus? onboardingStatus,
) {
  return onboardingStatus?.value;
}

String? onboardingStatusToJson(enums.OnboardingStatus onboardingStatus) {
  return onboardingStatus.value;
}

enums.OnboardingStatus onboardingStatusFromJson(
  Object? onboardingStatus, [
  enums.OnboardingStatus? defaultValue,
]) {
  return enums.OnboardingStatus.values.firstWhereOrNull(
        (e) => e.value == onboardingStatus,
      ) ??
      defaultValue ??
      enums.OnboardingStatus.swaggerGeneratedUnknown;
}

enums.OnboardingStatus? onboardingStatusNullableFromJson(
  Object? onboardingStatus, [
  enums.OnboardingStatus? defaultValue,
]) {
  if (onboardingStatus == null) {
    return null;
  }
  return enums.OnboardingStatus.values.firstWhereOrNull(
        (e) => e.value == onboardingStatus,
      ) ??
      defaultValue;
}

String onboardingStatusExplodedListToJson(
  List<enums.OnboardingStatus>? onboardingStatus,
) {
  return onboardingStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> onboardingStatusListToJson(
  List<enums.OnboardingStatus>? onboardingStatus,
) {
  if (onboardingStatus == null) {
    return [];
  }

  return onboardingStatus.map((e) => e.value!).toList();
}

List<enums.OnboardingStatus> onboardingStatusListFromJson(
  List? onboardingStatus, [
  List<enums.OnboardingStatus>? defaultValue,
]) {
  if (onboardingStatus == null) {
    return defaultValue ?? [];
  }

  return onboardingStatus
      .map((e) => onboardingStatusFromJson(e.toString()))
      .toList();
}

List<enums.OnboardingStatus>? onboardingStatusNullableListFromJson(
  List? onboardingStatus, [
  List<enums.OnboardingStatus>? defaultValue,
]) {
  if (onboardingStatus == null) {
    return defaultValue;
  }

  return onboardingStatus
      .map((e) => onboardingStatusFromJson(e.toString()))
      .toList();
}

String? onboardingPersonalLicenseTypeNullableToJson(
  enums.OnboardingPersonalLicenseType? onboardingPersonalLicenseType,
) {
  return onboardingPersonalLicenseType?.value;
}

String? onboardingPersonalLicenseTypeToJson(
  enums.OnboardingPersonalLicenseType onboardingPersonalLicenseType,
) {
  return onboardingPersonalLicenseType.value;
}

enums.OnboardingPersonalLicenseType onboardingPersonalLicenseTypeFromJson(
  Object? onboardingPersonalLicenseType, [
  enums.OnboardingPersonalLicenseType? defaultValue,
]) {
  return enums.OnboardingPersonalLicenseType.values.firstWhereOrNull(
        (e) => e.value == onboardingPersonalLicenseType,
      ) ??
      defaultValue ??
      enums.OnboardingPersonalLicenseType.swaggerGeneratedUnknown;
}

enums.OnboardingPersonalLicenseType?
onboardingPersonalLicenseTypeNullableFromJson(
  Object? onboardingPersonalLicenseType, [
  enums.OnboardingPersonalLicenseType? defaultValue,
]) {
  if (onboardingPersonalLicenseType == null) {
    return null;
  }
  return enums.OnboardingPersonalLicenseType.values.firstWhereOrNull(
        (e) => e.value == onboardingPersonalLicenseType,
      ) ??
      defaultValue;
}

String onboardingPersonalLicenseTypeExplodedListToJson(
  List<enums.OnboardingPersonalLicenseType>? onboardingPersonalLicenseType,
) {
  return onboardingPersonalLicenseType?.map((e) => e.value!).join(',') ?? '';
}

List<String> onboardingPersonalLicenseTypeListToJson(
  List<enums.OnboardingPersonalLicenseType>? onboardingPersonalLicenseType,
) {
  if (onboardingPersonalLicenseType == null) {
    return [];
  }

  return onboardingPersonalLicenseType.map((e) => e.value!).toList();
}

List<enums.OnboardingPersonalLicenseType>
onboardingPersonalLicenseTypeListFromJson(
  List? onboardingPersonalLicenseType, [
  List<enums.OnboardingPersonalLicenseType>? defaultValue,
]) {
  if (onboardingPersonalLicenseType == null) {
    return defaultValue ?? [];
  }

  return onboardingPersonalLicenseType
      .map((e) => onboardingPersonalLicenseTypeFromJson(e.toString()))
      .toList();
}

List<enums.OnboardingPersonalLicenseType>?
onboardingPersonalLicenseTypeNullableListFromJson(
  List? onboardingPersonalLicenseType, [
  List<enums.OnboardingPersonalLicenseType>? defaultValue,
]) {
  if (onboardingPersonalLicenseType == null) {
    return defaultValue;
  }

  return onboardingPersonalLicenseType
      .map((e) => onboardingPersonalLicenseTypeFromJson(e.toString()))
      .toList();
}

String? recurringScheduleRecurringTypeNullableToJson(
  enums.RecurringScheduleRecurringType? recurringScheduleRecurringType,
) {
  return recurringScheduleRecurringType?.value;
}

String? recurringScheduleRecurringTypeToJson(
  enums.RecurringScheduleRecurringType recurringScheduleRecurringType,
) {
  return recurringScheduleRecurringType.value;
}

enums.RecurringScheduleRecurringType recurringScheduleRecurringTypeFromJson(
  Object? recurringScheduleRecurringType, [
  enums.RecurringScheduleRecurringType? defaultValue,
]) {
  return enums.RecurringScheduleRecurringType.values.firstWhereOrNull(
        (e) => e.value == recurringScheduleRecurringType,
      ) ??
      defaultValue ??
      enums.RecurringScheduleRecurringType.swaggerGeneratedUnknown;
}

enums.RecurringScheduleRecurringType?
recurringScheduleRecurringTypeNullableFromJson(
  Object? recurringScheduleRecurringType, [
  enums.RecurringScheduleRecurringType? defaultValue,
]) {
  if (recurringScheduleRecurringType == null) {
    return null;
  }
  return enums.RecurringScheduleRecurringType.values.firstWhereOrNull(
        (e) => e.value == recurringScheduleRecurringType,
      ) ??
      defaultValue;
}

String recurringScheduleRecurringTypeExplodedListToJson(
  List<enums.RecurringScheduleRecurringType>? recurringScheduleRecurringType,
) {
  return recurringScheduleRecurringType?.map((e) => e.value!).join(',') ?? '';
}

List<String> recurringScheduleRecurringTypeListToJson(
  List<enums.RecurringScheduleRecurringType>? recurringScheduleRecurringType,
) {
  if (recurringScheduleRecurringType == null) {
    return [];
  }

  return recurringScheduleRecurringType.map((e) => e.value!).toList();
}

List<enums.RecurringScheduleRecurringType>
recurringScheduleRecurringTypeListFromJson(
  List? recurringScheduleRecurringType, [
  List<enums.RecurringScheduleRecurringType>? defaultValue,
]) {
  if (recurringScheduleRecurringType == null) {
    return defaultValue ?? [];
  }

  return recurringScheduleRecurringType
      .map((e) => recurringScheduleRecurringTypeFromJson(e.toString()))
      .toList();
}

List<enums.RecurringScheduleRecurringType>?
recurringScheduleRecurringTypeNullableListFromJson(
  List? recurringScheduleRecurringType, [
  List<enums.RecurringScheduleRecurringType>? defaultValue,
]) {
  if (recurringScheduleRecurringType == null) {
    return defaultValue;
  }

  return recurringScheduleRecurringType
      .map((e) => recurringScheduleRecurringTypeFromJson(e.toString()))
      .toList();
}

String? recurringScheduleTimeZoneNullableToJson(
  enums.RecurringScheduleTimeZone? recurringScheduleTimeZone,
) {
  return recurringScheduleTimeZone?.value;
}

String? recurringScheduleTimeZoneToJson(
  enums.RecurringScheduleTimeZone recurringScheduleTimeZone,
) {
  return recurringScheduleTimeZone.value;
}

enums.RecurringScheduleTimeZone recurringScheduleTimeZoneFromJson(
  Object? recurringScheduleTimeZone, [
  enums.RecurringScheduleTimeZone? defaultValue,
]) {
  return enums.RecurringScheduleTimeZone.values.firstWhereOrNull(
        (e) => e.value == recurringScheduleTimeZone,
      ) ??
      defaultValue ??
      enums.RecurringScheduleTimeZone.swaggerGeneratedUnknown;
}

enums.RecurringScheduleTimeZone? recurringScheduleTimeZoneNullableFromJson(
  Object? recurringScheduleTimeZone, [
  enums.RecurringScheduleTimeZone? defaultValue,
]) {
  if (recurringScheduleTimeZone == null) {
    return null;
  }
  return enums.RecurringScheduleTimeZone.values.firstWhereOrNull(
        (e) => e.value == recurringScheduleTimeZone,
      ) ??
      defaultValue;
}

String recurringScheduleTimeZoneExplodedListToJson(
  List<enums.RecurringScheduleTimeZone>? recurringScheduleTimeZone,
) {
  return recurringScheduleTimeZone?.map((e) => e.value!).join(',') ?? '';
}

List<String> recurringScheduleTimeZoneListToJson(
  List<enums.RecurringScheduleTimeZone>? recurringScheduleTimeZone,
) {
  if (recurringScheduleTimeZone == null) {
    return [];
  }

  return recurringScheduleTimeZone.map((e) => e.value!).toList();
}

List<enums.RecurringScheduleTimeZone> recurringScheduleTimeZoneListFromJson(
  List? recurringScheduleTimeZone, [
  List<enums.RecurringScheduleTimeZone>? defaultValue,
]) {
  if (recurringScheduleTimeZone == null) {
    return defaultValue ?? [];
  }

  return recurringScheduleTimeZone
      .map((e) => recurringScheduleTimeZoneFromJson(e.toString()))
      .toList();
}

List<enums.RecurringScheduleTimeZone>?
recurringScheduleTimeZoneNullableListFromJson(
  List? recurringScheduleTimeZone, [
  List<enums.RecurringScheduleTimeZone>? defaultValue,
]) {
  if (recurringScheduleTimeZone == null) {
    return defaultValue;
  }

  return recurringScheduleTimeZone
      .map((e) => recurringScheduleTimeZoneFromJson(e.toString()))
      .toList();
}

String? searchBookingsRequestStatusesNullableToJson(
  enums.SearchBookingsRequestStatuses? searchBookingsRequestStatuses,
) {
  return searchBookingsRequestStatuses?.value;
}

String? searchBookingsRequestStatusesToJson(
  enums.SearchBookingsRequestStatuses searchBookingsRequestStatuses,
) {
  return searchBookingsRequestStatuses.value;
}

enums.SearchBookingsRequestStatuses searchBookingsRequestStatusesFromJson(
  Object? searchBookingsRequestStatuses, [
  enums.SearchBookingsRequestStatuses? defaultValue,
]) {
  return enums.SearchBookingsRequestStatuses.values.firstWhereOrNull(
        (e) => e.value == searchBookingsRequestStatuses,
      ) ??
      defaultValue ??
      enums.SearchBookingsRequestStatuses.swaggerGeneratedUnknown;
}

enums.SearchBookingsRequestStatuses?
searchBookingsRequestStatusesNullableFromJson(
  Object? searchBookingsRequestStatuses, [
  enums.SearchBookingsRequestStatuses? defaultValue,
]) {
  if (searchBookingsRequestStatuses == null) {
    return null;
  }
  return enums.SearchBookingsRequestStatuses.values.firstWhereOrNull(
        (e) => e.value == searchBookingsRequestStatuses,
      ) ??
      defaultValue;
}

String searchBookingsRequestStatusesExplodedListToJson(
  List<enums.SearchBookingsRequestStatuses>? searchBookingsRequestStatuses,
) {
  return searchBookingsRequestStatuses?.map((e) => e.value!).join(',') ?? '';
}

List<String> searchBookingsRequestStatusesListToJson(
  List<enums.SearchBookingsRequestStatuses>? searchBookingsRequestStatuses,
) {
  if (searchBookingsRequestStatuses == null) {
    return [];
  }

  return searchBookingsRequestStatuses.map((e) => e.value!).toList();
}

List<enums.SearchBookingsRequestStatuses>
searchBookingsRequestStatusesListFromJson(
  List? searchBookingsRequestStatuses, [
  List<enums.SearchBookingsRequestStatuses>? defaultValue,
]) {
  if (searchBookingsRequestStatuses == null) {
    return defaultValue ?? [];
  }

  return searchBookingsRequestStatuses
      .map((e) => searchBookingsRequestStatusesFromJson(e.toString()))
      .toList();
}

List<enums.SearchBookingsRequestStatuses>?
searchBookingsRequestStatusesNullableListFromJson(
  List? searchBookingsRequestStatuses, [
  List<enums.SearchBookingsRequestStatuses>? defaultValue,
]) {
  if (searchBookingsRequestStatuses == null) {
    return defaultValue;
  }

  return searchBookingsRequestStatuses
      .map((e) => searchBookingsRequestStatusesFromJson(e.toString()))
      .toList();
}

String? searchIssuesRequestOrderNullableToJson(
  enums.SearchIssuesRequestOrder? searchIssuesRequestOrder,
) {
  return searchIssuesRequestOrder?.value;
}

String? searchIssuesRequestOrderToJson(
  enums.SearchIssuesRequestOrder searchIssuesRequestOrder,
) {
  return searchIssuesRequestOrder.value;
}

enums.SearchIssuesRequestOrder searchIssuesRequestOrderFromJson(
  Object? searchIssuesRequestOrder, [
  enums.SearchIssuesRequestOrder? defaultValue,
]) {
  return enums.SearchIssuesRequestOrder.values.firstWhereOrNull(
        (e) => e.value == searchIssuesRequestOrder,
      ) ??
      defaultValue ??
      enums.SearchIssuesRequestOrder.swaggerGeneratedUnknown;
}

enums.SearchIssuesRequestOrder? searchIssuesRequestOrderNullableFromJson(
  Object? searchIssuesRequestOrder, [
  enums.SearchIssuesRequestOrder? defaultValue,
]) {
  if (searchIssuesRequestOrder == null) {
    return null;
  }
  return enums.SearchIssuesRequestOrder.values.firstWhereOrNull(
        (e) => e.value == searchIssuesRequestOrder,
      ) ??
      defaultValue;
}

String searchIssuesRequestOrderExplodedListToJson(
  List<enums.SearchIssuesRequestOrder>? searchIssuesRequestOrder,
) {
  return searchIssuesRequestOrder?.map((e) => e.value!).join(',') ?? '';
}

List<String> searchIssuesRequestOrderListToJson(
  List<enums.SearchIssuesRequestOrder>? searchIssuesRequestOrder,
) {
  if (searchIssuesRequestOrder == null) {
    return [];
  }

  return searchIssuesRequestOrder.map((e) => e.value!).toList();
}

List<enums.SearchIssuesRequestOrder> searchIssuesRequestOrderListFromJson(
  List? searchIssuesRequestOrder, [
  List<enums.SearchIssuesRequestOrder>? defaultValue,
]) {
  if (searchIssuesRequestOrder == null) {
    return defaultValue ?? [];
  }

  return searchIssuesRequestOrder
      .map((e) => searchIssuesRequestOrderFromJson(e.toString()))
      .toList();
}

List<enums.SearchIssuesRequestOrder>?
searchIssuesRequestOrderNullableListFromJson(
  List? searchIssuesRequestOrder, [
  List<enums.SearchIssuesRequestOrder>? defaultValue,
]) {
  if (searchIssuesRequestOrder == null) {
    return defaultValue;
  }

  return searchIssuesRequestOrder
      .map((e) => searchIssuesRequestOrderFromJson(e.toString()))
      .toList();
}

String? searchIssuesRequestPrioritiesNullableToJson(
  enums.SearchIssuesRequestPriorities? searchIssuesRequestPriorities,
) {
  return searchIssuesRequestPriorities?.value;
}

String? searchIssuesRequestPrioritiesToJson(
  enums.SearchIssuesRequestPriorities searchIssuesRequestPriorities,
) {
  return searchIssuesRequestPriorities.value;
}

enums.SearchIssuesRequestPriorities searchIssuesRequestPrioritiesFromJson(
  Object? searchIssuesRequestPriorities, [
  enums.SearchIssuesRequestPriorities? defaultValue,
]) {
  return enums.SearchIssuesRequestPriorities.values.firstWhereOrNull(
        (e) => e.value == searchIssuesRequestPriorities,
      ) ??
      defaultValue ??
      enums.SearchIssuesRequestPriorities.swaggerGeneratedUnknown;
}

enums.SearchIssuesRequestPriorities?
searchIssuesRequestPrioritiesNullableFromJson(
  Object? searchIssuesRequestPriorities, [
  enums.SearchIssuesRequestPriorities? defaultValue,
]) {
  if (searchIssuesRequestPriorities == null) {
    return null;
  }
  return enums.SearchIssuesRequestPriorities.values.firstWhereOrNull(
        (e) => e.value == searchIssuesRequestPriorities,
      ) ??
      defaultValue;
}

String searchIssuesRequestPrioritiesExplodedListToJson(
  List<enums.SearchIssuesRequestPriorities>? searchIssuesRequestPriorities,
) {
  return searchIssuesRequestPriorities?.map((e) => e.value!).join(',') ?? '';
}

List<String> searchIssuesRequestPrioritiesListToJson(
  List<enums.SearchIssuesRequestPriorities>? searchIssuesRequestPriorities,
) {
  if (searchIssuesRequestPriorities == null) {
    return [];
  }

  return searchIssuesRequestPriorities.map((e) => e.value!).toList();
}

List<enums.SearchIssuesRequestPriorities>
searchIssuesRequestPrioritiesListFromJson(
  List? searchIssuesRequestPriorities, [
  List<enums.SearchIssuesRequestPriorities>? defaultValue,
]) {
  if (searchIssuesRequestPriorities == null) {
    return defaultValue ?? [];
  }

  return searchIssuesRequestPriorities
      .map((e) => searchIssuesRequestPrioritiesFromJson(e.toString()))
      .toList();
}

List<enums.SearchIssuesRequestPriorities>?
searchIssuesRequestPrioritiesNullableListFromJson(
  List? searchIssuesRequestPriorities, [
  List<enums.SearchIssuesRequestPriorities>? defaultValue,
]) {
  if (searchIssuesRequestPriorities == null) {
    return defaultValue;
  }

  return searchIssuesRequestPriorities
      .map((e) => searchIssuesRequestPrioritiesFromJson(e.toString()))
      .toList();
}

String? searchIssuesRequestStatusesNullableToJson(
  enums.SearchIssuesRequestStatuses? searchIssuesRequestStatuses,
) {
  return searchIssuesRequestStatuses?.value;
}

String? searchIssuesRequestStatusesToJson(
  enums.SearchIssuesRequestStatuses searchIssuesRequestStatuses,
) {
  return searchIssuesRequestStatuses.value;
}

enums.SearchIssuesRequestStatuses searchIssuesRequestStatusesFromJson(
  Object? searchIssuesRequestStatuses, [
  enums.SearchIssuesRequestStatuses? defaultValue,
]) {
  return enums.SearchIssuesRequestStatuses.values.firstWhereOrNull(
        (e) => e.value == searchIssuesRequestStatuses,
      ) ??
      defaultValue ??
      enums.SearchIssuesRequestStatuses.swaggerGeneratedUnknown;
}

enums.SearchIssuesRequestStatuses? searchIssuesRequestStatusesNullableFromJson(
  Object? searchIssuesRequestStatuses, [
  enums.SearchIssuesRequestStatuses? defaultValue,
]) {
  if (searchIssuesRequestStatuses == null) {
    return null;
  }
  return enums.SearchIssuesRequestStatuses.values.firstWhereOrNull(
        (e) => e.value == searchIssuesRequestStatuses,
      ) ??
      defaultValue;
}

String searchIssuesRequestStatusesExplodedListToJson(
  List<enums.SearchIssuesRequestStatuses>? searchIssuesRequestStatuses,
) {
  return searchIssuesRequestStatuses?.map((e) => e.value!).join(',') ?? '';
}

List<String> searchIssuesRequestStatusesListToJson(
  List<enums.SearchIssuesRequestStatuses>? searchIssuesRequestStatuses,
) {
  if (searchIssuesRequestStatuses == null) {
    return [];
  }

  return searchIssuesRequestStatuses.map((e) => e.value!).toList();
}

List<enums.SearchIssuesRequestStatuses> searchIssuesRequestStatusesListFromJson(
  List? searchIssuesRequestStatuses, [
  List<enums.SearchIssuesRequestStatuses>? defaultValue,
]) {
  if (searchIssuesRequestStatuses == null) {
    return defaultValue ?? [];
  }

  return searchIssuesRequestStatuses
      .map((e) => searchIssuesRequestStatusesFromJson(e.toString()))
      .toList();
}

List<enums.SearchIssuesRequestStatuses>?
searchIssuesRequestStatusesNullableListFromJson(
  List? searchIssuesRequestStatuses, [
  List<enums.SearchIssuesRequestStatuses>? defaultValue,
]) {
  if (searchIssuesRequestStatuses == null) {
    return defaultValue;
  }

  return searchIssuesRequestStatuses
      .map((e) => searchIssuesRequestStatusesFromJson(e.toString()))
      .toList();
}

String? searchTelematicsTrackingRequestEventReasonNullableToJson(
  enums.SearchTelematicsTrackingRequestEventReason?
  searchTelematicsTrackingRequestEventReason,
) {
  return searchTelematicsTrackingRequestEventReason?.value;
}

String? searchTelematicsTrackingRequestEventReasonToJson(
  enums.SearchTelematicsTrackingRequestEventReason
  searchTelematicsTrackingRequestEventReason,
) {
  return searchTelematicsTrackingRequestEventReason.value;
}

enums.SearchTelematicsTrackingRequestEventReason
searchTelematicsTrackingRequestEventReasonFromJson(
  Object? searchTelematicsTrackingRequestEventReason, [
  enums.SearchTelematicsTrackingRequestEventReason? defaultValue,
]) {
  return enums.SearchTelematicsTrackingRequestEventReason.values
          .firstWhereOrNull(
            (e) => e.value == searchTelematicsTrackingRequestEventReason,
          ) ??
      defaultValue ??
      enums.SearchTelematicsTrackingRequestEventReason.swaggerGeneratedUnknown;
}

enums.SearchTelematicsTrackingRequestEventReason?
searchTelematicsTrackingRequestEventReasonNullableFromJson(
  Object? searchTelematicsTrackingRequestEventReason, [
  enums.SearchTelematicsTrackingRequestEventReason? defaultValue,
]) {
  if (searchTelematicsTrackingRequestEventReason == null) {
    return null;
  }
  return enums.SearchTelematicsTrackingRequestEventReason.values
          .firstWhereOrNull(
            (e) => e.value == searchTelematicsTrackingRequestEventReason,
          ) ??
      defaultValue;
}

String searchTelematicsTrackingRequestEventReasonExplodedListToJson(
  List<enums.SearchTelematicsTrackingRequestEventReason>?
  searchTelematicsTrackingRequestEventReason,
) {
  return searchTelematicsTrackingRequestEventReason
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> searchTelematicsTrackingRequestEventReasonListToJson(
  List<enums.SearchTelematicsTrackingRequestEventReason>?
  searchTelematicsTrackingRequestEventReason,
) {
  if (searchTelematicsTrackingRequestEventReason == null) {
    return [];
  }

  return searchTelematicsTrackingRequestEventReason
      .map((e) => e.value!)
      .toList();
}

List<enums.SearchTelematicsTrackingRequestEventReason>
searchTelematicsTrackingRequestEventReasonListFromJson(
  List? searchTelematicsTrackingRequestEventReason, [
  List<enums.SearchTelematicsTrackingRequestEventReason>? defaultValue,
]) {
  if (searchTelematicsTrackingRequestEventReason == null) {
    return defaultValue ?? [];
  }

  return searchTelematicsTrackingRequestEventReason
      .map(
        (e) => searchTelematicsTrackingRequestEventReasonFromJson(e.toString()),
      )
      .toList();
}

List<enums.SearchTelematicsTrackingRequestEventReason>?
searchTelematicsTrackingRequestEventReasonNullableListFromJson(
  List? searchTelematicsTrackingRequestEventReason, [
  List<enums.SearchTelematicsTrackingRequestEventReason>? defaultValue,
]) {
  if (searchTelematicsTrackingRequestEventReason == null) {
    return defaultValue;
  }

  return searchTelematicsTrackingRequestEventReason
      .map(
        (e) => searchTelematicsTrackingRequestEventReasonFromJson(e.toString()),
      )
      .toList();
}

String? subscriptionClientRolesNullableToJson(
  enums.SubscriptionClientRoles? subscriptionClientRoles,
) {
  return subscriptionClientRoles?.value;
}

String? subscriptionClientRolesToJson(
  enums.SubscriptionClientRoles subscriptionClientRoles,
) {
  return subscriptionClientRoles.value;
}

enums.SubscriptionClientRoles subscriptionClientRolesFromJson(
  Object? subscriptionClientRoles, [
  enums.SubscriptionClientRoles? defaultValue,
]) {
  return enums.SubscriptionClientRoles.values.firstWhereOrNull(
        (e) => e.value == subscriptionClientRoles,
      ) ??
      defaultValue ??
      enums.SubscriptionClientRoles.swaggerGeneratedUnknown;
}

enums.SubscriptionClientRoles? subscriptionClientRolesNullableFromJson(
  Object? subscriptionClientRoles, [
  enums.SubscriptionClientRoles? defaultValue,
]) {
  if (subscriptionClientRoles == null) {
    return null;
  }
  return enums.SubscriptionClientRoles.values.firstWhereOrNull(
        (e) => e.value == subscriptionClientRoles,
      ) ??
      defaultValue;
}

String subscriptionClientRolesExplodedListToJson(
  List<enums.SubscriptionClientRoles>? subscriptionClientRoles,
) {
  return subscriptionClientRoles?.map((e) => e.value!).join(',') ?? '';
}

List<String> subscriptionClientRolesListToJson(
  List<enums.SubscriptionClientRoles>? subscriptionClientRoles,
) {
  if (subscriptionClientRoles == null) {
    return [];
  }

  return subscriptionClientRoles.map((e) => e.value!).toList();
}

List<enums.SubscriptionClientRoles> subscriptionClientRolesListFromJson(
  List? subscriptionClientRoles, [
  List<enums.SubscriptionClientRoles>? defaultValue,
]) {
  if (subscriptionClientRoles == null) {
    return defaultValue ?? [];
  }

  return subscriptionClientRoles
      .map((e) => subscriptionClientRolesFromJson(e.toString()))
      .toList();
}

List<enums.SubscriptionClientRoles>?
subscriptionClientRolesNullableListFromJson(
  List? subscriptionClientRoles, [
  List<enums.SubscriptionClientRoles>? defaultValue,
]) {
  if (subscriptionClientRoles == null) {
    return defaultValue;
  }

  return subscriptionClientRoles
      .map((e) => subscriptionClientRolesFromJson(e.toString()))
      .toList();
}

String? telematicsTrackingEventReasonNullableToJson(
  enums.TelematicsTrackingEventReason? telematicsTrackingEventReason,
) {
  return telematicsTrackingEventReason?.value;
}

String? telematicsTrackingEventReasonToJson(
  enums.TelematicsTrackingEventReason telematicsTrackingEventReason,
) {
  return telematicsTrackingEventReason.value;
}

enums.TelematicsTrackingEventReason telematicsTrackingEventReasonFromJson(
  Object? telematicsTrackingEventReason, [
  enums.TelematicsTrackingEventReason? defaultValue,
]) {
  return enums.TelematicsTrackingEventReason.values.firstWhereOrNull(
        (e) => e.value == telematicsTrackingEventReason,
      ) ??
      defaultValue ??
      enums.TelematicsTrackingEventReason.swaggerGeneratedUnknown;
}

enums.TelematicsTrackingEventReason?
telematicsTrackingEventReasonNullableFromJson(
  Object? telematicsTrackingEventReason, [
  enums.TelematicsTrackingEventReason? defaultValue,
]) {
  if (telematicsTrackingEventReason == null) {
    return null;
  }
  return enums.TelematicsTrackingEventReason.values.firstWhereOrNull(
        (e) => e.value == telematicsTrackingEventReason,
      ) ??
      defaultValue;
}

String telematicsTrackingEventReasonExplodedListToJson(
  List<enums.TelematicsTrackingEventReason>? telematicsTrackingEventReason,
) {
  return telematicsTrackingEventReason?.map((e) => e.value!).join(',') ?? '';
}

List<String> telematicsTrackingEventReasonListToJson(
  List<enums.TelematicsTrackingEventReason>? telematicsTrackingEventReason,
) {
  if (telematicsTrackingEventReason == null) {
    return [];
  }

  return telematicsTrackingEventReason.map((e) => e.value!).toList();
}

List<enums.TelematicsTrackingEventReason>
telematicsTrackingEventReasonListFromJson(
  List? telematicsTrackingEventReason, [
  List<enums.TelematicsTrackingEventReason>? defaultValue,
]) {
  if (telematicsTrackingEventReason == null) {
    return defaultValue ?? [];
  }

  return telematicsTrackingEventReason
      .map((e) => telematicsTrackingEventReasonFromJson(e.toString()))
      .toList();
}

List<enums.TelematicsTrackingEventReason>?
telematicsTrackingEventReasonNullableListFromJson(
  List? telematicsTrackingEventReason, [
  List<enums.TelematicsTrackingEventReason>? defaultValue,
]) {
  if (telematicsTrackingEventReason == null) {
    return defaultValue;
  }

  return telematicsTrackingEventReason
      .map((e) => telematicsTrackingEventReasonFromJson(e.toString()))
      .toList();
}

String? telematicsVehicleUsageLockStatusNullableToJson(
  enums.TelematicsVehicleUsageLockStatus? telematicsVehicleUsageLockStatus,
) {
  return telematicsVehicleUsageLockStatus?.value;
}

String? telematicsVehicleUsageLockStatusToJson(
  enums.TelematicsVehicleUsageLockStatus telematicsVehicleUsageLockStatus,
) {
  return telematicsVehicleUsageLockStatus.value;
}

enums.TelematicsVehicleUsageLockStatus telematicsVehicleUsageLockStatusFromJson(
  Object? telematicsVehicleUsageLockStatus, [
  enums.TelematicsVehicleUsageLockStatus? defaultValue,
]) {
  return enums.TelematicsVehicleUsageLockStatus.values.firstWhereOrNull(
        (e) => e.value == telematicsVehicleUsageLockStatus,
      ) ??
      defaultValue ??
      enums.TelematicsVehicleUsageLockStatus.swaggerGeneratedUnknown;
}

enums.TelematicsVehicleUsageLockStatus?
telematicsVehicleUsageLockStatusNullableFromJson(
  Object? telematicsVehicleUsageLockStatus, [
  enums.TelematicsVehicleUsageLockStatus? defaultValue,
]) {
  if (telematicsVehicleUsageLockStatus == null) {
    return null;
  }
  return enums.TelematicsVehicleUsageLockStatus.values.firstWhereOrNull(
        (e) => e.value == telematicsVehicleUsageLockStatus,
      ) ??
      defaultValue;
}

String telematicsVehicleUsageLockStatusExplodedListToJson(
  List<enums.TelematicsVehicleUsageLockStatus>?
  telematicsVehicleUsageLockStatus,
) {
  return telematicsVehicleUsageLockStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> telematicsVehicleUsageLockStatusListToJson(
  List<enums.TelematicsVehicleUsageLockStatus>?
  telematicsVehicleUsageLockStatus,
) {
  if (telematicsVehicleUsageLockStatus == null) {
    return [];
  }

  return telematicsVehicleUsageLockStatus.map((e) => e.value!).toList();
}

List<enums.TelematicsVehicleUsageLockStatus>
telematicsVehicleUsageLockStatusListFromJson(
  List? telematicsVehicleUsageLockStatus, [
  List<enums.TelematicsVehicleUsageLockStatus>? defaultValue,
]) {
  if (telematicsVehicleUsageLockStatus == null) {
    return defaultValue ?? [];
  }

  return telematicsVehicleUsageLockStatus
      .map((e) => telematicsVehicleUsageLockStatusFromJson(e.toString()))
      .toList();
}

List<enums.TelematicsVehicleUsageLockStatus>?
telematicsVehicleUsageLockStatusNullableListFromJson(
  List? telematicsVehicleUsageLockStatus, [
  List<enums.TelematicsVehicleUsageLockStatus>? defaultValue,
]) {
  if (telematicsVehicleUsageLockStatus == null) {
    return defaultValue;
  }

  return telematicsVehicleUsageLockStatus
      .map((e) => telematicsVehicleUsageLockStatusFromJson(e.toString()))
      .toList();
}

String? terminateDayOptionNullableToJson(
  enums.TerminateDayOption? terminateDayOption,
) {
  return terminateDayOption?.value;
}

String? terminateDayOptionToJson(enums.TerminateDayOption terminateDayOption) {
  return terminateDayOption.value;
}

enums.TerminateDayOption terminateDayOptionFromJson(
  Object? terminateDayOption, [
  enums.TerminateDayOption? defaultValue,
]) {
  return enums.TerminateDayOption.values.firstWhereOrNull(
        (e) => e.value == terminateDayOption,
      ) ??
      defaultValue ??
      enums.TerminateDayOption.swaggerGeneratedUnknown;
}

enums.TerminateDayOption? terminateDayOptionNullableFromJson(
  Object? terminateDayOption, [
  enums.TerminateDayOption? defaultValue,
]) {
  if (terminateDayOption == null) {
    return null;
  }
  return enums.TerminateDayOption.values.firstWhereOrNull(
        (e) => e.value == terminateDayOption,
      ) ??
      defaultValue;
}

String terminateDayOptionExplodedListToJson(
  List<enums.TerminateDayOption>? terminateDayOption,
) {
  return terminateDayOption?.map((e) => e.value!).join(',') ?? '';
}

List<String> terminateDayOptionListToJson(
  List<enums.TerminateDayOption>? terminateDayOption,
) {
  if (terminateDayOption == null) {
    return [];
  }

  return terminateDayOption.map((e) => e.value!).toList();
}

List<enums.TerminateDayOption> terminateDayOptionListFromJson(
  List? terminateDayOption, [
  List<enums.TerminateDayOption>? defaultValue,
]) {
  if (terminateDayOption == null) {
    return defaultValue ?? [];
  }

  return terminateDayOption
      .map((e) => terminateDayOptionFromJson(e.toString()))
      .toList();
}

List<enums.TerminateDayOption>? terminateDayOptionNullableListFromJson(
  List? terminateDayOption, [
  List<enums.TerminateDayOption>? defaultValue,
]) {
  if (terminateDayOption == null) {
    return defaultValue;
  }

  return terminateDayOption
      .map((e) => terminateDayOptionFromJson(e.toString()))
      .toList();
}

String? updateIssueRequestPriorityNullableToJson(
  enums.UpdateIssueRequestPriority? updateIssueRequestPriority,
) {
  return updateIssueRequestPriority?.value;
}

String? updateIssueRequestPriorityToJson(
  enums.UpdateIssueRequestPriority updateIssueRequestPriority,
) {
  return updateIssueRequestPriority.value;
}

enums.UpdateIssueRequestPriority updateIssueRequestPriorityFromJson(
  Object? updateIssueRequestPriority, [
  enums.UpdateIssueRequestPriority? defaultValue,
]) {
  return enums.UpdateIssueRequestPriority.values.firstWhereOrNull(
        (e) => e.value == updateIssueRequestPriority,
      ) ??
      defaultValue ??
      enums.UpdateIssueRequestPriority.swaggerGeneratedUnknown;
}

enums.UpdateIssueRequestPriority? updateIssueRequestPriorityNullableFromJson(
  Object? updateIssueRequestPriority, [
  enums.UpdateIssueRequestPriority? defaultValue,
]) {
  if (updateIssueRequestPriority == null) {
    return null;
  }
  return enums.UpdateIssueRequestPriority.values.firstWhereOrNull(
        (e) => e.value == updateIssueRequestPriority,
      ) ??
      defaultValue;
}

String updateIssueRequestPriorityExplodedListToJson(
  List<enums.UpdateIssueRequestPriority>? updateIssueRequestPriority,
) {
  return updateIssueRequestPriority?.map((e) => e.value!).join(',') ?? '';
}

List<String> updateIssueRequestPriorityListToJson(
  List<enums.UpdateIssueRequestPriority>? updateIssueRequestPriority,
) {
  if (updateIssueRequestPriority == null) {
    return [];
  }

  return updateIssueRequestPriority.map((e) => e.value!).toList();
}

List<enums.UpdateIssueRequestPriority> updateIssueRequestPriorityListFromJson(
  List? updateIssueRequestPriority, [
  List<enums.UpdateIssueRequestPriority>? defaultValue,
]) {
  if (updateIssueRequestPriority == null) {
    return defaultValue ?? [];
  }

  return updateIssueRequestPriority
      .map((e) => updateIssueRequestPriorityFromJson(e.toString()))
      .toList();
}

List<enums.UpdateIssueRequestPriority>?
updateIssueRequestPriorityNullableListFromJson(
  List? updateIssueRequestPriority, [
  List<enums.UpdateIssueRequestPriority>? defaultValue,
]) {
  if (updateIssueRequestPriority == null) {
    return defaultValue;
  }

  return updateIssueRequestPriority
      .map((e) => updateIssueRequestPriorityFromJson(e.toString()))
      .toList();
}

String? updateIssueRequestStatusNullableToJson(
  enums.UpdateIssueRequestStatus? updateIssueRequestStatus,
) {
  return updateIssueRequestStatus?.value;
}

String? updateIssueRequestStatusToJson(
  enums.UpdateIssueRequestStatus updateIssueRequestStatus,
) {
  return updateIssueRequestStatus.value;
}

enums.UpdateIssueRequestStatus updateIssueRequestStatusFromJson(
  Object? updateIssueRequestStatus, [
  enums.UpdateIssueRequestStatus? defaultValue,
]) {
  return enums.UpdateIssueRequestStatus.values.firstWhereOrNull(
        (e) => e.value == updateIssueRequestStatus,
      ) ??
      defaultValue ??
      enums.UpdateIssueRequestStatus.swaggerGeneratedUnknown;
}

enums.UpdateIssueRequestStatus? updateIssueRequestStatusNullableFromJson(
  Object? updateIssueRequestStatus, [
  enums.UpdateIssueRequestStatus? defaultValue,
]) {
  if (updateIssueRequestStatus == null) {
    return null;
  }
  return enums.UpdateIssueRequestStatus.values.firstWhereOrNull(
        (e) => e.value == updateIssueRequestStatus,
      ) ??
      defaultValue;
}

String updateIssueRequestStatusExplodedListToJson(
  List<enums.UpdateIssueRequestStatus>? updateIssueRequestStatus,
) {
  return updateIssueRequestStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> updateIssueRequestStatusListToJson(
  List<enums.UpdateIssueRequestStatus>? updateIssueRequestStatus,
) {
  if (updateIssueRequestStatus == null) {
    return [];
  }

  return updateIssueRequestStatus.map((e) => e.value!).toList();
}

List<enums.UpdateIssueRequestStatus> updateIssueRequestStatusListFromJson(
  List? updateIssueRequestStatus, [
  List<enums.UpdateIssueRequestStatus>? defaultValue,
]) {
  if (updateIssueRequestStatus == null) {
    return defaultValue ?? [];
  }

  return updateIssueRequestStatus
      .map((e) => updateIssueRequestStatusFromJson(e.toString()))
      .toList();
}

List<enums.UpdateIssueRequestStatus>?
updateIssueRequestStatusNullableListFromJson(
  List? updateIssueRequestStatus, [
  List<enums.UpdateIssueRequestStatus>? defaultValue,
]) {
  if (updateIssueRequestStatus == null) {
    return defaultValue;
  }

  return updateIssueRequestStatus
      .map((e) => updateIssueRequestStatusFromJson(e.toString()))
      .toList();
}

String? updateVehicleRequestApprovalTypeNullableToJson(
  enums.UpdateVehicleRequestApprovalType? updateVehicleRequestApprovalType,
) {
  return updateVehicleRequestApprovalType?.value;
}

String? updateVehicleRequestApprovalTypeToJson(
  enums.UpdateVehicleRequestApprovalType updateVehicleRequestApprovalType,
) {
  return updateVehicleRequestApprovalType.value;
}

enums.UpdateVehicleRequestApprovalType updateVehicleRequestApprovalTypeFromJson(
  Object? updateVehicleRequestApprovalType, [
  enums.UpdateVehicleRequestApprovalType? defaultValue,
]) {
  return enums.UpdateVehicleRequestApprovalType.values.firstWhereOrNull(
        (e) => e.value == updateVehicleRequestApprovalType,
      ) ??
      defaultValue ??
      enums.UpdateVehicleRequestApprovalType.swaggerGeneratedUnknown;
}

enums.UpdateVehicleRequestApprovalType?
updateVehicleRequestApprovalTypeNullableFromJson(
  Object? updateVehicleRequestApprovalType, [
  enums.UpdateVehicleRequestApprovalType? defaultValue,
]) {
  if (updateVehicleRequestApprovalType == null) {
    return null;
  }
  return enums.UpdateVehicleRequestApprovalType.values.firstWhereOrNull(
        (e) => e.value == updateVehicleRequestApprovalType,
      ) ??
      defaultValue;
}

String updateVehicleRequestApprovalTypeExplodedListToJson(
  List<enums.UpdateVehicleRequestApprovalType>?
  updateVehicleRequestApprovalType,
) {
  return updateVehicleRequestApprovalType?.map((e) => e.value!).join(',') ?? '';
}

List<String> updateVehicleRequestApprovalTypeListToJson(
  List<enums.UpdateVehicleRequestApprovalType>?
  updateVehicleRequestApprovalType,
) {
  if (updateVehicleRequestApprovalType == null) {
    return [];
  }

  return updateVehicleRequestApprovalType.map((e) => e.value!).toList();
}

List<enums.UpdateVehicleRequestApprovalType>
updateVehicleRequestApprovalTypeListFromJson(
  List? updateVehicleRequestApprovalType, [
  List<enums.UpdateVehicleRequestApprovalType>? defaultValue,
]) {
  if (updateVehicleRequestApprovalType == null) {
    return defaultValue ?? [];
  }

  return updateVehicleRequestApprovalType
      .map((e) => updateVehicleRequestApprovalTypeFromJson(e.toString()))
      .toList();
}

List<enums.UpdateVehicleRequestApprovalType>?
updateVehicleRequestApprovalTypeNullableListFromJson(
  List? updateVehicleRequestApprovalType, [
  List<enums.UpdateVehicleRequestApprovalType>? defaultValue,
]) {
  if (updateVehicleRequestApprovalType == null) {
    return defaultValue;
  }

  return updateVehicleRequestApprovalType
      .map((e) => updateVehicleRequestApprovalTypeFromJson(e.toString()))
      .toList();
}

String? updateVehicleRequestOperationalStatusNullableToJson(
  enums.UpdateVehicleRequestOperationalStatus?
  updateVehicleRequestOperationalStatus,
) {
  return updateVehicleRequestOperationalStatus?.value;
}

String? updateVehicleRequestOperationalStatusToJson(
  enums.UpdateVehicleRequestOperationalStatus
  updateVehicleRequestOperationalStatus,
) {
  return updateVehicleRequestOperationalStatus.value;
}

enums.UpdateVehicleRequestOperationalStatus
updateVehicleRequestOperationalStatusFromJson(
  Object? updateVehicleRequestOperationalStatus, [
  enums.UpdateVehicleRequestOperationalStatus? defaultValue,
]) {
  return enums.UpdateVehicleRequestOperationalStatus.values.firstWhereOrNull(
        (e) => e.value == updateVehicleRequestOperationalStatus,
      ) ??
      defaultValue ??
      enums.UpdateVehicleRequestOperationalStatus.swaggerGeneratedUnknown;
}

enums.UpdateVehicleRequestOperationalStatus?
updateVehicleRequestOperationalStatusNullableFromJson(
  Object? updateVehicleRequestOperationalStatus, [
  enums.UpdateVehicleRequestOperationalStatus? defaultValue,
]) {
  if (updateVehicleRequestOperationalStatus == null) {
    return null;
  }
  return enums.UpdateVehicleRequestOperationalStatus.values.firstWhereOrNull(
        (e) => e.value == updateVehicleRequestOperationalStatus,
      ) ??
      defaultValue;
}

String updateVehicleRequestOperationalStatusExplodedListToJson(
  List<enums.UpdateVehicleRequestOperationalStatus>?
  updateVehicleRequestOperationalStatus,
) {
  return updateVehicleRequestOperationalStatus
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> updateVehicleRequestOperationalStatusListToJson(
  List<enums.UpdateVehicleRequestOperationalStatus>?
  updateVehicleRequestOperationalStatus,
) {
  if (updateVehicleRequestOperationalStatus == null) {
    return [];
  }

  return updateVehicleRequestOperationalStatus.map((e) => e.value!).toList();
}

List<enums.UpdateVehicleRequestOperationalStatus>
updateVehicleRequestOperationalStatusListFromJson(
  List? updateVehicleRequestOperationalStatus, [
  List<enums.UpdateVehicleRequestOperationalStatus>? defaultValue,
]) {
  if (updateVehicleRequestOperationalStatus == null) {
    return defaultValue ?? [];
  }

  return updateVehicleRequestOperationalStatus
      .map((e) => updateVehicleRequestOperationalStatusFromJson(e.toString()))
      .toList();
}

List<enums.UpdateVehicleRequestOperationalStatus>?
updateVehicleRequestOperationalStatusNullableListFromJson(
  List? updateVehicleRequestOperationalStatus, [
  List<enums.UpdateVehicleRequestOperationalStatus>? defaultValue,
]) {
  if (updateVehicleRequestOperationalStatus == null) {
    return defaultValue;
  }

  return updateVehicleRequestOperationalStatus
      .map((e) => updateVehicleRequestOperationalStatusFromJson(e.toString()))
      .toList();
}

String? validationErrorCodeNullableToJson(
  enums.ValidationErrorCode? validationErrorCode,
) {
  return validationErrorCode?.value;
}

String? validationErrorCodeToJson(
  enums.ValidationErrorCode validationErrorCode,
) {
  return validationErrorCode.value;
}

enums.ValidationErrorCode validationErrorCodeFromJson(
  Object? validationErrorCode, [
  enums.ValidationErrorCode? defaultValue,
]) {
  return enums.ValidationErrorCode.values.firstWhereOrNull(
        (e) => e.value == validationErrorCode,
      ) ??
      defaultValue ??
      enums.ValidationErrorCode.swaggerGeneratedUnknown;
}

enums.ValidationErrorCode? validationErrorCodeNullableFromJson(
  Object? validationErrorCode, [
  enums.ValidationErrorCode? defaultValue,
]) {
  if (validationErrorCode == null) {
    return null;
  }
  return enums.ValidationErrorCode.values.firstWhereOrNull(
        (e) => e.value == validationErrorCode,
      ) ??
      defaultValue;
}

String validationErrorCodeExplodedListToJson(
  List<enums.ValidationErrorCode>? validationErrorCode,
) {
  return validationErrorCode?.map((e) => e.value!).join(',') ?? '';
}

List<String> validationErrorCodeListToJson(
  List<enums.ValidationErrorCode>? validationErrorCode,
) {
  if (validationErrorCode == null) {
    return [];
  }

  return validationErrorCode.map((e) => e.value!).toList();
}

List<enums.ValidationErrorCode> validationErrorCodeListFromJson(
  List? validationErrorCode, [
  List<enums.ValidationErrorCode>? defaultValue,
]) {
  if (validationErrorCode == null) {
    return defaultValue ?? [];
  }

  return validationErrorCode
      .map((e) => validationErrorCodeFromJson(e.toString()))
      .toList();
}

List<enums.ValidationErrorCode>? validationErrorCodeNullableListFromJson(
  List? validationErrorCode, [
  List<enums.ValidationErrorCode>? defaultValue,
]) {
  if (validationErrorCode == null) {
    return defaultValue;
  }

  return validationErrorCode
      .map((e) => validationErrorCodeFromJson(e.toString()))
      .toList();
}

String? vehicleOperationalStatusNullableToJson(
  enums.VehicleOperationalStatus? vehicleOperationalStatus,
) {
  return vehicleOperationalStatus?.value;
}

String? vehicleOperationalStatusToJson(
  enums.VehicleOperationalStatus vehicleOperationalStatus,
) {
  return vehicleOperationalStatus.value;
}

enums.VehicleOperationalStatus vehicleOperationalStatusFromJson(
  Object? vehicleOperationalStatus, [
  enums.VehicleOperationalStatus? defaultValue,
]) {
  return enums.VehicleOperationalStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleOperationalStatus,
      ) ??
      defaultValue ??
      enums.VehicleOperationalStatus.swaggerGeneratedUnknown;
}

enums.VehicleOperationalStatus? vehicleOperationalStatusNullableFromJson(
  Object? vehicleOperationalStatus, [
  enums.VehicleOperationalStatus? defaultValue,
]) {
  if (vehicleOperationalStatus == null) {
    return null;
  }
  return enums.VehicleOperationalStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleOperationalStatus,
      ) ??
      defaultValue;
}

String vehicleOperationalStatusExplodedListToJson(
  List<enums.VehicleOperationalStatus>? vehicleOperationalStatus,
) {
  return vehicleOperationalStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> vehicleOperationalStatusListToJson(
  List<enums.VehicleOperationalStatus>? vehicleOperationalStatus,
) {
  if (vehicleOperationalStatus == null) {
    return [];
  }

  return vehicleOperationalStatus.map((e) => e.value!).toList();
}

List<enums.VehicleOperationalStatus> vehicleOperationalStatusListFromJson(
  List? vehicleOperationalStatus, [
  List<enums.VehicleOperationalStatus>? defaultValue,
]) {
  if (vehicleOperationalStatus == null) {
    return defaultValue ?? [];
  }

  return vehicleOperationalStatus
      .map((e) => vehicleOperationalStatusFromJson(e.toString()))
      .toList();
}

List<enums.VehicleOperationalStatus>?
vehicleOperationalStatusNullableListFromJson(
  List? vehicleOperationalStatus, [
  List<enums.VehicleOperationalStatus>? defaultValue,
]) {
  if (vehicleOperationalStatus == null) {
    return defaultValue;
  }

  return vehicleOperationalStatus
      .map((e) => vehicleOperationalStatusFromJson(e.toString()))
      .toList();
}

String? vehicleContractBattMaxTypeNullableToJson(
  enums.VehicleContractBattMaxType? vehicleContractBattMaxType,
) {
  return vehicleContractBattMaxType?.value;
}

String? vehicleContractBattMaxTypeToJson(
  enums.VehicleContractBattMaxType vehicleContractBattMaxType,
) {
  return vehicleContractBattMaxType.value;
}

enums.VehicleContractBattMaxType vehicleContractBattMaxTypeFromJson(
  Object? vehicleContractBattMaxType, [
  enums.VehicleContractBattMaxType? defaultValue,
]) {
  return enums.VehicleContractBattMaxType.values.firstWhereOrNull(
        (e) => e.value == vehicleContractBattMaxType,
      ) ??
      defaultValue ??
      enums.VehicleContractBattMaxType.swaggerGeneratedUnknown;
}

enums.VehicleContractBattMaxType? vehicleContractBattMaxTypeNullableFromJson(
  Object? vehicleContractBattMaxType, [
  enums.VehicleContractBattMaxType? defaultValue,
]) {
  if (vehicleContractBattMaxType == null) {
    return null;
  }
  return enums.VehicleContractBattMaxType.values.firstWhereOrNull(
        (e) => e.value == vehicleContractBattMaxType,
      ) ??
      defaultValue;
}

String vehicleContractBattMaxTypeExplodedListToJson(
  List<enums.VehicleContractBattMaxType>? vehicleContractBattMaxType,
) {
  return vehicleContractBattMaxType?.map((e) => e.value!).join(',') ?? '';
}

List<String> vehicleContractBattMaxTypeListToJson(
  List<enums.VehicleContractBattMaxType>? vehicleContractBattMaxType,
) {
  if (vehicleContractBattMaxType == null) {
    return [];
  }

  return vehicleContractBattMaxType.map((e) => e.value!).toList();
}

List<enums.VehicleContractBattMaxType> vehicleContractBattMaxTypeListFromJson(
  List? vehicleContractBattMaxType, [
  List<enums.VehicleContractBattMaxType>? defaultValue,
]) {
  if (vehicleContractBattMaxType == null) {
    return defaultValue ?? [];
  }

  return vehicleContractBattMaxType
      .map((e) => vehicleContractBattMaxTypeFromJson(e.toString()))
      .toList();
}

List<enums.VehicleContractBattMaxType>?
vehicleContractBattMaxTypeNullableListFromJson(
  List? vehicleContractBattMaxType, [
  List<enums.VehicleContractBattMaxType>? defaultValue,
]) {
  if (vehicleContractBattMaxType == null) {
    return defaultValue;
  }

  return vehicleContractBattMaxType
      .map((e) => vehicleContractBattMaxTypeFromJson(e.toString()))
      .toList();
}

String? vehicleLockStatusCentralLockStatusNullableToJson(
  enums.VehicleLockStatusCentralLockStatus? vehicleLockStatusCentralLockStatus,
) {
  return vehicleLockStatusCentralLockStatus?.value;
}

String? vehicleLockStatusCentralLockStatusToJson(
  enums.VehicleLockStatusCentralLockStatus vehicleLockStatusCentralLockStatus,
) {
  return vehicleLockStatusCentralLockStatus.value;
}

enums.VehicleLockStatusCentralLockStatus
vehicleLockStatusCentralLockStatusFromJson(
  Object? vehicleLockStatusCentralLockStatus, [
  enums.VehicleLockStatusCentralLockStatus? defaultValue,
]) {
  return enums.VehicleLockStatusCentralLockStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleLockStatusCentralLockStatus,
      ) ??
      defaultValue ??
      enums.VehicleLockStatusCentralLockStatus.swaggerGeneratedUnknown;
}

enums.VehicleLockStatusCentralLockStatus?
vehicleLockStatusCentralLockStatusNullableFromJson(
  Object? vehicleLockStatusCentralLockStatus, [
  enums.VehicleLockStatusCentralLockStatus? defaultValue,
]) {
  if (vehicleLockStatusCentralLockStatus == null) {
    return null;
  }
  return enums.VehicleLockStatusCentralLockStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleLockStatusCentralLockStatus,
      ) ??
      defaultValue;
}

String vehicleLockStatusCentralLockStatusExplodedListToJson(
  List<enums.VehicleLockStatusCentralLockStatus>?
  vehicleLockStatusCentralLockStatus,
) {
  return vehicleLockStatusCentralLockStatus?.map((e) => e.value!).join(',') ??
      '';
}

List<String> vehicleLockStatusCentralLockStatusListToJson(
  List<enums.VehicleLockStatusCentralLockStatus>?
  vehicleLockStatusCentralLockStatus,
) {
  if (vehicleLockStatusCentralLockStatus == null) {
    return [];
  }

  return vehicleLockStatusCentralLockStatus.map((e) => e.value!).toList();
}

List<enums.VehicleLockStatusCentralLockStatus>
vehicleLockStatusCentralLockStatusListFromJson(
  List? vehicleLockStatusCentralLockStatus, [
  List<enums.VehicleLockStatusCentralLockStatus>? defaultValue,
]) {
  if (vehicleLockStatusCentralLockStatus == null) {
    return defaultValue ?? [];
  }

  return vehicleLockStatusCentralLockStatus
      .map((e) => vehicleLockStatusCentralLockStatusFromJson(e.toString()))
      .toList();
}

List<enums.VehicleLockStatusCentralLockStatus>?
vehicleLockStatusCentralLockStatusNullableListFromJson(
  List? vehicleLockStatusCentralLockStatus, [
  List<enums.VehicleLockStatusCentralLockStatus>? defaultValue,
]) {
  if (vehicleLockStatusCentralLockStatus == null) {
    return defaultValue;
  }

  return vehicleLockStatusCentralLockStatus
      .map((e) => vehicleLockStatusCentralLockStatusFromJson(e.toString()))
      .toList();
}

String? vehicleLockStatusImmobilizerStatusNullableToJson(
  enums.VehicleLockStatusImmobilizerStatus? vehicleLockStatusImmobilizerStatus,
) {
  return vehicleLockStatusImmobilizerStatus?.value;
}

String? vehicleLockStatusImmobilizerStatusToJson(
  enums.VehicleLockStatusImmobilizerStatus vehicleLockStatusImmobilizerStatus,
) {
  return vehicleLockStatusImmobilizerStatus.value;
}

enums.VehicleLockStatusImmobilizerStatus
vehicleLockStatusImmobilizerStatusFromJson(
  Object? vehicleLockStatusImmobilizerStatus, [
  enums.VehicleLockStatusImmobilizerStatus? defaultValue,
]) {
  return enums.VehicleLockStatusImmobilizerStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleLockStatusImmobilizerStatus,
      ) ??
      defaultValue ??
      enums.VehicleLockStatusImmobilizerStatus.swaggerGeneratedUnknown;
}

enums.VehicleLockStatusImmobilizerStatus?
vehicleLockStatusImmobilizerStatusNullableFromJson(
  Object? vehicleLockStatusImmobilizerStatus, [
  enums.VehicleLockStatusImmobilizerStatus? defaultValue,
]) {
  if (vehicleLockStatusImmobilizerStatus == null) {
    return null;
  }
  return enums.VehicleLockStatusImmobilizerStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleLockStatusImmobilizerStatus,
      ) ??
      defaultValue;
}

String vehicleLockStatusImmobilizerStatusExplodedListToJson(
  List<enums.VehicleLockStatusImmobilizerStatus>?
  vehicleLockStatusImmobilizerStatus,
) {
  return vehicleLockStatusImmobilizerStatus?.map((e) => e.value!).join(',') ??
      '';
}

List<String> vehicleLockStatusImmobilizerStatusListToJson(
  List<enums.VehicleLockStatusImmobilizerStatus>?
  vehicleLockStatusImmobilizerStatus,
) {
  if (vehicleLockStatusImmobilizerStatus == null) {
    return [];
  }

  return vehicleLockStatusImmobilizerStatus.map((e) => e.value!).toList();
}

List<enums.VehicleLockStatusImmobilizerStatus>
vehicleLockStatusImmobilizerStatusListFromJson(
  List? vehicleLockStatusImmobilizerStatus, [
  List<enums.VehicleLockStatusImmobilizerStatus>? defaultValue,
]) {
  if (vehicleLockStatusImmobilizerStatus == null) {
    return defaultValue ?? [];
  }

  return vehicleLockStatusImmobilizerStatus
      .map((e) => vehicleLockStatusImmobilizerStatusFromJson(e.toString()))
      .toList();
}

List<enums.VehicleLockStatusImmobilizerStatus>?
vehicleLockStatusImmobilizerStatusNullableListFromJson(
  List? vehicleLockStatusImmobilizerStatus, [
  List<enums.VehicleLockStatusImmobilizerStatus>? defaultValue,
]) {
  if (vehicleLockStatusImmobilizerStatus == null) {
    return defaultValue;
  }

  return vehicleLockStatusImmobilizerStatus
      .map((e) => vehicleLockStatusImmobilizerStatusFromJson(e.toString()))
      .toList();
}

String? vehicleUsageStatusNullableToJson(
  enums.VehicleUsageStatus? vehicleUsageStatus,
) {
  return vehicleUsageStatus?.value;
}

String? vehicleUsageStatusToJson(enums.VehicleUsageStatus vehicleUsageStatus) {
  return vehicleUsageStatus.value;
}

enums.VehicleUsageStatus vehicleUsageStatusFromJson(
  Object? vehicleUsageStatus, [
  enums.VehicleUsageStatus? defaultValue,
]) {
  return enums.VehicleUsageStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleUsageStatus,
      ) ??
      defaultValue ??
      enums.VehicleUsageStatus.swaggerGeneratedUnknown;
}

enums.VehicleUsageStatus? vehicleUsageStatusNullableFromJson(
  Object? vehicleUsageStatus, [
  enums.VehicleUsageStatus? defaultValue,
]) {
  if (vehicleUsageStatus == null) {
    return null;
  }
  return enums.VehicleUsageStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleUsageStatus,
      ) ??
      defaultValue;
}

String vehicleUsageStatusExplodedListToJson(
  List<enums.VehicleUsageStatus>? vehicleUsageStatus,
) {
  return vehicleUsageStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> vehicleUsageStatusListToJson(
  List<enums.VehicleUsageStatus>? vehicleUsageStatus,
) {
  if (vehicleUsageStatus == null) {
    return [];
  }

  return vehicleUsageStatus.map((e) => e.value!).toList();
}

List<enums.VehicleUsageStatus> vehicleUsageStatusListFromJson(
  List? vehicleUsageStatus, [
  List<enums.VehicleUsageStatus>? defaultValue,
]) {
  if (vehicleUsageStatus == null) {
    return defaultValue ?? [];
  }

  return vehicleUsageStatus
      .map((e) => vehicleUsageStatusFromJson(e.toString()))
      .toList();
}

List<enums.VehicleUsageStatus>? vehicleUsageStatusNullableListFromJson(
  List? vehicleUsageStatus, [
  List<enums.VehicleUsageStatus>? defaultValue,
]) {
  if (vehicleUsageStatus == null) {
    return defaultValue;
  }

  return vehicleUsageStatus
      .map((e) => vehicleUsageStatusFromJson(e.toString()))
      .toList();
}

String? vehicleUsageUpdateStatusRequestStatusNullableToJson(
  enums.VehicleUsageUpdateStatusRequestStatus?
  vehicleUsageUpdateStatusRequestStatus,
) {
  return vehicleUsageUpdateStatusRequestStatus?.value;
}

String? vehicleUsageUpdateStatusRequestStatusToJson(
  enums.VehicleUsageUpdateStatusRequestStatus
  vehicleUsageUpdateStatusRequestStatus,
) {
  return vehicleUsageUpdateStatusRequestStatus.value;
}

enums.VehicleUsageUpdateStatusRequestStatus
vehicleUsageUpdateStatusRequestStatusFromJson(
  Object? vehicleUsageUpdateStatusRequestStatus, [
  enums.VehicleUsageUpdateStatusRequestStatus? defaultValue,
]) {
  return enums.VehicleUsageUpdateStatusRequestStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleUsageUpdateStatusRequestStatus,
      ) ??
      defaultValue ??
      enums.VehicleUsageUpdateStatusRequestStatus.swaggerGeneratedUnknown;
}

enums.VehicleUsageUpdateStatusRequestStatus?
vehicleUsageUpdateStatusRequestStatusNullableFromJson(
  Object? vehicleUsageUpdateStatusRequestStatus, [
  enums.VehicleUsageUpdateStatusRequestStatus? defaultValue,
]) {
  if (vehicleUsageUpdateStatusRequestStatus == null) {
    return null;
  }
  return enums.VehicleUsageUpdateStatusRequestStatus.values.firstWhereOrNull(
        (e) => e.value == vehicleUsageUpdateStatusRequestStatus,
      ) ??
      defaultValue;
}

String vehicleUsageUpdateStatusRequestStatusExplodedListToJson(
  List<enums.VehicleUsageUpdateStatusRequestStatus>?
  vehicleUsageUpdateStatusRequestStatus,
) {
  return vehicleUsageUpdateStatusRequestStatus
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> vehicleUsageUpdateStatusRequestStatusListToJson(
  List<enums.VehicleUsageUpdateStatusRequestStatus>?
  vehicleUsageUpdateStatusRequestStatus,
) {
  if (vehicleUsageUpdateStatusRequestStatus == null) {
    return [];
  }

  return vehicleUsageUpdateStatusRequestStatus.map((e) => e.value!).toList();
}

List<enums.VehicleUsageUpdateStatusRequestStatus>
vehicleUsageUpdateStatusRequestStatusListFromJson(
  List? vehicleUsageUpdateStatusRequestStatus, [
  List<enums.VehicleUsageUpdateStatusRequestStatus>? defaultValue,
]) {
  if (vehicleUsageUpdateStatusRequestStatus == null) {
    return defaultValue ?? [];
  }

  return vehicleUsageUpdateStatusRequestStatus
      .map((e) => vehicleUsageUpdateStatusRequestStatusFromJson(e.toString()))
      .toList();
}

List<enums.VehicleUsageUpdateStatusRequestStatus>?
vehicleUsageUpdateStatusRequestStatusNullableListFromJson(
  List? vehicleUsageUpdateStatusRequestStatus, [
  List<enums.VehicleUsageUpdateStatusRequestStatus>? defaultValue,
]) {
  if (vehicleUsageUpdateStatusRequestStatus == null) {
    return defaultValue;
  }

  return vehicleUsageUpdateStatusRequestStatus
      .map((e) => vehicleUsageUpdateStatusRequestStatusFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
