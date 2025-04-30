import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AdjacentNonAvailabilityType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NOT_AVAILABLE')
  notAvailable('NOT_AVAILABLE'),
  @JsonValue('BOOKING')
  booking('BOOKING');

  final String? value;

  const AdjacentNonAvailabilityType(this.value);
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

enum HomeFeedCardType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('OVERDUE_BOOKING')
  overdueBooking('OVERDUE_BOOKING'),
  @JsonValue('ACTIVE_VEHICLE_USAGE')
  activeVehicleUsage('ACTIVE_VEHICLE_USAGE'),
  @JsonValue('CANCELED_REMOTE')
  canceledRemote('CANCELED_REMOTE'),
  @JsonValue('BOOKING_TO_APPROVE')
  bookingToApprove('BOOKING_TO_APPROVE'),
  @JsonValue('UPCOMING_BOOKING')
  upcomingBooking('UPCOMING_BOOKING');

  final String? value;

  const HomeFeedCardType(this.value);
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

enum SearchBookingsRequestInvoiceStatuses {
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

  const SearchBookingsRequestInvoiceStatuses(this.value);
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

enum UpdateUserRequestRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BATTFUN')
  battfun('BATTFUN'),
  @JsonValue('BATTFAN')
  battfan('BATTFAN'),
  @JsonValue('BATTMAX')
  battmax('BATTMAX'),
  @JsonValue('BATTADMIN')
  battadmin('BATTADMIN');

  final String? value;

  const UpdateUserRequestRole(this.value);
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
      'CanOnlyChangeCommitmentForFanOrBusinessContract'),
  @JsonValue('CanOnlyChangeOnInvoiceDay')
  canonlychangeoninvoiceday('CanOnlyChangeOnInvoiceDay'),
  @JsonValue('DelegatedTrustWrongFormula')
  delegatedtrustwrongformula('DelegatedTrustWrongFormula'),
  @JsonValue('InvalidBillingPeriodStatusForInvoicing')
  invalidbillingperiodstatusforinvoicing(
      'InvalidBillingPeriodStatusForInvoicing'),
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
  @JsonValue('Standard')
  standard('Standard');

  final String? value;

  const VehicleContractBattMaxType(this.value);
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

enum VehicleUsageReferenceStatus {
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

  const VehicleUsageReferenceStatus(this.value);
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

enum UserV1UsersRolesRoleGetRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BATTFUN')
  battfun('BATTFUN'),
  @JsonValue('BATTFAN')
  battfan('BATTFAN'),
  @JsonValue('BATTMAX')
  battmax('BATTMAX'),
  @JsonValue('BATTADMIN')
  battadmin('BATTADMIN');

  final String? value;

  const UserV1UsersRolesRoleGetRole(this.value);
}
