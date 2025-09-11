import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AdjacentNonAvailabilityType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BOOKING')
  booking('BOOKING'),
  @JsonValue('NOT_AVAILABLE')
  notAvailable('NOT_AVAILABLE');

  final String? value;

  const AdjacentNonAvailabilityType(this.value);
}

enum BattFormulaType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BattFun')
  battfun('BattFun'),
  @JsonValue('BattFunPlus')
  battfunplus('BattFunPlus'),
  @JsonValue('BattFunPlusDL')
  battfunplusdl('BattFunPlusDL'),
  @JsonValue('BattForBusiness')
  battforbusiness('BattForBusiness'),
  @JsonValue('BattFan')
  battfan('BattFan'),
  @JsonValue('BattFanPlus')
  battfanplus('BattFanPlus'),
  @JsonValue('BattMax')
  battmax('BattMax'),
  @JsonValue('EigenBeheer')
  eigenbeheer('EigenBeheer'),
  @JsonValue('Straal')
  straal('Straal');

  final String? value;

  const BattFormulaType(this.value);
}

enum BatteryStatusCharging {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NOT_CHARGING')
  notCharging('NOT_CHARGING'),
  @JsonValue('NORMAL_CHARGE')
  normalCharge('NORMAL_CHARGE'),
  @JsonValue('QUICK_CHARGE')
  quickCharge('QUICK_CHARGE'),
  @JsonValue('UNKNOWN')
  unknown('UNKNOWN');

  final String? value;

  const BatteryStatusCharging(this.value);
}

enum BatteryStatusFetchStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('FROM_TRACKING')
  fromTracking('FROM_TRACKING'),
  @JsonValue('OK')
  ok('OK'),
  @JsonValue('TIME_OUT')
  timeOut('TIME_OUT'),
  @JsonValue('ERROR')
  error('ERROR');

  final String? value;

  const BatteryStatusFetchStatus(this.value);
}

enum BillingPriceUnit {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DAYS')
  days('DAYS'),
  @JsonValue('HOURS')
  hours('HOURS');

  final String? value;

  const BillingPriceUnit(this.value);
}

enum BookingInvoiceStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TO_BE_INVOICED')
  toBeInvoiced('TO_BE_INVOICED'),
  @JsonValue('NEEDS_CORRECTION')
  needsCorrection('NEEDS_CORRECTION'),
  @JsonValue('NOT_INVOICED')
  notInvoiced('NOT_INVOICED'),
  @JsonValue('INVOICED')
  invoiced('INVOICED');

  final String? value;

  const BookingInvoiceStatus(this.value);
}

enum BookingNextPossibleStatuses {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AWAITING_APPROVAL')
  awaitingApproval('AWAITING_APPROVAL'),
  @JsonValue('APPROVED')
  approved('APPROVED'),
  @JsonValue('REJECTED')
  rejected('REJECTED'),
  @JsonValue('CANCELED')
  canceled('CANCELED'),
  @JsonValue('CANCELED_REMOTE')
  canceledRemote('CANCELED_REMOTE'),
  @JsonValue('EXPIRED')
  expired('EXPIRED'),
  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('STOPPED')
  stopped('STOPPED');

  final String? value;

  const BookingNextPossibleStatuses(this.value);
}

enum BookingStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AWAITING_APPROVAL')
  awaitingApproval('AWAITING_APPROVAL'),
  @JsonValue('APPROVED')
  approved('APPROVED'),
  @JsonValue('REJECTED')
  rejected('REJECTED'),
  @JsonValue('CANCELED')
  canceled('CANCELED'),
  @JsonValue('CANCELED_REMOTE')
  canceledRemote('CANCELED_REMOTE'),
  @JsonValue('EXPIRED')
  expired('EXPIRED'),
  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('STOPPED')
  stopped('STOPPED');

  final String? value;

  const BookingStatus(this.value);
}

enum ChangeLockRequestLockStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LOCKED')
  locked('LOCKED'),
  @JsonValue('BLUETOOTH_INVERS_UNLOCKING')
  bluetoothInversUnlocking('BLUETOOTH_INVERS_UNLOCKING'),
  @JsonValue('BLUETOOTH_INVERS_LOCKING')
  bluetoothInversLocking('BLUETOOTH_INVERS_LOCKING'),
  @JsonValue('UNLOCKED')
  unlocked('UNLOCKED');

  final String? value;

  const ChangeLockRequestLockStatus(this.value);
}

enum ClientContractFormula {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BattFun')
  battfun('BattFun'),
  @JsonValue('BattFunPlus')
  battfunplus('BattFunPlus'),
  @JsonValue('BattFunPlusDL')
  battfunplusdl('BattFunPlusDL'),
  @JsonValue('BattForBusiness')
  battforbusiness('BattForBusiness'),
  @JsonValue('BattFan')
  battfan('BattFan'),
  @JsonValue('BattFanPlus')
  battfanplus('BattFanPlus'),
  @JsonValue('BattMax')
  battmax('BattMax'),
  @JsonValue('EigenBeheer')
  eigenbeheer('EigenBeheer'),
  @JsonValue('Straal')
  straal('Straal');

  final String? value;

  const ClientContractFormula(this.value);
}

enum ClientContractStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Draft')
  draft('Draft'),
  @JsonValue('Active')
  active('Active'),
  @JsonValue('Suspended')
  suspended('Suspended'),
  @JsonValue('Cancelled')
  cancelled('Cancelled'),
  @JsonValue('Stopped')
  stopped('Stopped');

  final String? value;

  const ClientContractStatus(this.value);
}

enum ClientContractType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Unknown')
  unknown('Unknown'),
  @JsonValue('Usage')
  usage('Usage'),
  @JsonValue('Vehicle')
  vehicle('Vehicle');

  final String? value;

  const ClientContractType(this.value);
}

enum ClientContractVehicleRecordBattMaxType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Bridge')
  bridge('Bridge'),
  @JsonValue('Standard')
  standard('Standard');

  final String? value;

  const ClientContractVehicleRecordBattMaxType(this.value);
}

enum CommitmentChangeOption {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AnyDay')
  anyday('AnyDay'),
  @JsonValue('SameDayOfMonth')
  samedayofmonth('SameDayOfMonth');

  final String? value;

  const CommitmentChangeOption(this.value);
}

enum CreateIssueRequestPriority {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('P1_LOW')
  p1Low('P1_LOW'),
  @JsonValue('P2_MEDIUM')
  p2Medium('P2_MEDIUM'),
  @JsonValue('P3_HIGH')
  p3High('P3_HIGH'),
  @JsonValue('P4_CRITICAL')
  p4Critical('P4_CRITICAL'),
  @JsonValue('P5_BLOCKER')
  p5Blocker('P5_BLOCKER');

  final String? value;

  const CreateIssueRequestPriority(this.value);
}

enum CreateVehicleContractBattMaxType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Bridge')
  bridge('Bridge'),
  @JsonValue('Standard')
  standard('Standard');

  final String? value;

  const CreateVehicleContractBattMaxType(this.value);
}

enum CreateVehicleContractBillingType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BattMax.LEASE.3days')
  battmaxLease3days('BattMax.LEASE.3days'),
  @JsonValue('BattMax.LEASE.FLAT')
  battmaxLeaseFlat('BattMax.LEASE.FLAT');

  final String? value;

  const CreateVehicleContractBillingType(this.value);
}

enum CreditDetailsCreditStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SKIPPED')
  skipped('SKIPPED'),
  @JsonValue('CREDITED')
  credited('CREDITED'),
  @JsonValue('WAITING_FOR_APPROVAL')
  waitingForApproval('WAITING_FOR_APPROVAL'),
  @JsonValue('UNKNOWN')
  unknown('UNKNOWN');

  final String? value;

  const CreditDetailsCreditStatus(this.value);
}

enum CreditDetailsInvoiceStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SKIPPED')
  skipped('SKIPPED'),
  @JsonValue('INVOICED')
  invoiced('INVOICED'),
  @JsonValue('WAITING_FOR_APPROVAL')
  waitingForApproval('WAITING_FOR_APPROVAL'),
  @JsonValue('READY_FOR_INVOICE')
  readyForInvoice('READY_FOR_INVOICE'),
  @JsonValue('UNKNOWN')
  unknown('UNKNOWN');

  final String? value;

  const CreditDetailsInvoiceStatus(this.value);
}

enum FormulaChangeOption {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AnyDay')
  anyday('AnyDay'),
  @JsonValue('SameDayOfMonth')
  samedayofmonth('SameDayOfMonth');

  final String? value;

  const FormulaChangeOption(this.value);
}

enum InvoicePaymentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('paid')
  paid('paid'),
  @JsonValue('not_paid')
  notPaid('not_paid'),
  @JsonValue('partially_paid')
  partiallyPaid('partially_paid'),
  @JsonValue('reversed')
  reversed('reversed');

  final String? value;

  const InvoicePaymentStatus(this.value);
}

enum IssuePriority {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('P1_LOW')
  p1Low('P1_LOW'),
  @JsonValue('P2_MEDIUM')
  p2Medium('P2_MEDIUM'),
  @JsonValue('P3_HIGH')
  p3High('P3_HIGH'),
  @JsonValue('P4_CRITICAL')
  p4Critical('P4_CRITICAL'),
  @JsonValue('P5_BLOCKER')
  p5Blocker('P5_BLOCKER');

  final String? value;

  const IssuePriority(this.value);
}

enum IssueStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DRAFT')
  draft('DRAFT'),
  @JsonValue('CREATED')
  created('CREATED'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('RESOLVED')
  resolved('RESOLVED'),
  @JsonValue('BLOCKED')
  blocked('BLOCKED'),
  @JsonValue('WILL_NOT_FIX')
  willNotFix('WILL_NOT_FIX');

  final String? value;

  const IssueStatus(this.value);
}

enum IssueActionPriority {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('P1_LOW')
  p1Low('P1_LOW'),
  @JsonValue('P2_MEDIUM')
  p2Medium('P2_MEDIUM'),
  @JsonValue('P3_HIGH')
  p3High('P3_HIGH'),
  @JsonValue('P4_CRITICAL')
  p4Critical('P4_CRITICAL'),
  @JsonValue('P5_BLOCKER')
  p5Blocker('P5_BLOCKER');

  final String? value;

  const IssueActionPriority(this.value);
}

enum IssueActionStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DRAFT')
  draft('DRAFT'),
  @JsonValue('CREATED')
  created('CREATED'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('RESOLVED')
  resolved('RESOLVED'),
  @JsonValue('BLOCKED')
  blocked('BLOCKED'),
  @JsonValue('WILL_NOT_FIX')
  willNotFix('WILL_NOT_FIX');

  final String? value;

  const IssueActionStatus(this.value);
}

enum MyAvailableVehicleType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AVAILABLE')
  available('AVAILABLE'),
  @JsonValue('BLOCKED')
  blocked('BLOCKED');

  final String? value;

  const MyAvailableVehicleType(this.value);
}

enum NonAvailabilityType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BOOKING')
  booking('BOOKING'),
  @JsonValue('NOT_AVAILABLE')
  notAvailable('NOT_AVAILABLE');

  final String? value;

  const NonAvailabilityType(this.value);
}

enum OnboardingStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NONE')
  none('NONE'),
  @JsonValue('CONVICTION')
  conviction('CONVICTION'),
  @JsonValue('DOCUMENTS')
  documents('DOCUMENTS'),
  @JsonValue('PERSONAL')
  personal('PERSONAL'),
  @JsonValue('PHONE')
  phone('PHONE'),
  @JsonValue('PHONE_VERIFIED')
  phoneVerified('PHONE_VERIFIED'),
  @JsonValue('COMPLETED')
  completed('COMPLETED');

  final String? value;

  const OnboardingStatus(this.value);
}

enum OnboardingPersonalLicenseType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BELGIAN')
  belgian('BELGIAN'),
  @JsonValue('EUROPEAN')
  european('EUROPEAN'),
  @JsonValue('OTHER')
  other('OTHER');

  final String? value;

  const OnboardingPersonalLicenseType(this.value);
}

enum RecurringScheduleRecurringType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DAILY')
  daily('DAILY'),
  @JsonValue('WEEKLY')
  weekly('WEEKLY'),
  @JsonValue('WEEKDAYS')
  weekdays('WEEKDAYS'),
  @JsonValue('MONTHLY')
  monthly('MONTHLY');

  final String? value;

  const RecurringScheduleRecurringType(this.value);
}

enum RecurringScheduleTimeZone {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BRUSSELS')
  brussels('BRUSSELS'),
  @JsonValue('LONDON')
  london('LONDON'),
  @JsonValue('NEW_YORK')
  newYork('NEW_YORK');

  final String? value;

  const RecurringScheduleTimeZone(this.value);
}

enum SearchBookingsRequestStatuses {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AWAITING_APPROVAL')
  awaitingApproval('AWAITING_APPROVAL'),
  @JsonValue('APPROVED')
  approved('APPROVED'),
  @JsonValue('REJECTED')
  rejected('REJECTED'),
  @JsonValue('CANCELED')
  canceled('CANCELED'),
  @JsonValue('CANCELED_REMOTE')
  canceledRemote('CANCELED_REMOTE'),
  @JsonValue('EXPIRED')
  expired('EXPIRED'),
  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('STOPPED')
  stopped('STOPPED');

  final String? value;

  const SearchBookingsRequestStatuses(this.value);
}

enum SearchIssuesRequestOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('asc')
  asc('asc'),
  @JsonValue('desc')
  desc('desc');

  final String? value;

  const SearchIssuesRequestOrder(this.value);
}

enum SearchIssuesRequestPriorities {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('P1_LOW')
  p1Low('P1_LOW'),
  @JsonValue('P2_MEDIUM')
  p2Medium('P2_MEDIUM'),
  @JsonValue('P3_HIGH')
  p3High('P3_HIGH'),
  @JsonValue('P4_CRITICAL')
  p4Critical('P4_CRITICAL'),
  @JsonValue('P5_BLOCKER')
  p5Blocker('P5_BLOCKER');

  final String? value;

  const SearchIssuesRequestPriorities(this.value);
}

enum SearchIssuesRequestStatuses {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DRAFT')
  draft('DRAFT'),
  @JsonValue('CREATED')
  created('CREATED'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('RESOLVED')
  resolved('RESOLVED'),
  @JsonValue('BLOCKED')
  blocked('BLOCKED'),
  @JsonValue('WILL_NOT_FIX')
  willNotFix('WILL_NOT_FIX');

  final String? value;

  const SearchIssuesRequestStatuses(this.value);
}

enum SearchTelematicsTrackingRequestEventReason {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('alarm_input_changed')
  alarmInputChanged('alarm_input_changed'),
  @JsonValue('alarm_input_2_changed')
  alarmInput2Changed('alarm_input_2_changed'),
  @JsonValue('boot')
  boot('boot'),
  @JsonValue('boot_mass_storage_mode')
  bootMassStorageMode('boot_mass_storage_mode'),
  @JsonValue('can_value_high')
  canValueHigh('can_value_high'),
  @JsonValue('can_value_low')
  canValueLow('can_value_low'),
  @JsonValue('card_reader_rfid_tag_read')
  cardReaderRfidTagRead('card_reader_rfid_tag_read'),
  @JsonValue('central_lock_changed')
  centralLockChanged('central_lock_changed'),
  @JsonValue('central_lock_command_without_change')
  centralLockCommandWithoutChange('central_lock_command_without_change'),
  @JsonValue('ev_charge_adapter_changed')
  evChargeAdapterChanged('ev_charge_adapter_changed'),
  @JsonValue('ev_charge_changed')
  evChargeChanged('ev_charge_changed'),
  @JsonValue('ev_quick_charge_changed')
  evQuickChargeChanged('ev_quick_charge_changed'),
  @JsonValue('external_relay_triggered')
  externalRelayTriggered('external_relay_triggered'),
  @JsonValue('first_fix')
  firstFix('first_fix'),
  @JsonValue('fuel_level_alarm')
  fuelLevelAlarm('fuel_level_alarm'),
  @JsonValue('fuel_level_recovered')
  fuelLevelRecovered('fuel_level_recovered'),
  @JsonValue('ignition_changed')
  ignitionChanged('ignition_changed'),
  @JsonValue('immobilizer_changed')
  immobilizerChanged('immobilizer_changed'),
  @JsonValue('immobilizer_command_without_change')
  immobilizerCommandWithoutChange('immobilizer_command_without_change'),
  @JsonValue('keyfob_changed')
  keyfobChanged('keyfob_changed'),
  @JsonValue('low_bat_alarm')
  lowBatAlarm('low_bat_alarm'),
  @JsonValue('low_bat_recovered')
  lowBatRecovered('low_bat_recovered'),
  @JsonValue('rfid_tag_changed')
  rfidTagChanged('rfid_tag_changed'),
  @JsonValue('power_fail_detected')
  powerFailDetected('power_fail_detected'),
  @JsonValue('unknown')
  unknown('unknown'),
  @JsonValue('flespi_callback')
  flespiCallback('flespi_callback'),
  @JsonValue('continental_polling')
  continentalPolling('continental_polling'),
  @JsonValue('doors_changed')
  doorsChanged('doors_changed'),
  @JsonValue('central_lock_read_state_changed')
  centralLockReadStateChanged('central_lock_read_state_changed'),
  @JsonValue('bluetooth_authenticated')
  bluetoothAuthenticated('bluetooth_authenticated'),
  @JsonValue('bluetooth_connected')
  bluetoothConnected('bluetooth_connected'),
  @JsonValue('bluetooth_disconnected')
  bluetoothDisconnected('bluetooth_disconnected'),
  @JsonValue('shock_detected')
  shockDetected('shock_detected'),
  @JsonValue('shock_data_ready')
  shockDataReady('shock_data_ready');

  final String? value;

  const SearchTelematicsTrackingRequestEventReason(this.value);
}

enum SubscriptionClientRoles {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('User')
  user('User'),
  @JsonValue('MainUser')
  mainuser('MainUser');

  final String? value;

  const SubscriptionClientRoles(this.value);
}

enum TelematicsTrackingEventReason {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('alarm_input_changed')
  alarmInputChanged('alarm_input_changed'),
  @JsonValue('alarm_input_2_changed')
  alarmInput2Changed('alarm_input_2_changed'),
  @JsonValue('boot')
  boot('boot'),
  @JsonValue('boot_mass_storage_mode')
  bootMassStorageMode('boot_mass_storage_mode'),
  @JsonValue('can_value_high')
  canValueHigh('can_value_high'),
  @JsonValue('can_value_low')
  canValueLow('can_value_low'),
  @JsonValue('card_reader_rfid_tag_read')
  cardReaderRfidTagRead('card_reader_rfid_tag_read'),
  @JsonValue('central_lock_changed')
  centralLockChanged('central_lock_changed'),
  @JsonValue('central_lock_command_without_change')
  centralLockCommandWithoutChange('central_lock_command_without_change'),
  @JsonValue('ev_charge_adapter_changed')
  evChargeAdapterChanged('ev_charge_adapter_changed'),
  @JsonValue('ev_charge_changed')
  evChargeChanged('ev_charge_changed'),
  @JsonValue('ev_quick_charge_changed')
  evQuickChargeChanged('ev_quick_charge_changed'),
  @JsonValue('external_relay_triggered')
  externalRelayTriggered('external_relay_triggered'),
  @JsonValue('first_fix')
  firstFix('first_fix'),
  @JsonValue('fuel_level_alarm')
  fuelLevelAlarm('fuel_level_alarm'),
  @JsonValue('fuel_level_recovered')
  fuelLevelRecovered('fuel_level_recovered'),
  @JsonValue('ignition_changed')
  ignitionChanged('ignition_changed'),
  @JsonValue('immobilizer_changed')
  immobilizerChanged('immobilizer_changed'),
  @JsonValue('immobilizer_command_without_change')
  immobilizerCommandWithoutChange('immobilizer_command_without_change'),
  @JsonValue('keyfob_changed')
  keyfobChanged('keyfob_changed'),
  @JsonValue('low_bat_alarm')
  lowBatAlarm('low_bat_alarm'),
  @JsonValue('low_bat_recovered')
  lowBatRecovered('low_bat_recovered'),
  @JsonValue('rfid_tag_changed')
  rfidTagChanged('rfid_tag_changed'),
  @JsonValue('power_fail_detected')
  powerFailDetected('power_fail_detected'),
  @JsonValue('unknown')
  unknown('unknown'),
  @JsonValue('flespi_callback')
  flespiCallback('flespi_callback'),
  @JsonValue('continental_polling')
  continentalPolling('continental_polling'),
  @JsonValue('doors_changed')
  doorsChanged('doors_changed'),
  @JsonValue('central_lock_read_state_changed')
  centralLockReadStateChanged('central_lock_read_state_changed'),
  @JsonValue('bluetooth_authenticated')
  bluetoothAuthenticated('bluetooth_authenticated'),
  @JsonValue('bluetooth_connected')
  bluetoothConnected('bluetooth_connected'),
  @JsonValue('bluetooth_disconnected')
  bluetoothDisconnected('bluetooth_disconnected'),
  @JsonValue('shock_detected')
  shockDetected('shock_detected'),
  @JsonValue('shock_data_ready')
  shockDataReady('shock_data_ready');

  final String? value;

  const TelematicsTrackingEventReason(this.value);
}

enum TelematicsVehicleUsageLockStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LOCKED')
  locked('LOCKED'),
  @JsonValue('BLUETOOTH_INVERS_UNLOCKING')
  bluetoothInversUnlocking('BLUETOOTH_INVERS_UNLOCKING'),
  @JsonValue('BLUETOOTH_INVERS_LOCKING')
  bluetoothInversLocking('BLUETOOTH_INVERS_LOCKING'),
  @JsonValue('UNLOCKED')
  unlocked('UNLOCKED');

  final String? value;

  const TelematicsVehicleUsageLockStatus(this.value);
}

enum TerminateDayOption {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AnyDay')
  anyday('AnyDay'),
  @JsonValue('SameDayOfMonth')
  samedayofmonth('SameDayOfMonth');

  final String? value;

  const TerminateDayOption(this.value);
}

enum UpdateIssueRequestPriority {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('P1_LOW')
  p1Low('P1_LOW'),
  @JsonValue('P2_MEDIUM')
  p2Medium('P2_MEDIUM'),
  @JsonValue('P3_HIGH')
  p3High('P3_HIGH'),
  @JsonValue('P4_CRITICAL')
  p4Critical('P4_CRITICAL'),
  @JsonValue('P5_BLOCKER')
  p5Blocker('P5_BLOCKER');

  final String? value;

  const UpdateIssueRequestPriority(this.value);
}

enum UpdateIssueRequestStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DRAFT')
  draft('DRAFT'),
  @JsonValue('CREATED')
  created('CREATED'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('RESOLVED')
  resolved('RESOLVED'),
  @JsonValue('BLOCKED')
  blocked('BLOCKED'),
  @JsonValue('WILL_NOT_FIX')
  willNotFix('WILL_NOT_FIX');

  final String? value;

  const UpdateIssueRequestStatus(this.value);
}

enum UpdateVehicleRequestApprovalType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AUTOMATIC')
  automatic('AUTOMATIC'),
  @JsonValue('FIRST_TIME_ONLY')
  firstTimeOnly('FIRST_TIME_ONLY'),
  @JsonValue('MANUAL')
  manual('MANUAL');

  final String? value;

  const UpdateVehicleRequestApprovalType(this.value);
}

enum UpdateVehicleRequestOperationalStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ONBOARDING')
  onboarding('ONBOARDING'),
  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('PHASED_OUT')
  phasedOut('PHASED_OUT');

  final String? value;

  const UpdateVehicleRequestOperationalStatus(this.value);
}

enum ValidationErrorCode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NotFound')
  notfound('NotFound'),
  @JsonValue('RequiredField')
  requiredfield('RequiredField'),
  @JsonValue('ValueCannotBeNegative')
  valuecannotbenegative('ValueCannotBeNegative'),
  @JsonValue('DateCannotBeInThePast')
  datecannotbeinthepast('DateCannotBeInThePast'),
  @JsonValue('InvalidDate')
  invaliddate('InvalidDate'),
  @JsonValue('InvalidEnum')
  invalidenum('InvalidEnum'),
  @JsonValue('MalformedRequestBody')
  malformedrequestbody('MalformedRequestBody'),
  @JsonValue('InvalidGuidFormat')
  invalidguidformat('InvalidGuidFormat'),
  @JsonValue('FanCommitmentShouldBeAtLeast75')
  fancommitmentshouldbeatleast75('FanCommitmentShouldBeAtLeast75'),
  @JsonValue('ContractAlreadyHasThisFormula')
  contractalreadyhasthisformula('ContractAlreadyHasThisFormula'),
  @JsonValue('BeforeContractStartDate')
  beforecontractstartdate('BeforeContractStartDate'),
  @JsonValue('AfterContractEndDate')
  aftercontractenddate('AfterContractEndDate'),
  @JsonValue('CannotChangeBattForBusinessFormula')
  cannotchangebattforbusinessformula('CannotChangeBattForBusinessFormula'),
  @JsonValue('BattMaxRequiresNewContract')
  battmaxrequiresnewcontract('BattMaxRequiresNewContract'),
  @JsonValue('BattForBusinessRequiresNewContract')
  battforbusinessrequiresnewcontract('BattForBusinessRequiresNewContract'),
  @JsonValue('CanOnlyChangeFormulaForUsageContract')
  canonlychangeformulaforusagecontract('CanOnlyChangeFormulaForUsageContract'),
  @JsonValue('CanOnlyChangeCommitmentForFanOrBusinessContract')
  canonlychangecommitmentforfanorbusinesscontract(
    'CanOnlyChangeCommitmentForFanOrBusinessContract',
  ),
  @JsonValue('CanOnlyChangeOnInvoiceDay')
  canonlychangeoninvoiceday('CanOnlyChangeOnInvoiceDay'),
  @JsonValue('DelegatedTrustWrongFormula')
  delegatedtrustwrongformula('DelegatedTrustWrongFormula'),
  @JsonValue('InvalidBillingPeriodStatusForInvoicing')
  invalidbillingperiodstatusforinvoicing(
    'InvalidBillingPeriodStatusForInvoicing',
  ),
  @JsonValue('PeriodAlreadyInvoiced')
  periodalreadyinvoiced('PeriodAlreadyInvoiced'),
  @JsonValue('OldInvoicesNotSupported')
  oldinvoicesnotsupported('OldInvoicesNotSupported'),
  @JsonValue('CanOnlyApproveDraftInvoices')
  canonlyapprovedraftinvoices('CanOnlyApproveDraftInvoices'),
  @JsonValue('CanOnlyDeleteDraftInvoices')
  canonlydeletedraftinvoices('CanOnlyDeleteDraftInvoices'),
  @JsonValue('NotYetSwitchedToNewInvoicing')
  notyetswitchedtonewinvoicing('NotYetSwitchedToNewInvoicing'),
  @JsonValue('CanOnlyRegenerateApprovedInvoices')
  canonlyregenerateapprovedinvoices('CanOnlyRegenerateApprovedInvoices'),
  @JsonValue('ClientAlreadyHasUsageContract')
  clientalreadyhasusagecontract('ClientAlreadyHasUsageContract'),
  @JsonValue('InvalidProperty')
  invalidproperty('InvalidProperty'),
  @JsonValue('DuplicateProperties')
  duplicateproperties('DuplicateProperties'),
  @JsonValue('InvalidOrderByDirection')
  invalidorderbydirection('InvalidOrderByDirection'),
  @JsonValue('InvalidOrderByClause')
  invalidorderbyclause('InvalidOrderByClause'),
  @JsonValue('InvalidPageToken')
  invalidpagetoken('InvalidPageToken');

  final String? value;

  const ValidationErrorCode(this.value);
}

enum VehicleOperationalStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ONBOARDING')
  onboarding('ONBOARDING'),
  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('PHASED_OUT')
  phasedOut('PHASED_OUT');

  final String? value;

  const VehicleOperationalStatus(this.value);
}

enum VehicleContractBattMaxType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Bridge')
  bridge('Bridge'),
  @JsonValue('Lease')
  lease('Lease'),
  @JsonValue('Me')
  me('Me'),
  @JsonValue('Rent')
  rent('Rent'),
  @JsonValue('Standard')
  standard('Standard');

  final String? value;

  const VehicleContractBattMaxType(this.value);
}

enum VehicleLockStatusCentralLockStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LOCKED')
  locked('LOCKED'),
  @JsonValue('BLUETOOTH_INVERS_UNLOCKING')
  bluetoothInversUnlocking('BLUETOOTH_INVERS_UNLOCKING'),
  @JsonValue('BLUETOOTH_INVERS_LOCKING')
  bluetoothInversLocking('BLUETOOTH_INVERS_LOCKING'),
  @JsonValue('UNLOCKED')
  unlocked('UNLOCKED');

  final String? value;

  const VehicleLockStatusCentralLockStatus(this.value);
}

enum VehicleLockStatusImmobilizerStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('LOCKED')
  locked('LOCKED'),
  @JsonValue('BLUETOOTH_INVERS_UNLOCKING')
  bluetoothInversUnlocking('BLUETOOTH_INVERS_UNLOCKING'),
  @JsonValue('BLUETOOTH_INVERS_LOCKING')
  bluetoothInversLocking('BLUETOOTH_INVERS_LOCKING'),
  @JsonValue('UNLOCKED')
  unlocked('UNLOCKED');

  final String? value;

  const VehicleLockStatusImmobilizerStatus(this.value);
}

enum VehicleUsageStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('UNLOCKING')
  unlocking('UNLOCKING'),
  @JsonValue('BLUETOOTH_UNLOCKING')
  bluetoothUnlocking('BLUETOOTH_UNLOCKING'),
  @JsonValue('UNLOCK_FAILED')
  unlockFailed('UNLOCK_FAILED'),
  @JsonValue('UNLOCKED')
  unlocked('UNLOCKED'),
  @JsonValue('LOCKING')
  locking('LOCKING'),
  @JsonValue('BLUETOOTH_LOCKING')
  bluetoothLocking('BLUETOOTH_LOCKING'),
  @JsonValue('LOCK_FAILED')
  lockFailed('LOCK_FAILED'),
  @JsonValue('LOCKED')
  locked('LOCKED');

  final String? value;

  const VehicleUsageStatus(this.value);
}

enum VehicleUsageUpdateStatusRequestStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('UNLOCKING')
  unlocking('UNLOCKING'),
  @JsonValue('BLUETOOTH_UNLOCKING')
  bluetoothUnlocking('BLUETOOTH_UNLOCKING'),
  @JsonValue('UNLOCK_FAILED')
  unlockFailed('UNLOCK_FAILED'),
  @JsonValue('UNLOCKED')
  unlocked('UNLOCKED'),
  @JsonValue('LOCKING')
  locking('LOCKING'),
  @JsonValue('BLUETOOTH_LOCKING')
  bluetoothLocking('BLUETOOTH_LOCKING'),
  @JsonValue('LOCK_FAILED')
  lockFailed('LOCK_FAILED'),
  @JsonValue('LOCKED')
  locked('LOCKED');

  final String? value;

  const VehicleUsageUpdateStatusRequestStatus(this.value);
}
