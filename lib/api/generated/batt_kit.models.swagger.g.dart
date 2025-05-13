// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batt_kit.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddVehicleLocationRequest _$AddVehicleLocationRequestFromJson(
        Map<String, dynamic> json) =>
    AddVehicleLocationRequest(
      from:
          json['from'] == null ? null : DateTime.parse(json['from'] as String),
      name: json['name'] as String?,
      vehicleBaseLocationId: json['vehicleBaseLocationId'] as String?,
    );

Map<String, dynamic> _$AddVehicleLocationRequestToJson(
        AddVehicleLocationRequest instance) =>
    <String, dynamic>{
      'from': instance.from?.toIso8601String(),
      'name': instance.name,
      'vehicleBaseLocationId': instance.vehicleBaseLocationId,
    };

AddVehiclesToGroupRequest _$AddVehiclesToGroupRequestFromJson(
        Map<String, dynamic> json) =>
    AddVehiclesToGroupRequest(
      vehicleIds: (json['vehicleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$AddVehiclesToGroupRequestToJson(
        AddVehiclesToGroupRequest instance) =>
    <String, dynamic>{
      'vehicleIds': instance.vehicleIds,
    };

AdjacentNonAvailability _$AdjacentNonAvailabilityFromJson(
        Map<String, dynamic> json) =>
    AdjacentNonAvailability(
      active: json['active'] as bool?,
      bookingId: json['bookingId'] as String?,
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      type: adjacentNonAvailabilityTypeNullableFromJson(json['type']),
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$AdjacentNonAvailabilityToJson(
        AdjacentNonAvailability instance) =>
    <String, dynamic>{
      'active': instance.active,
      'bookingId': instance.bookingId,
      'period': instance.period?.toJson(),
      'type': adjacentNonAvailabilityTypeNullableToJson(instance.type),
      'userId': instance.userId,
      'userName': instance.userName,
    };

ApiErrorResponse _$ApiErrorResponseFromJson(Map<String, dynamic> json) =>
    ApiErrorResponse(
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApiErrorResponseToJson(ApiErrorResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };

ApiValidationResponse _$ApiValidationResponseFromJson(
        Map<String, dynamic> json) =>
    ApiValidationResponse(
      validationErrors: json['validationErrors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ApiValidationResponseToJson(
        ApiValidationResponse instance) =>
    <String, dynamic>{
      'validationErrors': instance.validationErrors,
    };

BatteryStatus _$BatteryStatusFromJson(Map<String, dynamic> json) =>
    BatteryStatus(
      ageInSeconds: (json['ageInSeconds'] as num?)?.toInt(),
      batteryPercentage: (json['batteryPercentage'] as num?)?.toInt(),
      charging: batteryStatusChargingNullableFromJson(json['charging']),
      cruisingRange: (json['cruisingRange'] as num?)?.toInt(),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$BatteryStatusToJson(BatteryStatus instance) =>
    <String, dynamic>{
      'ageInSeconds': instance.ageInSeconds,
      'batteryPercentage': instance.batteryPercentage,
      'charging': batteryStatusChargingNullableToJson(instance.charging),
      'cruisingRange': instance.cruisingRange,
      'errorMessage': instance.errorMessage,
    };

BillingPrice _$BillingPriceFromJson(Map<String, dynamic> json) => BillingPrice(
      amount: (json['amount'] as num?)?.toInt(),
      changeFromHourlyToDaily: json['changeFromHourlyToDaily'] as bool?,
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      hourlyTotalNotCharged:
          (json['hourlyTotalNotCharged'] as num?)?.toDouble(),
      hourlyTotalNotChargedExclVat:
          (json['hourlyTotalNotChargedExclVat'] as num?)?.toDouble(),
      km: (json['km'] as num?)?.toInt(),
      kmPrice: (json['kmPrice'] as num?)?.toDouble(),
      kmPriceExclVat: (json['kmPriceExclVat'] as num?)?.toDouble(),
      kmTotal: (json['kmTotal'] as num?)?.toDouble(),
      kmTotalExclVat: (json['kmTotalExclVat'] as num?)?.toDouble(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      timeAmount: (json['timeAmount'] as num?)?.toDouble(),
      timeTotal: (json['timeTotal'] as num?)?.toDouble(),
      timeTotalExclVat: (json['timeTotalExclVat'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      totalExclVat: (json['totalExclVat'] as num?)?.toDouble(),
      totalVat: (json['totalVat'] as num?)?.toDouble(),
      unit: billingPriceUnitNullableFromJson(json['unit']),
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      unitPriceExclVat: (json['unitPriceExclVat'] as num?)?.toDouble(),
      vatRate: (json['vatRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BillingPriceToJson(BillingPrice instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'changeFromHourlyToDaily': instance.changeFromHourlyToDaily,
      'endDate': instance.endDate?.toIso8601String(),
      'hourlyTotalNotCharged': instance.hourlyTotalNotCharged,
      'hourlyTotalNotChargedExclVat': instance.hourlyTotalNotChargedExclVat,
      'km': instance.km,
      'kmPrice': instance.kmPrice,
      'kmPriceExclVat': instance.kmPriceExclVat,
      'kmTotal': instance.kmTotal,
      'kmTotalExclVat': instance.kmTotalExclVat,
      'startDate': instance.startDate?.toIso8601String(),
      'timeAmount': instance.timeAmount,
      'timeTotal': instance.timeTotal,
      'timeTotalExclVat': instance.timeTotalExclVat,
      'total': instance.total,
      'totalExclVat': instance.totalExclVat,
      'totalVat': instance.totalVat,
      'unit': billingPriceUnitNullableToJson(instance.unit),
      'unitPrice': instance.unitPrice,
      'unitPriceExclVat': instance.unitPriceExclVat,
      'vatRate': instance.vatRate,
    };

BluetoothToken _$BluetoothTokenFromJson(Map<String, dynamic> json) =>
    BluetoothToken(
      deviceId: json['deviceId'] as String?,
      encodedToken: json['encodedToken'] as String?,
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      sessionToken: json['sessionToken'] as String?,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      tokenChunks: (json['tokenChunks'] as List<dynamic>?)
              ?.map(
                  (e) => (e as List<dynamic>).map((e) => e as String?).toList())
              .toList() ??
          [],
    );

Map<String, dynamic> _$BluetoothTokenToJson(BluetoothToken instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'encodedToken': instance.encodedToken,
      'end': instance.end?.toIso8601String(),
      'sessionToken': instance.sessionToken,
      'start': instance.start?.toIso8601String(),
      'tokenChunks': instance.tokenChunks,
    };

BodyStyle _$BodyStyleFromJson(Map<String, dynamic> json) => BodyStyle(
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$BodyStyleToJson(BodyStyle instance) => <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
    };

BodyStylePage _$BodyStylePageFromJson(Map<String, dynamic> json) =>
    BodyStylePage(
      bodyStyles: (json['bodyStyles'] as List<dynamic>?)
              ?.map((e) => BodyStyle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BodyStylePageToJson(BodyStylePage instance) =>
    <String, dynamic>{
      'bodyStyles': instance.bodyStyles?.map((e) => e.toJson()).toList(),
    };

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      adminComments: json['adminComments'] as String?,
      billingPrice: json['billingPrice'] == null
          ? null
          : BillingPrice.fromJson(json['billingPrice'] as Map<String, dynamic>),
      canBeStarted: json['canBeStarted'] as bool?,
      cancelDate: json['cancelDate'] == null
          ? null
          : DateTime.parse(json['cancelDate'] as String),
      cancelReason: json['cancelReason'] as String?,
      clientId: json['clientId'] as String?,
      comments: json['comments'] as String?,
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      id: json['id'] as String?,
      invoiceStatus:
          bookingInvoiceStatusNullableFromJson(json['invoiceStatus']),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      nextPossibleStatuses: bookingNextPossibleStatusesListFromJson(
          json['nextPossibleStatuses'] as List?),
      originalEndDate: json['originalEndDate'] == null
          ? null
          : DateTime.parse(json['originalEndDate'] as String),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      status: bookingStatusNullableFromJson(json['status']),
      userId: json['userId'] as String?,
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      vehicleUsage: json['vehicleUsage'] == null
          ? null
          : VehicleUsage.fromJson(json['vehicleUsage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'adminComments': instance.adminComments,
      'billingPrice': instance.billingPrice?.toJson(),
      'canBeStarted': instance.canBeStarted,
      'cancelDate': instance.cancelDate?.toIso8601String(),
      'cancelReason': instance.cancelReason,
      'clientId': instance.clientId,
      'comments': instance.comments,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'id': instance.id,
      'invoiceStatus':
          bookingInvoiceStatusNullableToJson(instance.invoiceStatus),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'nextPossibleStatuses':
          bookingNextPossibleStatusesListToJson(instance.nextPossibleStatuses),
      'originalEndDate': instance.originalEndDate?.toIso8601String(),
      'period': instance.period?.toJson(),
      'status': bookingStatusNullableToJson(instance.status),
      'userId': instance.userId,
      'vehicle': instance.vehicle?.toJson(),
      'vehicleUsage': instance.vehicleUsage?.toJson(),
    };

BookingBillingPrice _$BookingBillingPriceFromJson(Map<String, dynamic> json) =>
    BookingBillingPrice(
      amount: (json['amount'] as num?)?.toInt(),
      changeFromHourlyToDaily: json['changeFromHourlyToDaily'] as bool?,
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      hourlyTotalNotCharged:
          (json['hourlyTotalNotCharged'] as num?)?.toDouble(),
      hourlyTotalNotChargedExclVat:
          (json['hourlyTotalNotChargedExclVat'] as num?)?.toDouble(),
      km: (json['km'] as num?)?.toInt(),
      kmPrice: (json['kmPrice'] as num?)?.toDouble(),
      kmPriceExclVat: (json['kmPriceExclVat'] as num?)?.toDouble(),
      kmTotal: (json['kmTotal'] as num?)?.toDouble(),
      kmTotalExclVat: (json['kmTotalExclVat'] as num?)?.toDouble(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      timeAmount: (json['timeAmount'] as num?)?.toDouble(),
      timeTotal: (json['timeTotal'] as num?)?.toDouble(),
      timeTotalExclVat: (json['timeTotalExclVat'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      totalExclVat: (json['totalExclVat'] as num?)?.toDouble(),
      totalVat: (json['totalVat'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      unitPriceExclVat: (json['unitPriceExclVat'] as num?)?.toDouble(),
      vatRate: (json['vatRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BookingBillingPriceToJson(
        BookingBillingPrice instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'changeFromHourlyToDaily': instance.changeFromHourlyToDaily,
      'endDate': instance.endDate?.toIso8601String(),
      'hourlyTotalNotCharged': instance.hourlyTotalNotCharged,
      'hourlyTotalNotChargedExclVat': instance.hourlyTotalNotChargedExclVat,
      'km': instance.km,
      'kmPrice': instance.kmPrice,
      'kmPriceExclVat': instance.kmPriceExclVat,
      'kmTotal': instance.kmTotal,
      'kmTotalExclVat': instance.kmTotalExclVat,
      'startDate': instance.startDate?.toIso8601String(),
      'timeAmount': instance.timeAmount,
      'timeTotal': instance.timeTotal,
      'timeTotalExclVat': instance.timeTotalExclVat,
      'total': instance.total,
      'totalExclVat': instance.totalExclVat,
      'totalVat': instance.totalVat,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'unitPriceExclVat': instance.unitPriceExclVat,
      'vatRate': instance.vatRate,
    };

BookingBillingPriceResponse _$BookingBillingPriceResponseFromJson(
        Map<String, dynamic> json) =>
    BookingBillingPriceResponse(
      bookingBillingPrice: BookingBillingPrice.fromJson(
          json['bookingBillingPrice'] as Map<String, dynamic>),
      dayPrice: (json['dayPrice'] as num).toDouble(),
      hourPrice: (json['hourPrice'] as num).toDouble(),
      kmPrice: (json['kmPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$BookingBillingPriceResponseToJson(
        BookingBillingPriceResponse instance) =>
    <String, dynamic>{
      'bookingBillingPrice': instance.bookingBillingPrice.toJson(),
      'dayPrice': instance.dayPrice,
      'hourPrice': instance.hourPrice,
      'kmPrice': instance.kmPrice,
    };

BookingPrice _$BookingPriceFromJson(Map<String, dynamic> json) => BookingPrice(
      dayPrice: (json['dayPrice'] as num).toDouble(),
      hourPrice: (json['hourPrice'] as num).toDouble(),
      kmPrice: (json['kmPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$BookingPriceToJson(BookingPrice instance) =>
    <String, dynamic>{
      'dayPrice': instance.dayPrice,
      'hourPrice': instance.hourPrice,
      'kmPrice': instance.kmPrice,
    };

BookingsPage _$BookingsPageFromJson(Map<String, dynamic> json) => BookingsPage(
      bookings: (json['bookings'] as List<dynamic>?)
              ?.map((e) => Booking.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BookingsPageToJson(BookingsPage instance) =>
    <String, dynamic>{
      'bookings': instance.bookings?.map((e) => e.toJson()).toList(),
    };

CancelBookingRequest _$CancelBookingRequestFromJson(
        Map<String, dynamic> json) =>
    CancelBookingRequest(
      bookingId: json['bookingId'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$CancelBookingRequestToJson(
        CancelBookingRequest instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'reason': instance.reason,
    };

ChangeContractCommitmentHints _$ChangeContractCommitmentHintsFromJson(
        Map<String, dynamic> json) =>
    ChangeContractCommitmentHints(
      actionAllowed: json['actionAllowed'] as bool?,
      canDecrease: json['canDecrease'] as bool?,
      canIncrease: json['canIncrease'] as bool?,
      changeOption:
          commitmentChangeOptionNullableFromJson(json['changeOption']),
      currentCommitmentAmountInclVat:
          (json['currentCommitmentAmountInclVat'] as num?)?.toDouble(),
      decreaseBlockedReason:
          validationErrorCodeNullableFromJson(json['decreaseBlockedReason']),
      earliestDecreaseDate: json['earliestDecreaseDate'] == null
          ? null
          : DateTime.parse(json['earliestDecreaseDate'] as String),
      earliestIncreaseDate: json['earliestIncreaseDate'] == null
          ? null
          : DateTime.parse(json['earliestIncreaseDate'] as String),
      increaseBlockedReason:
          validationErrorCodeNullableFromJson(json['increaseBlockedReason']),
    );

Map<String, dynamic> _$ChangeContractCommitmentHintsToJson(
        ChangeContractCommitmentHints instance) =>
    <String, dynamic>{
      'actionAllowed': instance.actionAllowed,
      'canDecrease': instance.canDecrease,
      'canIncrease': instance.canIncrease,
      'changeOption':
          commitmentChangeOptionNullableToJson(instance.changeOption),
      'currentCommitmentAmountInclVat': instance.currentCommitmentAmountInclVat,
      'decreaseBlockedReason':
          validationErrorCodeNullableToJson(instance.decreaseBlockedReason),
      'earliestDecreaseDate': _dateToJson(instance.earliestDecreaseDate),
      'earliestIncreaseDate': _dateToJson(instance.earliestIncreaseDate),
      'increaseBlockedReason':
          validationErrorCodeNullableToJson(instance.increaseBlockedReason),
    };

ChangeContractCommitmentHintsApiDataResponse
    _$ChangeContractCommitmentHintsApiDataResponseFromJson(
            Map<String, dynamic> json) =>
        ChangeContractCommitmentHintsApiDataResponse(
          data: json['data'] == null
              ? null
              : ChangeContractCommitmentHints.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ChangeContractCommitmentHintsApiDataResponseToJson(
        ChangeContractCommitmentHintsApiDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

ChangeContractCommitmentRequest _$ChangeContractCommitmentRequestFromJson(
        Map<String, dynamic> json) =>
    ChangeContractCommitmentRequest(
      changeDate: json['changeDate'] == null
          ? null
          : DateTime.parse(json['changeDate'] as String),
      commitmentAmountInclVat:
          (json['commitmentAmountInclVat'] as num?)?.toDouble(),
      memo: json['memo'] as String?,
    );

Map<String, dynamic> _$ChangeContractCommitmentRequestToJson(
        ChangeContractCommitmentRequest instance) =>
    <String, dynamic>{
      'changeDate': _dateToJson(instance.changeDate),
      'commitmentAmountInclVat': instance.commitmentAmountInclVat,
      'memo': instance.memo,
    };

ChangeContractFormulaHints _$ChangeContractFormulaHintsFromJson(
        Map<String, dynamic> json) =>
    ChangeContractFormulaHints(
      actionAllowed: json['actionAllowed'] as bool?,
      currentCommitmentAmountInclVat:
          (json['currentCommitmentAmountInclVat'] as num?)?.toDouble(),
      currentFormula:
          clientContractFormulaNullableFromJson(json['currentFormula']),
      currentFormulaEnd: json['currentFormulaEnd'] == null
          ? null
          : DateTime.parse(json['currentFormulaEnd'] as String),
      currentFormulaStart: json['currentFormulaStart'] == null
          ? null
          : DateTime.parse(json['currentFormulaStart'] as String),
      hints: (json['hints'] as List<dynamic>?)
              ?.map((e) => ChangeToContractFormulaHint.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      willOverrideFutureFormula: json['willOverrideFutureFormula'] as bool?,
    );

Map<String, dynamic> _$ChangeContractFormulaHintsToJson(
        ChangeContractFormulaHints instance) =>
    <String, dynamic>{
      'actionAllowed': instance.actionAllowed,
      'currentCommitmentAmountInclVat': instance.currentCommitmentAmountInclVat,
      'currentFormula':
          clientContractFormulaNullableToJson(instance.currentFormula),
      'currentFormulaEnd': _dateToJson(instance.currentFormulaEnd),
      'currentFormulaStart': _dateToJson(instance.currentFormulaStart),
      'hints': instance.hints?.map((e) => e.toJson()).toList(),
      'willOverrideFutureFormula': instance.willOverrideFutureFormula,
    };

ChangeContractFormulaHintsApiDataResponse
    _$ChangeContractFormulaHintsApiDataResponseFromJson(
            Map<String, dynamic> json) =>
        ChangeContractFormulaHintsApiDataResponse(
          data: json['data'] == null
              ? null
              : ChangeContractFormulaHints.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ChangeContractFormulaHintsApiDataResponseToJson(
        ChangeContractFormulaHintsApiDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

ChangeContractFormulaRequest _$ChangeContractFormulaRequestFromJson(
        Map<String, dynamic> json) =>
    ChangeContractFormulaRequest(
      changeDate: json['changeDate'] == null
          ? null
          : DateTime.parse(json['changeDate'] as String),
      commitmentAmountInclVat:
          (json['commitmentAmountInclVat'] as num?)?.toDouble(),
      formula: clientContractFormulaNullableFromJson(json['formula']),
      memo: json['memo'] as String?,
    );

Map<String, dynamic> _$ChangeContractFormulaRequestToJson(
        ChangeContractFormulaRequest instance) =>
    <String, dynamic>{
      'changeDate': _dateToJson(instance.changeDate),
      'commitmentAmountInclVat': instance.commitmentAmountInclVat,
      'formula': clientContractFormulaNullableToJson(instance.formula),
      'memo': instance.memo,
    };

ChangeLockRequest _$ChangeLockRequestFromJson(Map<String, dynamic> json) =>
    ChangeLockRequest(
      keyFobCheck: json['keyFobCheck'] as bool?,
      lockStatus:
          changeLockRequestLockStatusNullableFromJson(json['lockStatus']),
      unlockDistanceCheck: json['unlockDistanceCheck'] as bool?,
      userLocation: json['userLocation'] == null
          ? null
          : LocationPosition.fromJson(
              json['userLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChangeLockRequestToJson(ChangeLockRequest instance) =>
    <String, dynamic>{
      'keyFobCheck': instance.keyFobCheck,
      'lockStatus':
          changeLockRequestLockStatusNullableToJson(instance.lockStatus),
      'unlockDistanceCheck': instance.unlockDistanceCheck,
      'userLocation': instance.userLocation?.toJson(),
    };

ChangeToContractFormulaHint _$ChangeToContractFormulaHintFromJson(
        Map<String, dynamic> json) =>
    ChangeToContractFormulaHint(
      changeOption: formulaChangeOptionNullableFromJson(json['changeOption']),
      earliestChangeDate: json['earliestChangeDate'] == null
          ? null
          : DateTime.parse(json['earliestChangeDate'] as String),
      targetFormula:
          clientContractFormulaNullableFromJson(json['targetFormula']),
    );

Map<String, dynamic> _$ChangeToContractFormulaHintToJson(
        ChangeToContractFormulaHint instance) =>
    <String, dynamic>{
      'changeOption': formulaChangeOptionNullableToJson(instance.changeOption),
      'earliestChangeDate': _dateToJson(instance.earliestChangeDate),
      'targetFormula':
          clientContractFormulaNullableToJson(instance.targetFormula),
    };

ChangeVehicleUsageRequest _$ChangeVehicleUsageRequestFromJson(
        Map<String, dynamic> json) =>
    ChangeVehicleUsageRequest(
      changeLockRequest: json['changeLockRequest'] == null
          ? null
          : ChangeLockRequest.fromJson(
              json['changeLockRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChangeVehicleUsageRequestToJson(
        ChangeVehicleUsageRequest instance) =>
    <String, dynamic>{
      'changeLockRequest': instance.changeLockRequest?.toJson(),
    };

Client _$ClientFromJson(Map<String, dynamic> json) => Client(
      billingEmail: json['billingEmail'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nr: json['nr'] as String?,
      postalCode: json['postalCode'] as String?,
      street: json['street'] as String?,
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => ContractUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      vat: json['vat'] as String?,
    );

Map<String, dynamic> _$ClientToJson(Client instance) => <String, dynamic>{
      'billingEmail': instance.billingEmail,
      'city': instance.city,
      'country': instance.country,
      'id': instance.id,
      'name': instance.name,
      'nr': instance.nr,
      'postalCode': instance.postalCode,
      'street': instance.street,
      'users': instance.users?.map((e) => e.toJson()).toList(),
      'vat': instance.vat,
    };

ClientContractBaseSearchRequest _$ClientContractBaseSearchRequestFromJson(
        Map<String, dynamic> json) =>
    ClientContractBaseSearchRequest(
      flexSearch: json['flexSearch'] as String?,
      orderBy: json['orderBy'] as String?,
    );

Map<String, dynamic> _$ClientContractBaseSearchRequestToJson(
        ClientContractBaseSearchRequest instance) =>
    <String, dynamic>{
      'flexSearch': instance.flexSearch,
      'orderBy': instance.orderBy,
    };

ClientContractDto _$ClientContractDtoFromJson(Map<String, dynamic> json) =>
    ClientContractDto(
      billingInstructions: json['billingInstructions'] as String?,
      billingType: json['billingType'] as String?,
      $client: json['client'] == null
          ? null
          : ClientReferenceDto.fromJson(json['client'] as Map<String, dynamic>),
      clientContractType:
          clientContractTypeNullableFromJson(json['clientContractType']),
      contractDate: json['contractDate'] == null
          ? null
          : DateTime.parse(json['contractDate'] as String),
      contractFileName: json['contractFileName'] as String?,
      currentFormula:
          clientContractFormulaNullableFromJson(json['currentFormula']),
      dateOfCancellation: json['dateOfCancellation'] == null
          ? null
          : DateTime.parse(json['dateOfCancellation'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      id: (json['id'] as num?)?.toInt(),
      isCompletelySettled: json['isCompletelySettled'] as bool?,
      isSuspended: json['isSuspended'] as bool?,
      memo: json['memo'] as String?,
      overrideAutoDescription: json['overrideAutoDescription'] as String?,
      reasonOfCancellation: json['reasonOfCancellation'] as String?,
      settings: json['settings'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      status: clientContractStatusNullableFromJson(json['status']),
      suspensionReason: json['suspensionReason'] as String?,
      usage: json['usage'] == null
          ? null
          : ClientContractUsageDto.fromJson(
              json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClientContractDtoToJson(ClientContractDto instance) =>
    <String, dynamic>{
      'billingInstructions': instance.billingInstructions,
      'billingType': instance.billingType,
      'client': instance.$client?.toJson(),
      'clientContractType':
          clientContractTypeNullableToJson(instance.clientContractType),
      'contractDate': _dateToJson(instance.contractDate),
      'contractFileName': instance.contractFileName,
      'currentFormula':
          clientContractFormulaNullableToJson(instance.currentFormula),
      'dateOfCancellation': _dateToJson(instance.dateOfCancellation),
      'endDate': _dateToJson(instance.endDate),
      'id': instance.id,
      'isCompletelySettled': instance.isCompletelySettled,
      'isSuspended': instance.isSuspended,
      'memo': instance.memo,
      'overrideAutoDescription': instance.overrideAutoDescription,
      'reasonOfCancellation': instance.reasonOfCancellation,
      'settings': instance.settings,
      'startDate': _dateToJson(instance.startDate),
      'status': clientContractStatusNullableToJson(instance.status),
      'suspensionReason': instance.suspensionReason,
      'usage': instance.usage?.toJson(),
    };

ClientContractDtoApiDataResponse _$ClientContractDtoApiDataResponseFromJson(
        Map<String, dynamic> json) =>
    ClientContractDtoApiDataResponse(
      data: json['data'] == null
          ? null
          : ClientContractDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClientContractDtoApiDataResponseToJson(
        ClientContractDtoApiDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

ClientContractResponse _$ClientContractResponseFromJson(
        Map<String, dynamic> json) =>
    ClientContractResponse(
      id: (json['id'] as num?)?.toInt(),
      vehicleContracts: (json['vehicleContracts'] as List<dynamic>?)
              ?.map((e) => VehicleContract.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ClientContractResponseToJson(
        ClientContractResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicleContracts':
          instance.vehicleContracts?.map((e) => e.toJson()).toList(),
    };

ClientContractSummaryDto _$ClientContractSummaryDtoFromJson(
        Map<String, dynamic> json) =>
    ClientContractSummaryDto(
      $client: json['client'] == null
          ? null
          : ClientReferenceDto.fromJson(json['client'] as Map<String, dynamic>),
      clientContractType:
          clientContractTypeNullableFromJson(json['clientContractType']),
      contractDate: json['contractDate'] == null
          ? null
          : DateTime.parse(json['contractDate'] as String),
      currentFormula:
          clientContractFormulaNullableFromJson(json['currentFormula']),
      dateOfCancellation: json['dateOfCancellation'] == null
          ? null
          : DateTime.parse(json['dateOfCancellation'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      id: (json['id'] as num?)?.toInt(),
      isSuspended: json['isSuspended'] as bool?,
      overrideAutoDescription: json['overrideAutoDescription'] as String?,
      reasonOfCancellation: json['reasonOfCancellation'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      status: clientContractStatusNullableFromJson(json['status']),
      suspensionReason: json['suspensionReason'] as String?,
    );

Map<String, dynamic> _$ClientContractSummaryDtoToJson(
        ClientContractSummaryDto instance) =>
    <String, dynamic>{
      'client': instance.$client?.toJson(),
      'clientContractType':
          clientContractTypeNullableToJson(instance.clientContractType),
      'contractDate': _dateToJson(instance.contractDate),
      'currentFormula':
          clientContractFormulaNullableToJson(instance.currentFormula),
      'dateOfCancellation': _dateToJson(instance.dateOfCancellation),
      'endDate': _dateToJson(instance.endDate),
      'id': instance.id,
      'isSuspended': instance.isSuspended,
      'overrideAutoDescription': instance.overrideAutoDescription,
      'reasonOfCancellation': instance.reasonOfCancellation,
      'startDate': _dateToJson(instance.startDate),
      'status': clientContractStatusNullableToJson(instance.status),
      'suspensionReason': instance.suspensionReason,
    };

ClientContractSummaryDtoApiPagedResponse
    _$ClientContractSummaryDtoApiPagedResponseFromJson(
            Map<String, dynamic> json) =>
        ClientContractSummaryDtoApiPagedResponse(
          nextPage: json['nextPage'] as String?,
          results: (json['results'] as List<dynamic>?)
                  ?.map((e) => ClientContractSummaryDto.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
          totalCount: (json['totalCount'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ClientContractSummaryDtoApiPagedResponseToJson(
        ClientContractSummaryDtoApiPagedResponse instance) =>
    <String, dynamic>{
      'nextPage': instance.nextPage,
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
    };

ClientContractUsageDataDto _$ClientContractUsageDataDtoFromJson(
        Map<String, dynamic> json) =>
    ClientContractUsageDataDto(
      commentOnInvoice: json['commentOnInvoice'] as String?,
      commitmentAmountInclVat:
          (json['commitmentAmountInclVat'] as num?)?.toDouble(),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      formula: clientContractFormulaNullableFromJson(json['formula']),
      memo: json['memo'] as String?,
      minimalEndDate: json['minimalEndDate'] == null
          ? null
          : DateTime.parse(json['minimalEndDate'] as String),
      overrideRateCardId: (json['overrideRateCardId'] as num?)?.toInt(),
      requestDate: json['requestDate'] == null
          ? null
          : DateTime.parse(json['requestDate'] as String),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
    );

Map<String, dynamic> _$ClientContractUsageDataDtoToJson(
        ClientContractUsageDataDto instance) =>
    <String, dynamic>{
      'commentOnInvoice': instance.commentOnInvoice,
      'commitmentAmountInclVat': instance.commitmentAmountInclVat,
      'endDate': _dateToJson(instance.endDate),
      'formula': clientContractFormulaNullableToJson(instance.formula),
      'memo': instance.memo,
      'minimalEndDate': _dateToJson(instance.minimalEndDate),
      'overrideRateCardId': instance.overrideRateCardId,
      'requestDate': _dateToJson(instance.requestDate),
      'startDate': _dateToJson(instance.startDate),
    };

ClientContractUsageDto _$ClientContractUsageDtoFromJson(
        Map<String, dynamic> json) =>
    ClientContractUsageDto(
      finalInvoiceId: (json['finalInvoiceId'] as num?)?.toInt(),
      firstInvoiceId: (json['firstInvoiceId'] as num?)?.toInt(),
      memo: json['memo'] as String?,
      trustedByClientContractId:
          (json['trustedByClientContractId'] as num?)?.toInt(),
      usageData: (json['usageData'] as List<dynamic>?)
              ?.map((e) => ClientContractUsageDataDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ClientContractUsageDtoToJson(
        ClientContractUsageDto instance) =>
    <String, dynamic>{
      'finalInvoiceId': instance.finalInvoiceId,
      'firstInvoiceId': instance.firstInvoiceId,
      'memo': instance.memo,
      'trustedByClientContractId': instance.trustedByClientContractId,
      'usageData': instance.usageData?.map((e) => e.toJson()).toList(),
    };

ClientContractVehicleRecord _$ClientContractVehicleRecordFromJson(
        Map<String, dynamic> json) =>
    ClientContractVehicleRecord(
      battMaxType: clientContractVehicleRecordBattMaxTypeNullableFromJson(
          json['battMaxType']),
      battOrderNumber: json['battOrderNumber'] as String?,
      clientContractId: (json['clientContractId'] as num?)?.toInt(),
      costForAdditionalKmsExclVat:
          (json['costForAdditionalKmsExclVat'] as num?)?.toDouble(),
      creditedDayPriceExVat:
          (json['creditedDayPriceExVat'] as num?)?.toDouble(),
      creditedKmPriceExVat: (json['creditedKmPriceExVat'] as num?)?.toDouble(),
      effectiveStartDate: json['effectiveStartDate'] == null
          ? null
          : DateTime.parse(json['effectiveStartDate'] as String),
      mainUserId: (json['mainUserId'] as num?)?.toInt(),
      maxInvoiceAmountExclVat:
          (json['maxInvoiceAmountExclVat'] as num?)?.toDouble(),
      mileageKmAtEndOfContract:
          (json['mileageKmAtEndOfContract'] as num?)?.toInt(),
      mileageKmAtStartOfContract:
          (json['mileageKmAtStartOfContract'] as num?)?.toInt(),
      monthlyInsurance: (json['monthlyInsurance'] as num?)?.toDouble(),
      monthlyLeaseAmountExclVat:
          (json['monthlyLeaseAmountExclVat'] as num?)?.toDouble(),
      monthlyPrefundElectricityExVat:
          (json['monthlyPrefundElectricityExVat'] as num?)?.toDouble(),
      numberOfMonths: (json['numberOfMonths'] as num?)?.toInt(),
      paidStartupCost: (json['paidStartupCost'] as num?)?.toDouble(),
      yearlyKmsOnContract: (json['yearlyKmsOnContract'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClientContractVehicleRecordToJson(
        ClientContractVehicleRecord instance) =>
    <String, dynamic>{
      'battMaxType': clientContractVehicleRecordBattMaxTypeNullableToJson(
          instance.battMaxType),
      'battOrderNumber': instance.battOrderNumber,
      'clientContractId': instance.clientContractId,
      'costForAdditionalKmsExclVat': instance.costForAdditionalKmsExclVat,
      'creditedDayPriceExVat': instance.creditedDayPriceExVat,
      'creditedKmPriceExVat': instance.creditedKmPriceExVat,
      'effectiveStartDate': instance.effectiveStartDate?.toIso8601String(),
      'mainUserId': instance.mainUserId,
      'maxInvoiceAmountExclVat': instance.maxInvoiceAmountExclVat,
      'mileageKmAtEndOfContract': instance.mileageKmAtEndOfContract,
      'mileageKmAtStartOfContract': instance.mileageKmAtStartOfContract,
      'monthlyInsurance': instance.monthlyInsurance,
      'monthlyLeaseAmountExclVat': instance.monthlyLeaseAmountExclVat,
      'monthlyPrefundElectricityExVat': instance.monthlyPrefundElectricityExVat,
      'numberOfMonths': instance.numberOfMonths,
      'paidStartupCost': instance.paidStartupCost,
      'yearlyKmsOnContract': instance.yearlyKmsOnContract,
    };

ClientReferenceDto _$ClientReferenceDtoFromJson(Map<String, dynamic> json) =>
    ClientReferenceDto(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ClientReferenceDtoToJson(ClientReferenceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ContractUser _$ContractUserFromJson(Map<String, dynamic> json) => ContractUser(
      boxNumber: json['boxNumber'] as String?,
      city: json['city'] as String?,
      dateCurrentLicense: json['dateCurrentLicense'] as String?,
      dateLicenseUntil: json['dateLicenseUntil'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      documentLinks: (json['documentLinks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      houseNumber: json['houseNumber'] as String?,
      id: (json['id'] as num?)?.toInt(),
      lastName: json['lastName'] as String?,
      licenseNum: json['licenseNum'] as String?,
      licenseType: (json['licenseType'] as num?)?.toInt(),
      nationality: json['nationality'] as String?,
      nrOfAccidents: (json['nrOfAccidents'] as num?)?.toInt(),
      phoneNumber: json['phoneNumber'] as String?,
      postalCode: json['postalCode'] as String?,
      sofBattRemoteId: json['sofBattRemoteId'] as String?,
      streetname: json['streetname'] as String?,
      subscriptions: (json['subscriptions'] as List<dynamic>?)
              ?.map((e) => Subscription.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      verifiedCellPhoneNumber: json['verifiedCellPhoneNumber'] as bool?,
    );

Map<String, dynamic> _$ContractUserToJson(ContractUser instance) =>
    <String, dynamic>{
      'boxNumber': instance.boxNumber,
      'city': instance.city,
      'dateCurrentLicense': instance.dateCurrentLicense,
      'dateLicenseUntil': instance.dateLicenseUntil,
      'dateOfBirth': instance.dateOfBirth,
      'documentLinks': instance.documentLinks,
      'email': instance.email,
      'firstName': instance.firstName,
      'houseNumber': instance.houseNumber,
      'id': instance.id,
      'lastName': instance.lastName,
      'licenseNum': instance.licenseNum,
      'licenseType': instance.licenseType,
      'nationality': instance.nationality,
      'nrOfAccidents': instance.nrOfAccidents,
      'phoneNumber': instance.phoneNumber,
      'postalCode': instance.postalCode,
      'sofBattRemoteId': instance.sofBattRemoteId,
      'streetname': instance.streetname,
      'subscriptions': instance.subscriptions?.map((e) => e.toJson()).toList(),
      'verifiedCellPhoneNumber': instance.verifiedCellPhoneNumber,
    };

Convictions _$ConvictionsFromJson(Map<String, dynamic> json) => Convictions(
      convictionBloodTestRefusal: json['convictionBloodTestRefusal'] as bool?,
      convictionDrunk: json['convictionDrunk'] as bool?,
      convictionHitAndRun: json['convictionHitAndRun'] as bool?,
      convictionIntoxicated: json['convictionIntoxicated'] as bool?,
      convictionLicenseRevocation: json['convictionLicenseRevocation'] as bool?,
    );

Map<String, dynamic> _$ConvictionsToJson(Convictions instance) =>
    <String, dynamic>{
      'convictionBloodTestRefusal': instance.convictionBloodTestRefusal,
      'convictionDrunk': instance.convictionDrunk,
      'convictionHitAndRun': instance.convictionHitAndRun,
      'convictionIntoxicated': instance.convictionIntoxicated,
      'convictionLicenseRevocation': instance.convictionLicenseRevocation,
    };

CreateBodyStyleRequest _$CreateBodyStyleRequestFromJson(
        Map<String, dynamic> json) =>
    CreateBodyStyleRequest(
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CreateBodyStyleRequestToJson(
        CreateBodyStyleRequest instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
    };

CreateBooking _$CreateBookingFromJson(Map<String, dynamic> json) =>
    CreateBooking(
      comments: json['comments'] as String?,
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
      vehicleId: json['vehicleId'] as String,
    );

Map<String, dynamic> _$CreateBookingToJson(CreateBooking instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'period': instance.period.toJson(),
      'vehicleId': instance.vehicleId,
    };

CreateBookingRequest _$CreateBookingRequestFromJson(
        Map<String, dynamic> json) =>
    CreateBookingRequest(
      bookingPrice:
          BookingPrice.fromJson(json['bookingPrice'] as Map<String, dynamic>),
      comments: json['comments'] as String?,
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
      vehicleId: json['vehicleId'] as String,
    );

Map<String, dynamic> _$CreateBookingRequestToJson(
        CreateBookingRequest instance) =>
    <String, dynamic>{
      'bookingPrice': instance.bookingPrice.toJson(),
      'comments': instance.comments,
      'period': instance.period.toJson(),
      'vehicleId': instance.vehicleId,
    };

CreateClient _$CreateClientFromJson(Map<String, dynamic> json) => CreateClient(
      city: json['city'] as String,
      country: json['country'] as String,
      email: json['email'] as String,
      houseNumber: json['houseNumber'] as String,
      name: json['name'] as String,
      postalCode: json['postalCode'] as String,
      street: json['street'] as String,
      vat: json['vat'] as String?,
    );

Map<String, dynamic> _$CreateClientToJson(CreateClient instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'email': instance.email,
      'houseNumber': instance.houseNumber,
      'name': instance.name,
      'postalCode': instance.postalCode,
      'street': instance.street,
      'vat': instance.vat,
    };

CreateNewUsageContractRequest _$CreateNewUsageContractRequestFromJson(
        Map<String, dynamic> json) =>
    CreateNewUsageContractRequest(
      commitmentAmountInclVat:
          (json['commitmentAmountInclVat'] as num?)?.toDouble(),
      formula: clientContractFormulaNullableFromJson(json['formula']),
      memo: json['memo'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
    );

Map<String, dynamic> _$CreateNewUsageContractRequestToJson(
        CreateNewUsageContractRequest instance) =>
    <String, dynamic>{
      'commitmentAmountInclVat': instance.commitmentAmountInclVat,
      'formula': clientContractFormulaNullableToJson(instance.formula),
      'memo': instance.memo,
      'startDate': _dateToJson(instance.startDate),
    };

CreateNonAvailabilityRequest _$CreateNonAvailabilityRequestFromJson(
        Map<String, dynamic> json) =>
    CreateNonAvailabilityRequest(
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
      vehicleId: json['vehicleId'] as String,
    );

Map<String, dynamic> _$CreateNonAvailabilityRequestToJson(
        CreateNonAvailabilityRequest instance) =>
    <String, dynamic>{
      'period': instance.period.toJson(),
      'vehicleId': instance.vehicleId,
    };

CreateTelematicsRequest _$CreateTelematicsRequestFromJson(
        Map<String, dynamic> json) =>
    CreateTelematicsRequest(
      alwaysUseBluetooth: json['alwaysUseBluetooth'] as bool?,
      ignitionCheck: json['ignitionCheck'] as bool?,
      keyfobCheck: json['keyfobCheck'] as bool?,
      maxRange: (json['maxRange'] as num?)?.toInt(),
      phoneNumber: json['phoneNumber'] as String?,
      providerDeviceId: json['providerDeviceId'] as String,
      providerId: json['providerId'] as String,
      vehicleId: json['vehicleId'] as String,
    );

Map<String, dynamic> _$CreateTelematicsRequestToJson(
        CreateTelematicsRequest instance) =>
    <String, dynamic>{
      'alwaysUseBluetooth': instance.alwaysUseBluetooth,
      'ignitionCheck': instance.ignitionCheck,
      'keyfobCheck': instance.keyfobCheck,
      'maxRange': instance.maxRange,
      'phoneNumber': instance.phoneNumber,
      'providerDeviceId': instance.providerDeviceId,
      'providerId': instance.providerId,
      'vehicleId': instance.vehicleId,
    };

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) =>
    CreateUserRequest(
      email: json['email'] as String,
      remoteId: json['remoteId'] as String,
    );

Map<String, dynamic> _$CreateUserRequestToJson(CreateUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'remoteId': instance.remoteId,
    };

CreateVehicleContract _$CreateVehicleContractFromJson(
        Map<String, dynamic> json) =>
    CreateVehicleContract(
      battMaxType:
          createVehicleContractBattMaxTypeFromJson(json['battMaxType']),
      battOrderNumber: json['battOrderNumber'] as String?,
      billingType:
          createVehicleContractBillingTypeNullableFromJson(json['billingType']),
      clientContractId: (json['clientContractId'] as num?)?.toInt(),
      clientId: (json['clientId'] as num).toInt(),
      costForAdditionalKmsExclVat:
          (json['costForAdditionalKmsExclVat'] as num?)?.toDouble(),
      creditedDayPriceExclVat:
          (json['creditedDayPriceExclVat'] as num?)?.toDouble(),
      creditedKmPriceExclVat:
          (json['creditedKmPriceExclVat'] as num?)?.toDouble(),
      effectiveStartDate: DateTime.parse(json['effectiveStartDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      mainUserId: (json['mainUserId'] as num?)?.toInt(),
      mileageKmAtEndOfContract:
          (json['mileageKmAtEndOfContract'] as num?)?.toInt(),
      mileageKmAtStartOfContract:
          (json['mileageKmAtStartOfContract'] as num?)?.toInt(),
      monthlyInsurance: (json['monthlyInsurance'] as num?)?.toDouble(),
      monthlyLeaseAmountExclVat:
          (json['monthlyLeaseAmountExclVat'] as num).toDouble(),
      monthlyMaxInvoiceAmountExclVat:
          (json['monthlyMaxInvoiceAmountExclVat'] as num?)?.toDouble(),
      monthlyPrefundElectricityExclVat:
          (json['monthlyPrefundElectricityExclVat'] as num?)?.toDouble(),
      numberOfMonths: (json['numberOfMonths'] as num).toInt(),
      paidStartupCost: (json['paidStartupCost'] as num?)?.toDouble(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      vehicleId: json['vehicleId'] as String,
      yearlyKmsOnContract: (json['yearlyKmsOnContract'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CreateVehicleContractToJson(
        CreateVehicleContract instance) =>
    <String, dynamic>{
      'battMaxType':
          createVehicleContractBattMaxTypeToJson(instance.battMaxType),
      'battOrderNumber': instance.battOrderNumber,
      'billingType':
          createVehicleContractBillingTypeNullableToJson(instance.billingType),
      'clientContractId': instance.clientContractId,
      'clientId': instance.clientId,
      'costForAdditionalKmsExclVat': instance.costForAdditionalKmsExclVat,
      'creditedDayPriceExclVat': instance.creditedDayPriceExclVat,
      'creditedKmPriceExclVat': instance.creditedKmPriceExclVat,
      'effectiveStartDate': instance.effectiveStartDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'mainUserId': instance.mainUserId,
      'mileageKmAtEndOfContract': instance.mileageKmAtEndOfContract,
      'mileageKmAtStartOfContract': instance.mileageKmAtStartOfContract,
      'monthlyInsurance': instance.monthlyInsurance,
      'monthlyLeaseAmountExclVat': instance.monthlyLeaseAmountExclVat,
      'monthlyMaxInvoiceAmountExclVat': instance.monthlyMaxInvoiceAmountExclVat,
      'monthlyPrefundElectricityExclVat':
          instance.monthlyPrefundElectricityExclVat,
      'numberOfMonths': instance.numberOfMonths,
      'paidStartupCost': instance.paidStartupCost,
      'startDate': instance.startDate?.toIso8601String(),
      'vehicleId': instance.vehicleId,
      'yearlyKmsOnContract': instance.yearlyKmsOnContract,
    };

CreateVehicleGroupRequest _$CreateVehicleGroupRequestFromJson(
        Map<String, dynamic> json) =>
    CreateVehicleGroupRequest(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CreateVehicleGroupRequestToJson(
        CreateVehicleGroupRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CreateVehicleModelRequest _$CreateVehicleModelRequestFromJson(
        Map<String, dynamic> json) =>
    CreateVehicleModelRequest(
      bodyStyleId: json['bodyStyleId'] as String?,
      brandId: json['brandId'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CreateVehicleModelRequestToJson(
        CreateVehicleModelRequest instance) =>
    <String, dynamic>{
      'bodyStyleId': instance.bodyStyleId,
      'brandId': instance.brandId,
      'name': instance.name,
    };

CreateVehicleModelsRatesRequest _$CreateVehicleModelsRatesRequestFromJson(
        Map<String, dynamic> json) =>
    CreateVehicleModelsRatesRequest(
      dayPrice: (json['dayPrice'] as num?)?.toDouble(),
      hourPrice: (json['hourPrice'] as num).toDouble(),
      kmPrice: (json['kmPrice'] as num).toDouble(),
      modelIds: (json['modelIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      overrideDefaultPeriod: json['overrideDefaultPeriod'] as bool?,
      validFrom: DateTime.parse(json['validFrom'] as String),
      validUntil: json['validUntil'] == null
          ? null
          : DateTime.parse(json['validUntil'] as String),
    );

Map<String, dynamic> _$CreateVehicleModelsRatesRequestToJson(
        CreateVehicleModelsRatesRequest instance) =>
    <String, dynamic>{
      'dayPrice': instance.dayPrice,
      'hourPrice': instance.hourPrice,
      'kmPrice': instance.kmPrice,
      'modelIds': instance.modelIds,
      'overrideDefaultPeriod': instance.overrideDefaultPeriod,
      'validFrom': instance.validFrom.toIso8601String(),
      'validUntil': instance.validUntil?.toIso8601String(),
    };

CreateVehicleModelsRatesResponse _$CreateVehicleModelsRatesResponseFromJson(
        Map<String, dynamic> json) =>
    CreateVehicleModelsRatesResponse(
      rates: (json['rates'] as List<dynamic>?)
              ?.map((e) => VehicleModelRate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateVehicleModelsRatesResponseToJson(
        CreateVehicleModelsRatesResponse instance) =>
    <String, dynamic>{
      'rates': instance.rates.map((e) => e.toJson()).toList(),
    };

CreateVehicleRequest _$CreateVehicleRequestFromJson(
        Map<String, dynamic> json) =>
    CreateVehicleRequest(
      licensePlate: json['licensePlate'] as String,
      vehicleModelId: json['vehicleModelId'] as String,
    );

Map<String, dynamic> _$CreateVehicleRequestToJson(
        CreateVehicleRequest instance) =>
    <String, dynamic>{
      'licensePlate': instance.licensePlate,
      'vehicleModelId': instance.vehicleModelId,
    };

CreateVehiclesRatesRequest _$CreateVehiclesRatesRequestFromJson(
        Map<String, dynamic> json) =>
    CreateVehiclesRatesRequest(
      dayPrice: (json['dayPrice'] as num?)?.toDouble(),
      discountPercent: (json['discountPercent'] as num?)?.toInt(),
      hourPrice: (json['hourPrice'] as num?)?.toDouble(),
      kmPrice: (json['kmPrice'] as num?)?.toDouble(),
      overrideDefaultPeriod: json['overrideDefaultPeriod'] as bool?,
      validFrom: DateTime.parse(json['validFrom'] as String),
      validUntil: json['validUntil'] == null
          ? null
          : DateTime.parse(json['validUntil'] as String),
      vehicleIds: (json['vehicleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateVehiclesRatesRequestToJson(
        CreateVehiclesRatesRequest instance) =>
    <String, dynamic>{
      'dayPrice': instance.dayPrice,
      'discountPercent': instance.discountPercent,
      'hourPrice': instance.hourPrice,
      'kmPrice': instance.kmPrice,
      'overrideDefaultPeriod': instance.overrideDefaultPeriod,
      'validFrom': instance.validFrom.toIso8601String(),
      'validUntil': instance.validUntil?.toIso8601String(),
      'vehicleIds': instance.vehicleIds,
    };

CreateVehiclesRatesResponse _$CreateVehiclesRatesResponseFromJson(
        Map<String, dynamic> json) =>
    CreateVehiclesRatesResponse(
      rates: (json['rates'] as List<dynamic>?)
              ?.map((e) => VehicleRate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateVehiclesRatesResponseToJson(
        CreateVehiclesRatesResponse instance) =>
    <String, dynamic>{
      'rates': instance.rates.map((e) => e.toJson()).toList(),
    };

DeleteVehiclesFromGroupRequest _$DeleteVehiclesFromGroupRequestFromJson(
        Map<String, dynamic> json) =>
    DeleteVehiclesFromGroupRequest(
      vehicleIds: (json['vehicleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$DeleteVehiclesFromGroupRequestToJson(
        DeleteVehiclesFromGroupRequest instance) =>
    <String, dynamic>{
      'vehicleIds': instance.vehicleIds,
    };

EndVehicleUsageRequest _$EndVehicleUsageRequestFromJson(
        Map<String, dynamic> json) =>
    EndVehicleUsageRequest(
      mileageValue: (json['mileageValue'] as num?)?.toDouble(),
      vehicleUsageId: json['vehicleUsageId'] as String?,
    );

Map<String, dynamic> _$EndVehicleUsageRequestToJson(
        EndVehicleUsageRequest instance) =>
    <String, dynamic>{
      'mileageValue': instance.mileageValue,
      'vehicleUsageId': instance.vehicleUsageId,
    };

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      debugKey: json['debugKey'] as String?,
      debugMsg: json['debugMsg'] as String?,
      debugParameters: (json['debugParameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{
      'debugKey': instance.debugKey,
      'debugMsg': instance.debugMsg,
      'debugParameters': instance.debugParameters,
    };

FiltersForBooking _$FiltersForBookingFromJson(Map<String, dynamic> json) =>
    FiltersForBooking(
      gpsLocation: json['gpsLocation'] == null
          ? null
          : GpsLocation.fromJson(json['gpsLocation'] as Map<String, dynamic>),
      vehicleFilterCriteria: json['vehicleFilterCriteria'] == null
          ? null
          : VehicleFilterCriteria.fromJson(
              json['vehicleFilterCriteria'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FiltersForBookingToJson(FiltersForBooking instance) =>
    <String, dynamic>{
      'gpsLocation': instance.gpsLocation?.toJson(),
      'vehicleFilterCriteria': instance.vehicleFilterCriteria?.toJson(),
    };

FlespiCallbackRequest _$FlespiCallbackRequestFromJson(
        Map<String, dynamic> json) =>
    FlespiCallbackRequest(
      begin: (json['begin'] as num?)?.toInt(),
      canVehicleBatteryLevel:
          (json['can.vehicle.battery.level'] as num?)?.toInt(),
      canVehicleMileage: (json['can.vehicle.mileage'] as num?)?.toDouble(),
      deviceId: (json['device.id'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      end: (json['end'] as num?)?.toInt(),
      externalPowersourceVoltage:
          (json['external.powersource.voltage'] as num?)?.toDouble(),
      id: (json['id'] as num?)?.toInt(),
      positionLatitude: (json['position.latitude'] as num?)?.toDouble(),
      positionLongitude: (json['position.longitude'] as num?)?.toDouble(),
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FlespiCallbackRequestToJson(
        FlespiCallbackRequest instance) =>
    <String, dynamic>{
      'begin': instance.begin,
      'can.vehicle.battery.level': instance.canVehicleBatteryLevel,
      'can.vehicle.mileage': instance.canVehicleMileage,
      'device.id': instance.deviceId,
      'duration': instance.duration,
      'end': instance.end,
      'external.powersource.voltage': instance.externalPowersourceVoltage,
      'id': instance.id,
      'position.latitude': instance.positionLatitude,
      'position.longitude': instance.positionLongitude,
      'timestamp': instance.timestamp,
    };

GetVehicleModelsRatesEntry _$GetVehicleModelsRatesEntryFromJson(
        Map<String, dynamic> json) =>
    GetVehicleModelsRatesEntry(
      dayPrice: (json['dayPrice'] as num).toDouble(),
      hourPrice: (json['hourPrice'] as num).toDouble(),
      id: json['id'] as String,
      kmPrice: (json['kmPrice'] as num).toDouble(),
      validFrom: DateTime.parse(json['validFrom'] as String),
      validUntil: json['validUntil'] == null
          ? null
          : DateTime.parse(json['validUntil'] as String),
    );

Map<String, dynamic> _$GetVehicleModelsRatesEntryToJson(
        GetVehicleModelsRatesEntry instance) =>
    <String, dynamic>{
      'dayPrice': instance.dayPrice,
      'hourPrice': instance.hourPrice,
      'id': instance.id,
      'kmPrice': instance.kmPrice,
      'validFrom': instance.validFrom.toIso8601String(),
      'validUntil': instance.validUntil?.toIso8601String(),
    };

GetVehicleModelsRatesResponse _$GetVehicleModelsRatesResponseFromJson(
        Map<String, dynamic> json) =>
    GetVehicleModelsRatesResponse(
      rates: json['rates'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$GetVehicleModelsRatesResponseToJson(
        GetVehicleModelsRatesResponse instance) =>
    <String, dynamic>{
      'rates': instance.rates,
    };

GetVehiclesRatesEntry _$GetVehiclesRatesEntryFromJson(
        Map<String, dynamic> json) =>
    GetVehiclesRatesEntry(
      dayPrice: (json['dayPrice'] as num?)?.toDouble(),
      hourPrice: (json['hourPrice'] as num?)?.toDouble(),
      id: json['id'] as String,
      kmPrice: (json['kmPrice'] as num?)?.toDouble(),
      validFrom: DateTime.parse(json['validFrom'] as String),
      validUntil: json['validUntil'] == null
          ? null
          : DateTime.parse(json['validUntil'] as String),
    );

Map<String, dynamic> _$GetVehiclesRatesEntryToJson(
        GetVehiclesRatesEntry instance) =>
    <String, dynamic>{
      'dayPrice': instance.dayPrice,
      'hourPrice': instance.hourPrice,
      'id': instance.id,
      'kmPrice': instance.kmPrice,
      'validFrom': instance.validFrom.toIso8601String(),
      'validUntil': instance.validUntil?.toIso8601String(),
    };

GetVehiclesRatesResponse _$GetVehiclesRatesResponseFromJson(
        Map<String, dynamic> json) =>
    GetVehiclesRatesResponse(
      rates: json['rates'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$GetVehiclesRatesResponseToJson(
        GetVehiclesRatesResponse instance) =>
    <String, dynamic>{
      'rates': instance.rates,
    };

GpsCoordinate _$GpsCoordinateFromJson(Map<String, dynamic> json) =>
    GpsCoordinate(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GpsCoordinateToJson(GpsCoordinate instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

GpsLocation _$GpsLocationFromJson(Map<String, dynamic> json) => GpsLocation(
      address: json['address'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : GpsCoordinate.fromJson(json['coordinates'] as Map<String, dynamic>),
      vehicleBaseLocationId: json['vehicleBaseLocationId'] as String?,
    );

Map<String, dynamic> _$GpsLocationToJson(GpsLocation instance) =>
    <String, dynamic>{
      'address': instance.address,
      'coordinates': instance.coordinates?.toJson(),
      'vehicleBaseLocationId': instance.vehicleBaseLocationId,
    };

HomeFeedCard _$HomeFeedCardFromJson(Map<String, dynamic> json) => HomeFeedCard(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      fullBooking: json['fullBooking'] == null
          ? null
          : Booking.fromJson(json['fullBooking'] as Map<String, dynamic>),
      type: homeFeedCardTypeNullableFromJson(json['type']),
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      vehicleUsage: json['vehicleUsage'] == null
          ? null
          : VehicleUsageReference.fromJson(
              json['vehicleUsage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeFeedCardToJson(HomeFeedCard instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'fullBooking': instance.fullBooking?.toJson(),
      'type': homeFeedCardTypeNullableToJson(instance.type),
      'vehicle': instance.vehicle?.toJson(),
      'vehicleUsage': instance.vehicleUsage?.toJson(),
    };

HomeFeedPage _$HomeFeedPageFromJson(Map<String, dynamic> json) => HomeFeedPage(
      homeFeedCards: (json['homeFeedCards'] as List<dynamic>?)
              ?.map((e) => HomeFeedCard.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$HomeFeedPageToJson(HomeFeedPage instance) =>
    <String, dynamic>{
      'homeFeedCards': instance.homeFeedCards?.map((e) => e.toJson()).toList(),
    };

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      amount: (json['amount'] as num?)?.toDouble(),
      customerName: json['customerName'] as String?,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      id: (json['id'] as num?)?.toInt(),
      invoiceDate: json['invoiceDate'] == null
          ? null
          : DateTime.parse(json['invoiceDate'] as String),
      name: json['name'] as String?,
      paymentStatus:
          invoicePaymentStatusNullableFromJson(json['paymentStatus']),
      pdfUrl: json['pdfUrl'] as String?,
      webUrl: json['webUrl'] as String?,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'amount': instance.amount,
      'customerName': instance.customerName,
      'dueDate': instance.dueDate?.toIso8601String(),
      'id': instance.id,
      'invoiceDate': instance.invoiceDate?.toIso8601String(),
      'name': instance.name,
      'paymentStatus':
          invoicePaymentStatusNullableToJson(instance.paymentStatus),
      'pdfUrl': instance.pdfUrl,
      'webUrl': instance.webUrl,
    };

InvoiceResponse _$InvoiceResponseFromJson(Map<String, dynamic> json) =>
    InvoiceResponse(
      invoices: (json['invoices'] as List<dynamic>?)
              ?.map((e) => Invoice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$InvoiceResponseToJson(InvoiceResponse instance) =>
    <String, dynamic>{
      'invoices': instance.invoices?.map((e) => e.toJson()).toList(),
    };

LocationPosition _$LocationPositionFromJson(Map<String, dynamic> json) =>
    LocationPosition(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationPositionToJson(LocationPosition instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

LocationValue _$LocationValueFromJson(Map<String, dynamic> json) =>
    LocationValue(
      address: json['address'] as String?,
      position: json['position'] == null
          ? null
          : LocationPosition.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationValueToJson(LocationValue instance) =>
    <String, dynamic>{
      'address': instance.address,
      'position': instance.position?.toJson(),
    };

Mileage _$MileageFromJson(Map<String, dynamic> json) => Mileage(
      mileage: (json['mileage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MileageToJson(Mileage instance) => <String, dynamic>{
      'mileage': instance.mileage,
    };

MyAvailableVehicle _$MyAvailableVehicleFromJson(Map<String, dynamic> json) =>
    MyAvailableVehicle(
      nextNonAvailability: json['nextNonAvailability'] == null
          ? null
          : AdjacentNonAvailability.fromJson(
              json['nextNonAvailability'] as Map<String, dynamic>),
      overdue: json['overdue'] as bool?,
      previousNonAvailability: json['previousNonAvailability'] == null
          ? null
          : AdjacentNonAvailability.fromJson(
              json['previousNonAvailability'] as Map<String, dynamic>),
      type: myAvailableVehicleTypeNullableFromJson(json['type']),
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      vehicleUsage: json['vehicleUsage'] == null
          ? null
          : VehicleUsage.fromJson(json['vehicleUsage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MyAvailableVehicleToJson(MyAvailableVehicle instance) =>
    <String, dynamic>{
      'nextNonAvailability': instance.nextNonAvailability?.toJson(),
      'overdue': instance.overdue,
      'previousNonAvailability': instance.previousNonAvailability?.toJson(),
      'type': myAvailableVehicleTypeNullableToJson(instance.type),
      'vehicle': instance.vehicle?.toJson(),
      'vehicleUsage': instance.vehicleUsage?.toJson(),
    };

MyAvailableVehiclesPage _$MyAvailableVehiclesPageFromJson(
        Map<String, dynamic> json) =>
    MyAvailableVehiclesPage(
      currentNonAvailablePeriods: (json['currentNonAvailablePeriods']
                  as List<dynamic>?)
              ?.map(
                  (e) => MyAvailableVehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MyAvailableVehiclesPageToJson(
        MyAvailableVehiclesPage instance) =>
    <String, dynamic>{
      'currentNonAvailablePeriods':
          instance.currentNonAvailablePeriods?.map((e) => e.toJson()).toList(),
    };

NonAvailabilitiesPage _$NonAvailabilitiesPageFromJson(
        Map<String, dynamic> json) =>
    NonAvailabilitiesPage(
      nonAvailabilities: (json['nonAvailabilities'] as List<dynamic>?)
              ?.map((e) => NonAvailability.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NonAvailabilitiesPageToJson(
        NonAvailabilitiesPage instance) =>
    <String, dynamic>{
      'nonAvailabilities':
          instance.nonAvailabilities?.map((e) => e.toJson()).toList(),
    };

NonAvailabilitiesPerVehicle _$NonAvailabilitiesPerVehicleFromJson(
        Map<String, dynamic> json) =>
    NonAvailabilitiesPerVehicle(
      currentPrivateUsageOverdue: json['currentPrivateUsageOverdue'] as bool?,
      currentPrivateUsageStart: json['currentPrivateUsageStart'] == null
          ? null
          : DateTime.parse(json['currentPrivateUsageStart'] as String),
      nonAvailabilities: (json['nonAvailabilities'] as List<dynamic>?)
              ?.map((e) => NonAvailability.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      vehicleId: json['vehicleId'] as String?,
      vehicleName: json['vehicleName'] as String?,
    );

Map<String, dynamic> _$NonAvailabilitiesPerVehicleToJson(
        NonAvailabilitiesPerVehicle instance) =>
    <String, dynamic>{
      'currentPrivateUsageOverdue': instance.currentPrivateUsageOverdue,
      'currentPrivateUsageStart':
          instance.currentPrivateUsageStart?.toIso8601String(),
      'nonAvailabilities':
          instance.nonAvailabilities?.map((e) => e.toJson()).toList(),
      'vehicleId': instance.vehicleId,
      'vehicleName': instance.vehicleName,
    };

NonAvailabilitiesPerVehiclePage _$NonAvailabilitiesPerVehiclePageFromJson(
        Map<String, dynamic> json) =>
    NonAvailabilitiesPerVehiclePage(
      availabilityEventsPerVehicle:
          json['availabilityEventsPerVehicle'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$NonAvailabilitiesPerVehiclePageToJson(
        NonAvailabilitiesPerVehiclePage instance) =>
    <String, dynamic>{
      'availabilityEventsPerVehicle': instance.availabilityEventsPerVehicle,
    };

NonAvailability _$NonAvailabilityFromJson(Map<String, dynamic> json) =>
    NonAvailability(
      booking: json['booking'] == null
          ? null
          : Booking.fromJson(json['booking'] as Map<String, dynamic>),
      fullPeriod: json['fullPeriod'] == null
          ? null
          : Period.fromJson(json['fullPeriod'] as Map<String, dynamic>),
      id: json['id'] as String?,
      overdue: json['overdue'] as bool?,
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      plannedPeriod: json['plannedPeriod'] == null
          ? null
          : Period.fromJson(json['plannedPeriod'] as Map<String, dynamic>),
      type: nonAvailabilityTypeNullableFromJson(json['type']),
      usagePeriod: json['usagePeriod'] == null
          ? null
          : Period.fromJson(json['usagePeriod'] as Map<String, dynamic>),
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$NonAvailabilityToJson(NonAvailability instance) =>
    <String, dynamic>{
      'booking': instance.booking?.toJson(),
      'fullPeriod': instance.fullPeriod?.toJson(),
      'id': instance.id,
      'overdue': instance.overdue,
      'period': instance.period?.toJson(),
      'plannedPeriod': instance.plannedPeriod?.toJson(),
      'type': nonAvailabilityTypeNullableToJson(instance.type),
      'usagePeriod': instance.usagePeriod?.toJson(),
      'vehicleId': instance.vehicleId,
    };

NonAvailabilityResponse _$NonAvailabilityResponseFromJson(
        Map<String, dynamic> json) =>
    NonAvailabilityResponse(
      nonAvailabilities: (json['nonAvailabilities'] as List<dynamic>?)
              ?.map((e) => NonAvailability.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NonAvailabilityResponseToJson(
        NonAvailabilityResponse instance) =>
    <String, dynamic>{
      'nonAvailabilities':
          instance.nonAvailabilities?.map((e) => e.toJson()).toList(),
    };

Onboarding _$OnboardingFromJson(Map<String, dynamic> json) => Onboarding(
      legal: json['legal'] == null
          ? null
          : OnboardingLegal.fromJson(json['legal'] as Map<String, dynamic>),
      personal: json['personal'] == null
          ? null
          : OnboardingPersonal.fromJson(
              json['personal'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : OnboardingPhone.fromJson(json['phone'] as Map<String, dynamic>),
      status: onboardingStatusNullableFromJson(json['status']),
    );

Map<String, dynamic> _$OnboardingToJson(Onboarding instance) =>
    <String, dynamic>{
      'legal': instance.legal?.toJson(),
      'personal': instance.personal?.toJson(),
      'phone': instance.phone?.toJson(),
      'status': onboardingStatusNullableToJson(instance.status),
    };

OnboardingLegal _$OnboardingLegalFromJson(Map<String, dynamic> json) =>
    OnboardingLegal(
      convictions:
          Convictions.fromJson(json['convictions'] as Map<String, dynamic>),
      nrOfAccidents: (json['nrOfAccidents'] as num).toInt(),
    );

Map<String, dynamic> _$OnboardingLegalToJson(OnboardingLegal instance) =>
    <String, dynamic>{
      'convictions': instance.convictions.toJson(),
      'nrOfAccidents': instance.nrOfAccidents,
    };

OnboardingPersonal _$OnboardingPersonalFromJson(Map<String, dynamic> json) =>
    OnboardingPersonal(
      box: json['box'] as String,
      city: json['city'] as String,
      dateCurrentLicense: DateTime.parse(json['dateCurrentLicense'] as String),
      dateLicenseUntil: DateTime.parse(json['dateLicenseUntil'] as String),
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      firstName: json['firstName'] as String,
      houseNumber: json['houseNumber'] as String,
      lastName: json['lastName'] as String,
      licenseNumber: json['licenseNumber'] as String,
      licenseType: onboardingPersonalLicenseTypeFromJson(json['licenseType']),
      nationality: json['nationality'] as String,
      postalCode: json['postalCode'] as String,
      socialSecurityNumber: json['socialSecurityNumber'] as String,
      street: json['street'] as String,
    );

Map<String, dynamic> _$OnboardingPersonalToJson(OnboardingPersonal instance) =>
    <String, dynamic>{
      'box': instance.box,
      'city': instance.city,
      'dateCurrentLicense': instance.dateCurrentLicense.toIso8601String(),
      'dateLicenseUntil': instance.dateLicenseUntil.toIso8601String(),
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'firstName': instance.firstName,
      'houseNumber': instance.houseNumber,
      'lastName': instance.lastName,
      'licenseNumber': instance.licenseNumber,
      'licenseType': onboardingPersonalLicenseTypeToJson(instance.licenseType),
      'nationality': instance.nationality,
      'postalCode': instance.postalCode,
      'socialSecurityNumber': instance.socialSecurityNumber,
      'street': instance.street,
    };

OnboardingPhone _$OnboardingPhoneFromJson(Map<String, dynamic> json) =>
    OnboardingPhone(
      phoneNumber: json['phoneNumber'] as String,
      phoneNumberValidationCode: json['phoneNumberValidationCode'] as String?,
    );

Map<String, dynamic> _$OnboardingPhoneToJson(OnboardingPhone instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'phoneNumberValidationCode': instance.phoneNumberValidationCode,
    };

PasswordReset _$PasswordResetFromJson(Map<String, dynamic> json) =>
    PasswordReset(
      email: json['email'] as String,
    );

Map<String, dynamic> _$PasswordResetToJson(PasswordReset instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

Period _$PeriodFromJson(Map<String, dynamic> json) => Period(
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
    );

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'end': instance.end?.toIso8601String(),
      'start': instance.start?.toIso8601String(),
    };

ProviderPage _$ProviderPageFromJson(Map<String, dynamic> json) => ProviderPage(
      providers: (json['providers'] as List<dynamic>?)
              ?.map(
                  (e) => TelematicsProvider.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ProviderPageToJson(ProviderPage instance) =>
    <String, dynamic>{
      'providers': instance.providers?.map((e) => e.toJson()).toList(),
    };

ProviderTelematics _$ProviderTelematicsFromJson(Map<String, dynamic> json) =>
    ProviderTelematics(
      providerDeviceId: json['providerDeviceId'] as String?,
      providerId: json['providerId'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$ProviderTelematicsToJson(ProviderTelematics instance) =>
    <String, dynamic>{
      'providerDeviceId': instance.providerDeviceId,
      'providerId': instance.providerId,
      'vehicleId': instance.vehicleId,
    };

RegisterDeviceRequest _$RegisterDeviceRequestFromJson(
        Map<String, dynamic> json) =>
    RegisterDeviceRequest(
      active: json['active'] as bool?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$RegisterDeviceRequestToJson(
        RegisterDeviceRequest instance) =>
    <String, dynamic>{
      'active': instance.active,
      'token': instance.token,
    };

ReplaceBookingRequest _$ReplaceBookingRequestFromJson(
        Map<String, dynamic> json) =>
    ReplaceBookingRequest(
      adminComments: json['adminComments'] as String?,
      authorizationComments: json['authorizationComments'] as String?,
      clientId: json['clientId'] as String?,
      comments: json['comments'] as String?,
      filtersForBooking: json['filtersForBooking'] == null
          ? null
          : FiltersForBooking.fromJson(
              json['filtersForBooking'] as Map<String, dynamic>),
      invoiceComments: json['invoiceComments'] as String?,
      originalBookingId: json['originalBookingId'] as String?,
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$ReplaceBookingRequestToJson(
        ReplaceBookingRequest instance) =>
    <String, dynamic>{
      'adminComments': instance.adminComments,
      'authorizationComments': instance.authorizationComments,
      'clientId': instance.clientId,
      'comments': instance.comments,
      'filtersForBooking': instance.filtersForBooking?.toJson(),
      'invoiceComments': instance.invoiceComments,
      'originalBookingId': instance.originalBookingId,
      'period': instance.period?.toJson(),
      'userId': instance.userId,
      'vehicleId': instance.vehicleId,
    };

ResendVerificationEmail _$ResendVerificationEmailFromJson(
        Map<String, dynamic> json) =>
    ResendVerificationEmail(
      email: json['email'] as String,
    );

Map<String, dynamic> _$ResendVerificationEmailToJson(
        ResendVerificationEmail instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

SearchBookingsRequest _$SearchBookingsRequestFromJson(
        Map<String, dynamic> json) =>
    SearchBookingsRequest(
      adminComments: json['adminComments'] as String?,
      clientId: json['clientId'] as String?,
      comments: json['comments'] as String?,
      endPeriod: json['endPeriod'] == null
          ? null
          : Period.fromJson(json['endPeriod'] as Map<String, dynamic>),
      invoiceStatuses: searchBookingsRequestInvoiceStatusesListFromJson(
          json['invoiceStatuses'] as List?),
      licensePlate: json['licensePlate'] as String?,
      startPeriod: json['startPeriod'] == null
          ? null
          : Period.fromJson(json['startPeriod'] as Map<String, dynamic>),
      statuses:
          searchBookingsRequestStatusesListFromJson(json['statuses'] as List?),
      userId: json['userId'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$SearchBookingsRequestToJson(
        SearchBookingsRequest instance) =>
    <String, dynamic>{
      'adminComments': instance.adminComments,
      'clientId': instance.clientId,
      'comments': instance.comments,
      'endPeriod': instance.endPeriod?.toJson(),
      'invoiceStatuses': searchBookingsRequestInvoiceStatusesListToJson(
          instance.invoiceStatuses),
      'licensePlate': instance.licensePlate,
      'startPeriod': instance.startPeriod?.toJson(),
      'statuses': searchBookingsRequestStatusesListToJson(instance.statuses),
      'userId': instance.userId,
      'vehicleId': instance.vehicleId,
    };

SearchClientContractsRequest _$SearchClientContractsRequestFromJson(
        Map<String, dynamic> json) =>
    SearchClientContractsRequest(
      clientId: (json['clientId'] as num?)?.toInt(),
      contractId: (json['contractId'] as num?)?.toInt(),
      endDateFrom: json['endDateFrom'] == null
          ? null
          : DateTime.parse(json['endDateFrom'] as String),
      endDateTo: json['endDateTo'] == null
          ? null
          : DateTime.parse(json['endDateTo'] as String),
      startDateFrom: json['startDateFrom'] == null
          ? null
          : DateTime.parse(json['startDateFrom'] as String),
      startDateTo: json['startDateTo'] == null
          ? null
          : DateTime.parse(json['startDateTo'] as String),
      flexSearch: json['flexSearch'] as String?,
      orderBy: json['orderBy'] as String?,
    );

Map<String, dynamic> _$SearchClientContractsRequestToJson(
        SearchClientContractsRequest instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'contractId': instance.contractId,
      'endDateFrom': _dateToJson(instance.endDateFrom),
      'endDateTo': _dateToJson(instance.endDateTo),
      'startDateFrom': _dateToJson(instance.startDateFrom),
      'startDateTo': _dateToJson(instance.startDateTo),
      'flexSearch': instance.flexSearch,
      'orderBy': instance.orderBy,
    };

SearchNonAvailabilityEventsRequest _$SearchNonAvailabilityEventsRequestFromJson(
        Map<String, dynamic> json) =>
    SearchNonAvailabilityEventsRequest(
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      vehicleIds: (json['vehicleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SearchNonAvailabilityEventsRequestToJson(
        SearchNonAvailabilityEventsRequest instance) =>
    <String, dynamic>{
      'period': instance.period?.toJson(),
      'vehicleIds': instance.vehicleIds,
    };

SearchTelematicsTrackingRequest _$SearchTelematicsTrackingRequestFromJson(
        Map<String, dynamic> json) =>
    SearchTelematicsTrackingRequest(
      charging: json['charging'] as bool?,
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      eventReason: searchTelematicsTrackingRequestEventReasonNullableFromJson(
          json['eventReason']),
      latestPerVehicle: json['latestPerVehicle'] as bool?,
      maxResults: (json['maxResults'] as num?)?.toInt(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      vehicleIds: (json['vehicleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SearchTelematicsTrackingRequestToJson(
        SearchTelematicsTrackingRequest instance) =>
    <String, dynamic>{
      'charging': instance.charging,
      'endDate': instance.endDate?.toIso8601String(),
      'eventReason': searchTelematicsTrackingRequestEventReasonNullableToJson(
          instance.eventReason),
      'latestPerVehicle': instance.latestPerVehicle,
      'maxResults': instance.maxResults,
      'startDate': instance.startDate?.toIso8601String(),
      'vehicleIds': instance.vehicleIds,
    };

SearchUsersRequest _$SearchUsersRequestFromJson(Map<String, dynamic> json) =>
    SearchUsersRequest(
      defaultMembershipId: json['defaultMembershipId'] as String?,
      displayName: json['displayName'] as String?,
      favoriteLocation: json['favoriteLocation'] == null
          ? null
          : GpsLocation.fromJson(
              json['favoriteLocation'] as Map<String, dynamic>),
      favoritelocationDistance:
          (json['favoritelocationDistance'] as num?)?.toInt(),
      homeLocation: json['homeLocation'] == null
          ? null
          : GpsLocation.fromJson(json['homeLocation'] as Map<String, dynamic>),
      homelocationDistance: (json['homelocationDistance'] as num?)?.toInt(),
      remoteId: json['remoteId'] as String?,
      userName: json['userName'] as String?,
      workLocation: json['workLocation'] == null
          ? null
          : GpsLocation.fromJson(json['workLocation'] as Map<String, dynamic>),
      worklocationDistance: (json['worklocationDistance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchUsersRequestToJson(SearchUsersRequest instance) =>
    <String, dynamic>{
      'defaultMembershipId': instance.defaultMembershipId,
      'displayName': instance.displayName,
      'favoriteLocation': instance.favoriteLocation?.toJson(),
      'favoritelocationDistance': instance.favoritelocationDistance,
      'homeLocation': instance.homeLocation?.toJson(),
      'homelocationDistance': instance.homelocationDistance,
      'remoteId': instance.remoteId,
      'userName': instance.userName,
      'workLocation': instance.workLocation?.toJson(),
      'worklocationDistance': instance.worklocationDistance,
    };

SearchVehiclesRequest _$SearchVehiclesRequestFromJson(
        Map<String, dynamic> json) =>
    SearchVehiclesRequest(
      location: json['location'] == null
          ? null
          : GpsCoordinate.fromJson(json['location'] as Map<String, dynamic>),
      maxDistance: (json['maxDistance'] as num?)?.toDouble(),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      subscriptionId: json['subscriptionId'] as String?,
      vehicleFilterCriteria: json['vehicleFilterCriteria'] == null
          ? null
          : VehicleFilterCriteria.fromJson(
              json['vehicleFilterCriteria'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchVehiclesRequestToJson(
        SearchVehiclesRequest instance) =>
    <String, dynamic>{
      'location': instance.location?.toJson(),
      'maxDistance': instance.maxDistance,
      'period': instance.period?.toJson(),
      'subscriptionId': instance.subscriptionId,
      'vehicleFilterCriteria': instance.vehicleFilterCriteria?.toJson(),
    };

SignupUser _$SignupUserFromJson(Map<String, dynamic> json) => SignupUser(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignupUserToJson(SignupUser instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

StartVehicleUsageRequest _$StartVehicleUsageRequestFromJson(
        Map<String, dynamic> json) =>
    StartVehicleUsageRequest(
      bookingId: json['bookingId'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$StartVehicleUsageRequestToJson(
        StartVehicleUsageRequest instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'vehicleId': instance.vehicleId,
    };

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      clientId: (json['clientId'] as num?)?.toInt(),
      clientName: json['clientName'] as String?,
      clientRoles: subscriptionClientRolesNullableFromJson(json['clientRoles']),
      commitment: (json['commitment'] as num?)?.toInt(),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      id: (json['id'] as num?)?.toInt(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      subscriptionType: json['subscriptionType'] as String?,
      vehicleId: json['vehicleId'] as String?,
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'clientName': instance.clientName,
      'clientRoles':
          subscriptionClientRolesNullableToJson(instance.clientRoles),
      'commitment': instance.commitment,
      'endDate': instance.endDate?.toIso8601String(),
      'id': instance.id,
      'startDate': instance.startDate?.toIso8601String(),
      'subscriptionType': instance.subscriptionType,
      'vehicleId': instance.vehicleId,
      'vehicles': instance.vehicles,
    };

TelematicsProvider _$TelematicsProviderFromJson(Map<String, dynamic> json) =>
    TelematicsProvider(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TelematicsProviderToJson(TelematicsProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

TelematicsTracking _$TelematicsTrackingFromJson(Map<String, dynamic> json) =>
    TelematicsTracking(
      address: json['address'] as String?,
      batteryPercentage: (json['batteryPercentage'] as num?)?.toInt(),
      charging: json['charging'] as bool?,
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      eventReason:
          telematicsTrackingEventReasonNullableFromJson(json['eventReason']),
      locationPosition: json['locationPosition'] == null
          ? null
          : LocationPosition.fromJson(
              json['locationPosition'] as Map<String, dynamic>),
      mileage: (json['mileage'] as num?)?.toDouble(),
      telematicsId: json['telematicsId'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$TelematicsTrackingToJson(TelematicsTracking instance) =>
    <String, dynamic>{
      'address': instance.address,
      'batteryPercentage': instance.batteryPercentage,
      'charging': instance.charging,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'eventReason':
          telematicsTrackingEventReasonNullableToJson(instance.eventReason),
      'locationPosition': instance.locationPosition?.toJson(),
      'mileage': instance.mileage,
      'telematicsId': instance.telematicsId,
      'vehicleId': instance.vehicleId,
    };

TelematicsVehicleUsage _$TelematicsVehicleUsageFromJson(
        Map<String, dynamic> json) =>
    TelematicsVehicleUsage(
      inversBluetoothToken: json['inversBluetoothToken'] == null
          ? null
          : BluetoothToken.fromJson(
              json['inversBluetoothToken'] as Map<String, dynamic>),
      lockStatus:
          telematicsVehicleUsageLockStatusNullableFromJson(json['lockStatus']),
      mileageInfo: json['mileageInfo'] == null
          ? null
          : Mileage.fromJson(json['mileageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TelematicsVehicleUsageToJson(
        TelematicsVehicleUsage instance) =>
    <String, dynamic>{
      'inversBluetoothToken': instance.inversBluetoothToken?.toJson(),
      'lockStatus':
          telematicsVehicleUsageLockStatusNullableToJson(instance.lockStatus),
      'mileageInfo': instance.mileageInfo?.toJson(),
    };

TerminateContractHints _$TerminateContractHintsFromJson(
        Map<String, dynamic> json) =>
    TerminateContractHints(
      actionAllowed: json['actionAllowed'] as bool?,
      maximalDate: json['maximalDate'] == null
          ? null
          : DateTime.parse(json['maximalDate'] as String),
      minimalDate: json['minimalDate'] == null
          ? null
          : DateTime.parse(json['minimalDate'] as String),
      terminateOption:
          terminateDayOptionNullableFromJson(json['terminateOption']),
    );

Map<String, dynamic> _$TerminateContractHintsToJson(
        TerminateContractHints instance) =>
    <String, dynamic>{
      'actionAllowed': instance.actionAllowed,
      'maximalDate': _dateToJson(instance.maximalDate),
      'minimalDate': _dateToJson(instance.minimalDate),
      'terminateOption':
          terminateDayOptionNullableToJson(instance.terminateOption),
    };

TerminateContractHintsApiDataResponse
    _$TerminateContractHintsApiDataResponseFromJson(
            Map<String, dynamic> json) =>
        TerminateContractHintsApiDataResponse(
          data: json['data'] == null
              ? null
              : TerminateContractHints.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TerminateContractHintsApiDataResponseToJson(
        TerminateContractHintsApiDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

TerminateContractRequest _$TerminateContractRequestFromJson(
        Map<String, dynamic> json) =>
    TerminateContractRequest(
      reason: json['reason'] as String?,
      terminationDate: json['terminationDate'] == null
          ? null
          : DateTime.parse(json['terminationDate'] as String),
    );

Map<String, dynamic> _$TerminateContractRequestToJson(
        TerminateContractRequest instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'terminationDate': _dateToJson(instance.terminationDate),
    };

UpdateBookingRequest _$UpdateBookingRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateBookingRequest(
      adminComments: json['adminComments'] as String?,
      authorizationComments: json['authorizationComments'] as String?,
      comments: json['comments'] as String?,
      doNotInvoice: json['doNotInvoice'] as bool?,
      invoiceComments: json['invoiceComments'] as String?,
      invoiced: json['invoiced'] as bool?,
      needsCorrection: json['needsCorrection'] as bool?,
      needsCorrectionComments: json['needsCorrectionComments'] as String?,
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateBookingRequestToJson(
        UpdateBookingRequest instance) =>
    <String, dynamic>{
      'adminComments': instance.adminComments,
      'authorizationComments': instance.authorizationComments,
      'comments': instance.comments,
      'doNotInvoice': instance.doNotInvoice,
      'invoiceComments': instance.invoiceComments,
      'invoiced': instance.invoiced,
      'needsCorrection': instance.needsCorrection,
      'needsCorrectionComments': instance.needsCorrectionComments,
      'period': instance.period?.toJson(),
    };

UpdateTelematicsRequest _$UpdateTelematicsRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateTelematicsRequest(
      alwaysUseBluetooth: json['alwaysUseBluetooth'] as bool?,
      ignitionCheck: json['ignitionCheck'] as bool?,
      keyfobCheck: json['keyfobCheck'] as bool?,
      maxRange: (json['maxRange'] as num?)?.toInt(),
      phoneNumber: json['phoneNumber'] as String?,
      providerDeviceId: json['providerDeviceId'] as String,
      providerId: json['providerId'] as String,
    );

Map<String, dynamic> _$UpdateTelematicsRequestToJson(
        UpdateTelematicsRequest instance) =>
    <String, dynamic>{
      'alwaysUseBluetooth': instance.alwaysUseBluetooth,
      'ignitionCheck': instance.ignitionCheck,
      'keyfobCheck': instance.keyfobCheck,
      'maxRange': instance.maxRange,
      'phoneNumber': instance.phoneNumber,
      'providerDeviceId': instance.providerDeviceId,
      'providerId': instance.providerId,
    };

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    UpdateUserRequest(
      biography: json['biography'] as String?,
      defaultMembershipId: json['defaultMembershipId'] as String?,
      displayName: json['displayName'] as String?,
      favoriteLocation: json['favoriteLocation'] == null
          ? null
          : GpsLocation.fromJson(
              json['favoriteLocation'] as Map<String, dynamic>),
      homeLocation: json['homeLocation'] == null
          ? null
          : GpsLocation.fromJson(json['homeLocation'] as Map<String, dynamic>),
      joinedSince: json['joinedSince'] == null
          ? null
          : DateTime.parse(json['joinedSince'] as String),
      pushNotificationsEnabled: json['pushNotificationsEnabled'] as bool?,
      role: updateUserRequestRoleNullableFromJson(json['role']),
      tripRegistrationEnabled: json['tripRegistrationEnabled'] as bool?,
      userName: json['userName'] as String?,
      workLocation: json['workLocation'] == null
          ? null
          : GpsLocation.fromJson(json['workLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateUserRequestToJson(UpdateUserRequest instance) =>
    <String, dynamic>{
      'biography': instance.biography,
      'defaultMembershipId': instance.defaultMembershipId,
      'displayName': instance.displayName,
      'favoriteLocation': instance.favoriteLocation?.toJson(),
      'homeLocation': instance.homeLocation?.toJson(),
      'joinedSince': instance.joinedSince?.toIso8601String(),
      'pushNotificationsEnabled': instance.pushNotificationsEnabled,
      'role': updateUserRequestRoleNullableToJson(instance.role),
      'tripRegistrationEnabled': instance.tripRegistrationEnabled,
      'userName': instance.userName,
      'workLocation': instance.workLocation?.toJson(),
    };

UpdateVehicleRequest _$UpdateVehicleRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateVehicleRequest(
      addVehicleLocationRequest: json['addVehicleLocationRequest'] == null
          ? null
          : AddVehicleLocationRequest.fromJson(
              json['addVehicleLocationRequest'] as Map<String, dynamic>),
      approvalType: updateVehicleRequestApprovalTypeNullableFromJson(
          json['approvalType']),
      clientId: json['clientId'] as String?,
      description: json['description'] as String?,
      electricRange: (json['electricRange'] as num?)?.toInt(),
      equipmentIds: (json['equipmentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      expectedInFleetDate: json['expectedInFleetDate'] == null
          ? null
          : DateTime.parse(json['expectedInFleetDate'] as String),
      expectedOutOfFleetDate: json['expectedOutOfFleetDate'] == null
          ? null
          : DateTime.parse(json['expectedOutOfFleetDate'] as String),
      imageUrl: json['imageUrl'] as String?,
      intentIds: (json['intentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      lastPosition: json['lastPosition'] == null
          ? null
          : GpsLocation.fromJson(json['lastPosition'] as Map<String, dynamic>),
      lastPositionTimestamp: json['lastPositionTimestamp'] == null
          ? null
          : DateTime.parse(json['lastPositionTimestamp'] as String),
      licensePlate: json['licensePlate'] as String?,
      name: json['name'] as String?,
      operationalStatus: updateVehicleRequestOperationalStatusNullableFromJson(
          json['operationalStatus']),
      seats: (json['seats'] as num?)?.toInt(),
      typeId: json['typeId'] as String?,
      vehicleId: json['vehicleId'] as String,
      vehicleInfo: json['vehicleInfo'] as String?,
      vehicleInfoPreBooking: json['vehicleInfoPreBooking'] as String?,
      vehicleModelId: json['vehicleModelId'] as String?,
      vehicleTypeId: json['vehicleTypeId'] as String?,
    );

Map<String, dynamic> _$UpdateVehicleRequestToJson(
        UpdateVehicleRequest instance) =>
    <String, dynamic>{
      'addVehicleLocationRequest': instance.addVehicleLocationRequest?.toJson(),
      'approvalType':
          updateVehicleRequestApprovalTypeNullableToJson(instance.approvalType),
      'clientId': instance.clientId,
      'description': instance.description,
      'electricRange': instance.electricRange,
      'equipmentIds': instance.equipmentIds,
      'expectedInFleetDate': instance.expectedInFleetDate?.toIso8601String(),
      'expectedOutOfFleetDate':
          instance.expectedOutOfFleetDate?.toIso8601String(),
      'imageUrl': instance.imageUrl,
      'intentIds': instance.intentIds,
      'lastPosition': instance.lastPosition?.toJson(),
      'lastPositionTimestamp':
          instance.lastPositionTimestamp?.toIso8601String(),
      'licensePlate': instance.licensePlate,
      'name': instance.name,
      'operationalStatus': updateVehicleRequestOperationalStatusNullableToJson(
          instance.operationalStatus),
      'seats': instance.seats,
      'typeId': instance.typeId,
      'vehicleId': instance.vehicleId,
      'vehicleInfo': instance.vehicleInfo,
      'vehicleInfoPreBooking': instance.vehicleInfoPreBooking,
      'vehicleModelId': instance.vehicleModelId,
      'vehicleTypeId': instance.vehicleTypeId,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      homeLocation: json['homeLocation'] == null
          ? null
          : GpsLocation.fromJson(json['homeLocation'] as Map<String, dynamic>),
      id: json['id'] as String?,
      imageUrl: json['imageUrl'] as String?,
      joinedSince: json['joinedSince'] == null
          ? null
          : DateTime.parse(json['joinedSince'] as String),
      pushNotificationsEnabled: json['pushNotificationsEnabled'] as bool?,
      workLocation: json['workLocation'] == null
          ? null
          : GpsLocation.fromJson(json['workLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'homeLocation': instance.homeLocation?.toJson(),
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'joinedSince': instance.joinedSince?.toIso8601String(),
      'pushNotificationsEnabled': instance.pushNotificationsEnabled,
      'workLocation': instance.workLocation?.toJson(),
    };

UserPage _$UserPageFromJson(Map<String, dynamic> json) => UserPage(
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserPageToJson(UserPage instance) => <String, dynamic>{
      'users': instance.users?.map((e) => e.toJson()).toList(),
    };

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
      distance: (json['distance'] as num?)?.toDouble(),
      electricRange: (json['electricRange'] as num?)?.toInt(),
      fanPrice: json['fanPrice'] == null
          ? null
          : BookingPrice.fromJson(json['fanPrice'] as Map<String, dynamic>),
      favorite: json['favorite'] as bool?,
      funPrice: json['funPrice'] == null
          ? null
          : BookingPrice.fromJson(json['funPrice'] as Map<String, dynamic>),
      homePosition: json['homePosition'] == null
          ? null
          : GpsLocation.fromJson(json['homePosition'] as Map<String, dynamic>),
      id: json['id'] as String?,
      imageUrl: json['imageUrl'] as String?,
      lastPosition: json['lastPosition'] == null
          ? null
          : GpsLocation.fromJson(json['lastPosition'] as Map<String, dynamic>),
      lastPositionTimestamp: json['lastPositionTimestamp'] == null
          ? null
          : DateTime.parse(json['lastPositionTimestamp'] as String),
      licensePlate: json['licensePlate'] as String?,
      name: json['name'] as String?,
      operationalStatus:
          vehicleOperationalStatusNullableFromJson(json['operationalStatus']),
      vehicleBodyStyle: json['vehicleBodyStyle'] == null
          ? null
          : BodyStyle.fromJson(
              json['vehicleBodyStyle'] as Map<String, dynamic>),
      vehicleBrand: json['vehicleBrand'] == null
          ? null
          : VehicleBrand.fromJson(json['vehicleBrand'] as Map<String, dynamic>),
      vehicleModel: json['vehicleModel'] == null
          ? null
          : VehicleModel.fromJson(json['vehicleModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
      'distance': instance.distance,
      'electricRange': instance.electricRange,
      'fanPrice': instance.fanPrice?.toJson(),
      'favorite': instance.favorite,
      'funPrice': instance.funPrice?.toJson(),
      'homePosition': instance.homePosition?.toJson(),
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'lastPosition': instance.lastPosition?.toJson(),
      'lastPositionTimestamp':
          instance.lastPositionTimestamp?.toIso8601String(),
      'licensePlate': instance.licensePlate,
      'name': instance.name,
      'operationalStatus':
          vehicleOperationalStatusNullableToJson(instance.operationalStatus),
      'vehicleBodyStyle': instance.vehicleBodyStyle?.toJson(),
      'vehicleBrand': instance.vehicleBrand?.toJson(),
      'vehicleModel': instance.vehicleModel?.toJson(),
    };

VehicleBaseLocation _$VehicleBaseLocationFromJson(Map<String, dynamic> json) =>
    VehicleBaseLocation(
      adType: json['adType'] as String?,
      borough: json['borough'] as String?,
      homePosition: json['homePosition'] == null
          ? null
          : GpsLocation.fromJson(json['homePosition'] as Map<String, dynamic>),
      id: json['id'] as String?,
      memo: json['memo'] as String?,
      name: json['name'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$VehicleBaseLocationToJson(
        VehicleBaseLocation instance) =>
    <String, dynamic>{
      'adType': instance.adType,
      'borough': instance.borough,
      'homePosition': instance.homePosition?.toJson(),
      'id': instance.id,
      'memo': instance.memo,
      'name': instance.name,
      'status': instance.status,
    };

VehicleBaseLocationPage _$VehicleBaseLocationPageFromJson(
        Map<String, dynamic> json) =>
    VehicleBaseLocationPage(
      vehicleBaseLocations: (json['vehicleBaseLocations'] as List<dynamic>?)
              ?.map((e) =>
                  VehicleBaseLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleBaseLocationPageToJson(
        VehicleBaseLocationPage instance) =>
    <String, dynamic>{
      'vehicleBaseLocations':
          instance.vehicleBaseLocations?.map((e) => e.toJson()).toList(),
    };

VehicleBrand _$VehicleBrandFromJson(Map<String, dynamic> json) => VehicleBrand(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VehicleBrandToJson(VehicleBrand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

VehicleBrandPage _$VehicleBrandPageFromJson(Map<String, dynamic> json) =>
    VehicleBrandPage(
      vehicleBrands: (json['vehicleBrands'] as List<dynamic>?)
              ?.map((e) => VehicleBrand.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleBrandPageToJson(VehicleBrandPage instance) =>
    <String, dynamic>{
      'vehicleBrands': instance.vehicleBrands?.map((e) => e.toJson()).toList(),
    };

VehicleContract _$VehicleContractFromJson(Map<String, dynamic> json) =>
    VehicleContract(
      battMaxType:
          vehicleContractBattMaxTypeNullableFromJson(json['battMaxType']),
      clientContractId: (json['clientContractId'] as num?)?.toInt(),
      clientId: (json['clientId'] as num?)?.toInt(),
      clientName: json['clientName'] as String?,
      clientRoles: json['clientRoles'] as String?,
      costForAdditionalKmsExclVat:
          (json['costForAdditionalKmsExclVat'] as num?)?.toDouble(),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      maxInvoiceAmountExclVat:
          (json['maxInvoiceAmountExclVat'] as num?)?.toDouble(),
      monthlyLeaseAmountExclVat:
          (json['monthlyLeaseAmountExclVat'] as num?)?.toDouble(),
      numberOfMonths: (json['numberOfMonths'] as num?)?.toInt(),
      paidStartupCost: (json['paidStartupCost'] as num?)?.toDouble(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      vehicleId: json['vehicleId'] as String?,
      yearlyKmsOnContract: (json['yearlyKmsOnContract'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VehicleContractToJson(VehicleContract instance) =>
    <String, dynamic>{
      'battMaxType':
          vehicleContractBattMaxTypeNullableToJson(instance.battMaxType),
      'clientContractId': instance.clientContractId,
      'clientId': instance.clientId,
      'clientName': instance.clientName,
      'clientRoles': instance.clientRoles,
      'costForAdditionalKmsExclVat': instance.costForAdditionalKmsExclVat,
      'endDate': instance.endDate?.toIso8601String(),
      'maxInvoiceAmountExclVat': instance.maxInvoiceAmountExclVat,
      'monthlyLeaseAmountExclVat': instance.monthlyLeaseAmountExclVat,
      'numberOfMonths': instance.numberOfMonths,
      'paidStartupCost': instance.paidStartupCost,
      'startDate': instance.startDate?.toIso8601String(),
      'vehicleId': instance.vehicleId,
      'yearlyKmsOnContract': instance.yearlyKmsOnContract,
    };

VehicleContractResponse _$VehicleContractResponseFromJson(
        Map<String, dynamic> json) =>
    VehicleContractResponse(
      clientContracts: (json['clientContracts'] as List<dynamic>?)
              ?.map((e) =>
                  ClientContractResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleContractResponseToJson(
        VehicleContractResponse instance) =>
    <String, dynamic>{
      'clientContracts':
          instance.clientContracts?.map((e) => e.toJson()).toList(),
    };

VehicleFilterCriteria _$VehicleFilterCriteriaFromJson(
        Map<String, dynamic> json) =>
    VehicleFilterCriteria(
      bodyStyleIds: (json['bodyStyleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      brandIds: (json['brandIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      licensePlate: json['licensePlate'] as String?,
      minRange: (json['minRange'] as num?)?.toInt(),
      modelIds: (json['modelIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VehicleFilterCriteriaToJson(
        VehicleFilterCriteria instance) =>
    <String, dynamic>{
      'bodyStyleIds': instance.bodyStyleIds,
      'brandIds': instance.brandIds,
      'licensePlate': instance.licensePlate,
      'minRange': instance.minRange,
      'modelIds': instance.modelIds,
      'name': instance.name,
    };

VehicleFilterEnums _$VehicleFilterEnumsFromJson(Map<String, dynamic> json) =>
    VehicleFilterEnums(
      bodyStyles: (json['bodyStyles'] as List<dynamic>?)
              ?.map((e) => BodyStyle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      brands: (json['brands'] as List<dynamic>?)
              ?.map((e) => VehicleBrand.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      models: (json['models'] as List<dynamic>?)
              ?.map((e) => VehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleFilterEnumsToJson(VehicleFilterEnums instance) =>
    <String, dynamic>{
      'bodyStyles': instance.bodyStyles?.map((e) => e.toJson()).toList(),
      'brands': instance.brands?.map((e) => e.toJson()).toList(),
      'models': instance.models?.map((e) => e.toJson()).toList(),
    };

VehicleGroup _$VehicleGroupFromJson(Map<String, dynamic> json) => VehicleGroup(
      id: json['id'] as String?,
      name: json['name'] as String?,
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleGroupToJson(VehicleGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

VehicleGroupPage _$VehicleGroupPageFromJson(Map<String, dynamic> json) =>
    VehicleGroupPage(
      vehicleGroups: (json['vehicleGroups'] as List<dynamic>?)
              ?.map((e) => VehicleGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleGroupPageToJson(VehicleGroupPage instance) =>
    <String, dynamic>{
      'vehicleGroups': instance.vehicleGroups?.map((e) => e.toJson()).toList(),
    };

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) => VehicleModel(
      bodyStyle: json['bodyStyle'] == null
          ? null
          : BodyStyle.fromJson(json['bodyStyle'] as Map<String, dynamic>),
      brandId: json['brandId'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VehicleModelToJson(VehicleModel instance) =>
    <String, dynamic>{
      'bodyStyle': instance.bodyStyle?.toJson(),
      'brandId': instance.brandId,
      'id': instance.id,
      'name': instance.name,
    };

VehicleModelPage _$VehicleModelPageFromJson(Map<String, dynamic> json) =>
    VehicleModelPage(
      vehicleModels: (json['vehicleModels'] as List<dynamic>?)
              ?.map((e) => VehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleModelPageToJson(VehicleModelPage instance) =>
    <String, dynamic>{
      'vehicleModels': instance.vehicleModels?.map((e) => e.toJson()).toList(),
    };

VehicleModelRate _$VehicleModelRateFromJson(Map<String, dynamic> json) =>
    VehicleModelRate(
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dayPrice: (json['dayPrice'] as num).toDouble(),
      hourPrice: (json['hourPrice'] as num).toDouble(),
      id: json['id'] as String,
      kmPrice: (json['kmPrice'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      validFrom: DateTime.parse(json['validFrom'] as String),
      validUntil: json['validUntil'] == null
          ? null
          : DateTime.parse(json['validUntil'] as String),
      vehicleModelId: json['vehicleModelId'] as String,
    );

Map<String, dynamic> _$VehicleModelRateToJson(VehicleModelRate instance) =>
    <String, dynamic>{
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dayPrice': instance.dayPrice,
      'hourPrice': instance.hourPrice,
      'id': instance.id,
      'kmPrice': instance.kmPrice,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'validFrom': instance.validFrom.toIso8601String(),
      'validUntil': instance.validUntil?.toIso8601String(),
      'vehicleModelId': instance.vehicleModelId,
    };

VehicleRate _$VehicleRateFromJson(Map<String, dynamic> json) => VehicleRate(
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dayPrice: (json['dayPrice'] as num?)?.toDouble(),
      discountPercent: (json['discountPercent'] as num?)?.toDouble(),
      hourPrice: (json['hourPrice'] as num?)?.toDouble(),
      id: json['id'] as String,
      kmPrice: (json['kmPrice'] as num?)?.toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      validFrom: DateTime.parse(json['validFrom'] as String),
      validUntil: json['validUntil'] == null
          ? null
          : DateTime.parse(json['validUntil'] as String),
      vehicleId: json['vehicleId'] as String,
    );

Map<String, dynamic> _$VehicleRateToJson(VehicleRate instance) =>
    <String, dynamic>{
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dayPrice': instance.dayPrice,
      'discountPercent': instance.discountPercent,
      'hourPrice': instance.hourPrice,
      'id': instance.id,
      'kmPrice': instance.kmPrice,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'validFrom': instance.validFrom.toIso8601String(),
      'validUntil': instance.validUntil?.toIso8601String(),
      'vehicleId': instance.vehicleId,
    };

VehicleTelematics _$VehicleTelematicsFromJson(Map<String, dynamic> json) =>
    VehicleTelematics(
      maxRange: (json['maxRange'] as num?)?.toInt(),
      phoneNumber: json['phoneNumber'] as String?,
      providerDeviceId: json['providerDeviceId'] as String?,
      providerId: json['providerId'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$VehicleTelematicsToJson(VehicleTelematics instance) =>
    <String, dynamic>{
      'maxRange': instance.maxRange,
      'phoneNumber': instance.phoneNumber,
      'providerDeviceId': instance.providerDeviceId,
      'providerId': instance.providerId,
      'vehicleId': instance.vehicleId,
    };

VehicleUsage _$VehicleUsageFromJson(Map<String, dynamic> json) => VehicleUsage(
      id: json['id'] as String?,
      mileageDelta: (json['mileageDelta'] as num?)?.toDouble(),
      mileageEndValue: (json['mileageEndValue'] as num?)?.toDouble(),
      mileageStartValue: (json['mileageStartValue'] as num?)?.toDouble(),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      status: vehicleUsageStatusNullableFromJson(json['status']),
      statusMessage: json['statusMessage'] as String?,
      vehicleId: json['vehicleId'] as String?,
    );

Map<String, dynamic> _$VehicleUsageToJson(VehicleUsage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mileageDelta': instance.mileageDelta,
      'mileageEndValue': instance.mileageEndValue,
      'mileageStartValue': instance.mileageStartValue,
      'period': instance.period?.toJson(),
      'status': vehicleUsageStatusNullableToJson(instance.status),
      'statusMessage': instance.statusMessage,
      'vehicleId': instance.vehicleId,
    };

VehicleUsagePage _$VehicleUsagePageFromJson(Map<String, dynamic> json) =>
    VehicleUsagePage(
      vehicleUsages: (json['vehicleUsages'] as List<dynamic>?)
              ?.map((e) => VehicleUsage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleUsagePageToJson(VehicleUsagePage instance) =>
    <String, dynamic>{
      'vehicleUsages': instance.vehicleUsages?.map((e) => e.toJson()).toList(),
    };

VehicleUsageReference _$VehicleUsageReferenceFromJson(
        Map<String, dynamic> json) =>
    VehicleUsageReference(
      id: json['id'] as String?,
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      status: vehicleUsageReferenceStatusNullableFromJson(json['status']),
      statusMessage: json['statusMessage'] as String?,
    );

Map<String, dynamic> _$VehicleUsageReferenceToJson(
        VehicleUsageReference instance) =>
    <String, dynamic>{
      'id': instance.id,
      'period': instance.period?.toJson(),
      'status': vehicleUsageReferenceStatusNullableToJson(instance.status),
      'statusMessage': instance.statusMessage,
    };

VehicleUsageUpdateStatusRequest _$VehicleUsageUpdateStatusRequestFromJson(
        Map<String, dynamic> json) =>
    VehicleUsageUpdateStatusRequest(
      mileage: (json['mileage'] as num?)?.toDouble(),
      status: vehicleUsageUpdateStatusRequestStatusFromJson(json['status']),
      statusMessage: json['statusMessage'] as String?,
    );

Map<String, dynamic> _$VehicleUsageUpdateStatusRequestToJson(
        VehicleUsageUpdateStatusRequest instance) =>
    <String, dynamic>{
      'mileage': instance.mileage,
      'status': vehicleUsageUpdateStatusRequestStatusToJson(instance.status),
      'statusMessage': instance.statusMessage,
    };

VehiclesPage _$VehiclesPageFromJson(Map<String, dynamic> json) => VehiclesPage(
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehiclesPageToJson(VehiclesPage instance) =>
    <String, dynamic>{
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

UserV1ImageUserIdPost$RequestBody _$UserV1ImageUserIdPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    UserV1ImageUserIdPost$RequestBody(
      file: json['file'] as String,
    );

Map<String, dynamic> _$UserV1ImageUserIdPost$RequestBodyToJson(
        UserV1ImageUserIdPost$RequestBody instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

UserV1UsersOnboardingDocumentsPut$RequestBody
    _$UserV1UsersOnboardingDocumentsPut$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        UserV1UsersOnboardingDocumentsPut$RequestBody(
          backDriverLicense: json['backDriverLicense'] as String?,
          backId: json['backId'] as String?,
          damageStatistic: json['damageStatistic'] as String?,
          frontDriverLicense: json['frontDriverLicense'] as String?,
          frontId: json['frontId'] as String?,
          selfie: json['selfie'] as String?,
        );

Map<String, dynamic> _$UserV1UsersOnboardingDocumentsPut$RequestBodyToJson(
        UserV1UsersOnboardingDocumentsPut$RequestBody instance) =>
    <String, dynamic>{
      'backDriverLicense': instance.backDriverLicense,
      'backId': instance.backId,
      'damageStatistic': instance.damageStatistic,
      'frontDriverLicense': instance.frontDriverLicense,
      'frontId': instance.frontId,
      'selfie': instance.selfie,
    };

VehicleV1VehicleImageVehicleIdPost$RequestBody
    _$VehicleV1VehicleImageVehicleIdPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        VehicleV1VehicleImageVehicleIdPost$RequestBody(
          file: json['file'] as String,
        );

Map<String, dynamic> _$VehicleV1VehicleImageVehicleIdPost$RequestBodyToJson(
        VehicleV1VehicleImageVehicleIdPost$RequestBody instance) =>
    <String, dynamic>{
      'file': instance.file,
    };
