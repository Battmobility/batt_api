// dart format width=80
//Generated code

part of 'batt_kit.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$BattKit extends BattKit {
  _$BattKit([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = BattKit;

  @override
  Future<Response<NonAvailabilityResponse>>
      _availabilityV1NonAvailabilitiesPost(
          {required CreateNonAvailabilityRequest? body}) {
    final Uri $url = Uri.parse('/availability/v1/non-availabilities');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<NonAvailabilityResponse, NonAvailabilityResponse>($request);
  }

  @override
  Future<Response<NonAvailabilitiesPerVehiclePage>>
      _availabilityV1NonAvailabilitiesSearchesPost(
          {required SearchNonAvailabilityEventsRequest? body}) {
    final Uri $url = Uri.parse('/availability/v1/non-availabilities/searches');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<NonAvailabilitiesPerVehiclePage,
        NonAvailabilitiesPerVehiclePage>($request);
  }

  @override
  Future<Response<dynamic>>
      _availabilityV1NonAvailabilitiesNonAvailabilityIdDelete(
          {required String? nonAvailabilityId}) {
    final Uri $url =
        Uri.parse('/availability/v1/non-availabilities/${nonAvailabilityId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<NonAvailabilitiesPage>>
      _availabilityV1NonAvailabilitiesVehicleIdGet({
    required String? vehicleId,
    required DateTime? start,
    required DateTime? end,
  }) {
    final Uri $url =
        Uri.parse('/availability/v1/non-availabilities/${vehicleId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'start': start,
      'end': end,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<NonAvailabilitiesPage, NonAvailabilitiesPage>($request);
  }

  @override
  Future<Response<BookingsPage>> _bookingV1BookingsGet() {
    final Uri $url = Uri.parse('/booking/v1/bookings');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BookingsPage, BookingsPage>($request);
  }

  @override
  Future<Response<Booking>> _bookingV1BookingsPost({
    String? xClientId,
    required CreateBooking? body,
  }) {
    final Uri $url = Uri.parse('/booking/v1/bookings');
    final Map<String, String> $headers = {
      if (xClientId != null) 'X-Client-Id': xClientId,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Booking, Booking>($request);
  }

  @override
  Future<Response<Booking>> _bookingV1BookingsActionsCancelPost(
      {required CancelBookingRequest? body}) {
    final Uri $url = Uri.parse('/booking/v1/bookings/actions/cancel');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Booking, Booking>($request);
  }

  @override
  Future<Response<Booking>> _bookingV1BookingsActionsReplacementsPost(
      {required ReplaceBookingRequest? body}) {
    final Uri $url = Uri.parse('/booking/v1/bookings/actions/replacements');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Booking, Booking>($request);
  }

  @override
  Future<Response<BookingsPage>> _bookingV1BookingsOverdueGet() {
    final Uri $url = Uri.parse('/booking/v1/bookings/overdue');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BookingsPage, BookingsPage>($request);
  }

  @override
  Future<Response<BookingsPage>> _bookingV1BookingsSearchesPost(
      {required SearchBookingsRequest? body}) {
    final Uri $url = Uri.parse('/booking/v1/bookings/searches');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BookingsPage, BookingsPage>($request);
  }

  @override
  Future<Response<BookingsPage>> _bookingV1BookingsSummaryGet() {
    final Uri $url = Uri.parse('/booking/v1/bookings/summary');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BookingsPage, BookingsPage>($request);
  }

  @override
  Future<Response<Booking>> _bookingV1BookingsBookingIdGet({
    required String? bookingId,
    bool? includeAdjacent,
  }) {
    final Uri $url = Uri.parse('/booking/v1/bookings/${bookingId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'includeAdjacent': includeAdjacent
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Booking, Booking>($request);
  }

  @override
  Future<Response<Booking>> _bookingV1BookingsBookingIdPut({
    required String? bookingId,
    required UpdateBookingRequest? body,
  }) {
    final Uri $url = Uri.parse('/booking/v1/bookings/${bookingId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Booking, Booking>($request);
  }

  @override
  Future<Response<Vehicle>> _bookingV1VehiclesPost(
      {required CreateVehicleRequest? body}) {
    final Uri $url = Uri.parse('/booking/v1/vehicles');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Vehicle, Vehicle>($request);
  }

  @override
  Future<Response<Vehicle>> _bookingV1VehiclesPut(
      {required UpdateVehicleRequest? body}) {
    final Uri $url = Uri.parse('/booking/v1/vehicles');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Vehicle, Vehicle>($request);
  }

  @override
  Future<Response<ClientContractSummaryDtoApiPagedResponse>>
      _contractV1ContractsGet({String? page}) {
    final Uri $url = Uri.parse('/contract/v1/contracts');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ClientContractSummaryDtoApiPagedResponse,
        ClientContractSummaryDtoApiPagedResponse>($request);
  }

  @override
  Future<Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdGet({
    required int? contractId,
    required String? clientId,
  }) {
    final Uri $url = Uri.parse(
        '/contract/v1/contracts/clients/${clientId}/contracts/${contractId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ClientContractDtoApiDataResponse,
        ClientContractDtoApiDataResponse>($request);
  }

  @override
  Future<Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdCommitmentPost({
    required int? contractId,
    required String? clientId,
    required ChangeContractCommitmentRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/contract/v1/contracts/clients/${clientId}/contracts/${contractId}/commitment');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ClientContractDtoApiDataResponse,
        ClientContractDtoApiDataResponse>($request);
  }

  @override
  Future<Response<ChangeContractCommitmentHintsApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdCommitmentHintsGet({
    required int? contractId,
    required String? clientId,
  }) {
    final Uri $url = Uri.parse(
        '/contract/v1/contracts/clients/${clientId}/contracts/${contractId}/commitment/hints');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ChangeContractCommitmentHintsApiDataResponse,
        ChangeContractCommitmentHintsApiDataResponse>($request);
  }

  @override
  Future<Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdFormulaPost({
    required int? contractId,
    required String? clientId,
    required ChangeContractFormulaRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/contract/v1/contracts/clients/${clientId}/contracts/${contractId}/formula');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ClientContractDtoApiDataResponse,
        ClientContractDtoApiDataResponse>($request);
  }

  @override
  Future<Response<ChangeContractFormulaHintsApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdFormulaHintsGet({
    required int? contractId,
    required String? clientId,
  }) {
    final Uri $url = Uri.parse(
        '/contract/v1/contracts/clients/${clientId}/contracts/${contractId}/formula/hints');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ChangeContractFormulaHintsApiDataResponse,
        ChangeContractFormulaHintsApiDataResponse>($request);
  }

  @override
  Future<Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdTerminatePost({
    required int? contractId,
    required String? clientId,
    required TerminateContractRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/contract/v1/contracts/clients/${clientId}/contracts/${contractId}/terminate');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ClientContractDtoApiDataResponse,
        ClientContractDtoApiDataResponse>($request);
  }

  @override
  Future<Response<TerminateContractHintsApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdTerminateHintsGet({
    required int? contractId,
    required String? clientId,
  }) {
    final Uri $url = Uri.parse(
        '/contract/v1/contracts/clients/${clientId}/contracts/${contractId}/terminate/hints');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TerminateContractHintsApiDataResponse,
        TerminateContractHintsApiDataResponse>($request);
  }

  @override
  Future<Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdDelegatedTrustDelegatedTrustClientIdPost({
    required int? clientId,
    required int? delegatedTrustClientId,
    required CreateNewUsageContractRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/contract/v1/contracts/clients/${clientId}/delegatedTrust/${delegatedTrustClientId}');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ClientContractDtoApiDataResponse,
        ClientContractDtoApiDataResponse>($request);
  }

  @override
  Future<Response<ClientContractSummaryDtoApiPagedResponse>>
      _contractV1ContractsSearchPost({
    String? page,
    required SearchClientContractsRequest? body,
  }) {
    final Uri $url = Uri.parse('/contract/v1/contracts/search');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<ClientContractSummaryDtoApiPagedResponse,
        ClientContractSummaryDtoApiPagedResponse>($request);
  }

  @override
  Future<Response<HomeFeedPage>> _homefeedV1BookingsHomefeedGet() {
    final Uri $url = Uri.parse('/homefeed/v1/bookings/homefeed');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<HomeFeedPage, HomeFeedPage>($request);
  }

  @override
  Future<Response<InvoiceResponse>> _invoiceV1ClientsClientIdInvoicesGet(
      {required int? clientId}) {
    final Uri $url = Uri.parse('/invoice/v1/clients/${clientId}/invoices');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<InvoiceResponse, InvoiceResponse>($request);
  }

  @override
  Future<Response<String>>
      _invoiceV1ClientsClientIdInvoicesInvoiceIdInvoicePdfGet({
    required int? clientId,
    required int? invoiceId,
  }) {
    final Uri $url = Uri.parse(
        '/invoice/v1/clients/${clientId}/invoices/${invoiceId}/invoice.pdf');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<BookingBillingPriceResponse>>
      _pricingV1PricesBookingPriceGet({
    String? xClientId,
    required String? vehicleId,
    required DateTime? start,
    required DateTime? end,
  }) {
    final Uri $url = Uri.parse('/pricing/v1/prices/booking-price');
    final Map<String, dynamic> $params = <String, dynamic>{
      'vehicleId': vehicleId,
      'start': start,
      'end': end,
    };
    final Map<String, String> $headers = {
      if (xClientId != null) 'X-Client-Id': xClientId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<BookingBillingPriceResponse,
        BookingBillingPriceResponse>($request);
  }

  @override
  Future<Response<GetVehicleModelsRatesResponse>>
      _pricingV1RatesVehicleModelsGet({String? models}) {
    final Uri $url = Uri.parse('/pricing/v1/rates/vehicle-models');
    final Map<String, dynamic> $params = <String, dynamic>{'models': models};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GetVehicleModelsRatesResponse,
        GetVehicleModelsRatesResponse>($request);
  }

  @override
  Future<Response<CreateVehicleModelsRatesResponse>>
      _pricingV1RatesVehicleModelsPost(
          {required CreateVehicleModelsRatesRequest? body}) {
    final Uri $url = Uri.parse('/pricing/v1/rates/vehicle-models');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CreateVehicleModelsRatesResponse,
        CreateVehicleModelsRatesResponse>($request);
  }

  @override
  Future<Response<dynamic>> _pricingV1RatesVehicleModelsRateIdDelete(
      {required String? rateId}) {
    final Uri $url = Uri.parse('/pricing/v1/rates/vehicle-models/${rateId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<GetVehiclesRatesResponse>> _pricingV1RatesVehiclesGet(
      {String? vehicles}) {
    final Uri $url = Uri.parse('/pricing/v1/rates/vehicles');
    final Map<String, dynamic> $params = <String, dynamic>{
      'vehicles': vehicles
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<GetVehiclesRatesResponse, GetVehiclesRatesResponse>($request);
  }

  @override
  Future<Response<CreateVehiclesRatesResponse>> _pricingV1RatesVehiclesPost(
      {required CreateVehiclesRatesRequest? body}) {
    final Uri $url = Uri.parse('/pricing/v1/rates/vehicles');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CreateVehiclesRatesResponse,
        CreateVehiclesRatesResponse>($request);
  }

  @override
  Future<Response<dynamic>> _pricingV1RatesVehiclesRateIdDelete(
      {required String? rateId}) {
    final Uri $url = Uri.parse('/pricing/v1/rates/vehicles/${rateId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Client>> _userV1ClientsPost(
      {required ContractsCreateClient? body}) {
    final Uri $url = Uri.parse('/user/v1/clients');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Client, Client>($request);
  }

  @override
  Future<Response<Client>> _userV1ClientsClientIdGet({required int? clientId}) {
    final Uri $url = Uri.parse('/user/v1/clients/${clientId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Client, Client>($request);
  }

  @override
  Future<Response<Client>> _userV1ClientsClientIdUsersUserEmailDelete({
    required int? clientId,
    required String? userEmail,
  }) {
    final Uri $url =
        Uri.parse('/user/v1/clients/${clientId}/users/${userEmail}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<Client, Client>($request);
  }

  @override
  Future<Response<Client>> _userV1ClientsClientIdUsersUserEmailPut({
    required int? clientId,
    required String? userEmail,
  }) {
    final Uri $url =
        Uri.parse('/user/v1/clients/${clientId}/users/${userEmail}');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client.send<Client, Client>($request);
  }

  @override
  Future<Response<GpsLocation>> _userV1HomeLocationGet() {
    final Uri $url = Uri.parse('/user/v1/home-location');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<GpsLocation, GpsLocation>($request);
  }

  @override
  Future<Response<dynamic>> _userV1HomeLocationPut(
      {required GpsLocation? body}) {
    final Uri $url = Uri.parse('/user/v1/home-location');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<User>> _userV1ImageUserIdPost({
    required String? userId,
    required List<int> file,
  }) {
    final Uri $url = Uri.parse('/user/v1/image/${userId}');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>>(
        'file',
        file,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<User, User>($request);
  }

  @override
  Future<Response<dynamic>> _userV1PasswordResetsPost(
      {required ContractsPasswordReset? body}) {
    final Uri $url = Uri.parse('/user/v1/password-resets');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _userV1UsersPost(
      {required ContractsSignupUser? body}) {
    final Uri $url = Uri.parse('/user/v1/users');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _userV1UsersDevicesPut(
      {required RegisterDeviceRequest? body}) {
    final Uri $url = Uri.parse('/user/v1/users/devices');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<String>> _userV1UsersDocumentsFilenameGet(
      {required String? filename}) {
    final Uri $url = Uri.parse('/user/v1/users/documents/${filename}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<List<String>>> _userV1UsersImagesUserImageIdGet(
      {required String? userImageId}) {
    final Uri $url = Uri.parse('/user/v1/users/images/${userImageId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<ContractUser>> _userV1UsersMeGet() {
    final Uri $url = Uri.parse('/user/v1/users/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ContractUser, ContractUser>($request);
  }

  @override
  Future<Response<ContractsOnboarding>> _userV1UsersOnboardingGet() {
    final Uri $url = Uri.parse('/user/v1/users/onboarding');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ContractsOnboarding, ContractsOnboarding>($request);
  }

  @override
  Future<Response<ContractsOnboarding>> _userV1UsersOnboardingDocumentsPut({
    List<int>? backDriverLicense,
    List<int>? backId,
    List<int>? damageStatistic,
    List<int>? frontDriverLicense,
    List<int>? frontId,
    List<int>? selfie,
  }) {
    final Uri $url = Uri.parse('/user/v1/users/onboarding/documents');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>?>(
        'backDriverLicense',
        backDriverLicense,
      ),
      PartValueFile<List<int>?>(
        'backId',
        backId,
      ),
      PartValueFile<List<int>?>(
        'damageStatistic',
        damageStatistic,
      ),
      PartValueFile<List<int>?>(
        'frontDriverLicense',
        frontDriverLicense,
      ),
      PartValueFile<List<int>?>(
        'frontId',
        frontId,
      ),
      PartValueFile<List<int>?>(
        'selfie',
        selfie,
      ),
    ];
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<ContractsOnboarding, ContractsOnboarding>($request);
  }

  @override
  Future<Response<ContractsOnboarding>> _userV1UsersOnboardingLegalPut(
      {required ContractsOnboardingLegal? body}) {
    final Uri $url = Uri.parse('/user/v1/users/onboarding/legal');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ContractsOnboarding, ContractsOnboarding>($request);
  }

  @override
  Future<Response<ContractsOnboarding>> _userV1UsersOnboardingPersonalPut(
      {required ContractsOnboardingPersonal? body}) {
    final Uri $url = Uri.parse('/user/v1/users/onboarding/personal');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ContractsOnboarding, ContractsOnboarding>($request);
  }

  @override
  Future<Response<ContractsOnboarding>> _userV1UsersOnboardingPhonePut(
      {required ContractsOnboardingPhone? body}) {
    final Uri $url = Uri.parse('/user/v1/users/onboarding/phone');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ContractsOnboarding, ContractsOnboarding>($request);
  }

  @override
  Future<Response<UserPage>> _userV1UsersRolesRoleGet({required String? role}) {
    final Uri $url = Uri.parse('/user/v1/users/roles/${role}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserPage, UserPage>($request);
  }

  @override
  Future<Response<List<ContractUser>>> _userV1UsersSearchesGet({
    required String? firstNameHint,
    required String? lastNameHint,
  }) {
    final Uri $url = Uri.parse('/user/v1/users/searches');
    final Map<String, dynamic> $params = <String, dynamic>{
      'firstNameHint': firstNameHint,
      'lastNameHint': lastNameHint,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ContractUser>, ContractUser>($request);
  }

  @override
  Future<Response<UserPage>> _userV1UsersSearchesPut(
      {required SearchUsersRequest? body}) {
    final Uri $url = Uri.parse('/user/v1/users/searches');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserPage, UserPage>($request);
  }

  @override
  Future<Response<User>> _userV1UsersIdPut({
    required String? id,
    required UpdateUserRequest? body,
  }) {
    final Uri $url = Uri.parse('/user/v1/users/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<User, User>($request);
  }

  @override
  Future<Response<dynamic>> _userV1UsersUserIdDelete(
      {required String? userId}) {
    final Uri $url = Uri.parse('/user/v1/users/${userId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<User>> _userV1UsersUserIdGet({required String? userId}) {
    final Uri $url = Uri.parse('/user/v1/users/${userId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<User, User>($request);
  }

  @override
  Future<Response<dynamic>> _userV1VerificationEmailResendsPost(
      {required ContractsResendVerificationEmail? body}) {
    final Uri $url = Uri.parse('/user/v1/verification-email-resends');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<VehicleGroupPage>> _vehicleGroupV1VehicleGroupsGet() {
    final Uri $url = Uri.parse('/vehicle-group/v1/vehicle-groups');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<VehicleGroupPage, VehicleGroupPage>($request);
  }

  @override
  Future<Response<VehicleGroup>> _vehicleGroupV1VehicleGroupsPost(
      {required CreateVehicleGroupRequest? body}) {
    final Uri $url = Uri.parse('/vehicle-group/v1/vehicle-groups');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleGroup, VehicleGroup>($request);
  }

  @override
  Future<Response<dynamic>> _vehicleGroupV1VehicleGroupsVehicleGroupIdDelete(
      {required String? vehicleGroupId}) {
    final Uri $url =
        Uri.parse('/vehicle-group/v1/vehicle-groups/${vehicleGroupId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<VehicleGroup>> _vehicleGroupV1VehicleGroupsVehicleGroupIdGet(
      {required String? vehicleGroupId}) {
    final Uri $url =
        Uri.parse('/vehicle-group/v1/vehicle-groups/${vehicleGroupId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<VehicleGroup, VehicleGroup>($request);
  }

  @override
  Future<Response<dynamic>>
      _vehicleGroupV1VehicleGroupsVehicleGroupIdActionsAddVehiclesPut({
    required String? vehicleGroupId,
    required AddVehiclesToGroupRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/vehicle-group/v1/vehicle-groups/${vehicleGroupId}/actions/add-vehicles');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _vehicleGroupV1VehicleGroupsVehicleGroupIdActionsDeleteVehiclesPost({
    required String? vehicleGroupId,
    required DeleteVehiclesFromGroupRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/vehicle-group/v1/vehicle-groups/${vehicleGroupId}/actions/delete-vehicles');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _vehicleGroupV1VehicleGroupsVehicleGroupIdVehiclesVehicleIdDelete({
    required String? vehicleGroupId,
    required String? vehicleId,
  }) {
    final Uri $url = Uri.parse(
        '/vehicle-group/v1/vehicle-groups/${vehicleGroupId}/vehicles/${vehicleId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>>
      _vehicleGroupV1VehicleGroupsVehicleGroupIdVehiclesVehicleIdPut({
    required String? vehicleGroupId,
    required String? vehicleId,
  }) {
    final Uri $url = Uri.parse(
        '/vehicle-group/v1/vehicle-groups/${vehicleGroupId}/vehicles/${vehicleId}');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<VehicleUsage>> _vehicleUsageV1ActiveUsageVehicleVehicleIdGet(
      {required String? vehicleId}) {
    final Uri $url =
        Uri.parse('/vehicle-usage/v1/active-usage/vehicle/${vehicleId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<VehicleUsage, VehicleUsage>($request);
  }

  @override
  Future<Response<VehicleUsage>> _vehicleUsageV1EndPut(
      {required EndVehicleUsageRequest? body}) {
    final Uri $url = Uri.parse('/vehicle-usage/v1/end');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleUsage, VehicleUsage>($request);
  }

  @override
  Future<Response<VehicleUsage>> _vehicleUsageV1StartPut(
      {required StartVehicleUsageRequest? body}) {
    final Uri $url = Uri.parse('/vehicle-usage/v1/start');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleUsage, VehicleUsage>($request);
  }

  @override
  Future<Response<VehicleUsagePage>> _vehicleUsageV1VehicleUsagesGet() {
    final Uri $url = Uri.parse('/vehicle-usage/v1/vehicle-usages');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<VehicleUsagePage, VehicleUsagePage>($request);
  }

  @override
  Future<Response<VehicleUsage>> _vehicleUsageV1VehicleUsageIdStatusPut({
    required String? vehicleUsageId,
    required VehicleUsageUpdateStatusRequest? body,
  }) {
    final Uri $url = Uri.parse('/vehicle-usage/v1/${vehicleUsageId}/status');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleUsage, VehicleUsage>($request);
  }

  @override
  Future<Response<BodyStylePage>> _vehicleV1BodyStylesGet() {
    final Uri $url = Uri.parse('/vehicle/v1/body-styles');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BodyStylePage, BodyStylePage>($request);
  }

  @override
  Future<Response<BodyStyle>> _vehicleV1BodyStylesPost(
      {required CreateBodyStyleRequest? body}) {
    final Uri $url = Uri.parse('/vehicle/v1/body-styles');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BodyStyle, BodyStyle>($request);
  }

  @override
  Future<Response<VehicleBrandPage>> _vehicleV1BrandsGet() {
    final Uri $url = Uri.parse('/vehicle/v1/brands');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<VehicleBrandPage, VehicleBrandPage>($request);
  }

  @override
  Future<Response<VehicleBrand>> _vehicleV1BrandsPost(
      {required VehicleBrand? body}) {
    final Uri $url = Uri.parse('/vehicle/v1/brands');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleBrand, VehicleBrand>($request);
  }

  @override
  Future<Response<VehicleFilterEnums>> _vehicleV1FiltersGet() {
    final Uri $url = Uri.parse('/vehicle/v1/filters');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<VehicleFilterEnums, VehicleFilterEnums>($request);
  }

  @override
  Future<Response<VehicleModelPage>> _vehicleV1ModelsGet() {
    final Uri $url = Uri.parse('/vehicle/v1/models');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<VehicleModelPage, VehicleModelPage>($request);
  }

  @override
  Future<Response<VehicleModel>> _vehicleV1ModelsPost(
      {required CreateVehicleModelRequest? body}) {
    final Uri $url = Uri.parse('/vehicle/v1/models');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleModel, VehicleModel>($request);
  }

  @override
  Future<Response<VehiclesPage>> _vehicleV1MyVehiclesGet() {
    final Uri $url = Uri.parse('/vehicle/v1/my-vehicles');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<VehiclesPage, VehiclesPage>($request);
  }

  @override
  Future<Response<MyAvailableVehiclesPage>> _vehicleV1MyVehiclesAvailableGet() {
    final Uri $url = Uri.parse('/vehicle/v1/my-vehicles/available');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<MyAvailableVehiclesPage, MyAvailableVehiclesPage>($request);
  }

  @override
  Future<Response<VehiclesPage>> _vehicleV1SearchPost(
      {required SearchVehiclesRequest? body}) {
    final Uri $url = Uri.parse('/vehicle/v1/search');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehiclesPage, VehiclesPage>($request);
  }

  @override
  Future<Response<Vehicle>> _vehicleV1VehicleImageVehicleIdPost({
    required String? vehicleId,
    required List<int> file,
  }) {
    final Uri $url = Uri.parse('/vehicle/v1/vehicle/image/${vehicleId}');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<List<int>>(
        'file',
        file,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<Vehicle, Vehicle>($request);
  }

  @override
  Future<Response<List<String>>> _vehicleV1VehicleImageVehicleImageIdGet(
      {required String? vehicleImageId}) {
    final Uri $url = Uri.parse('/vehicle/v1/vehicle/image/${vehicleImageId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<VehiclesPage>> _vehicleV1VehiclesGet({bool? activeOnly}) {
    final Uri $url = Uri.parse('/vehicle/v1/vehicles');
    final Map<String, dynamic> $params = <String, dynamic>{
      'activeOnly': activeOnly
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<VehiclesPage, VehiclesPage>($request);
  }

  @override
  Future<Response<Vehicle>> _vehicleV1VehiclesPost(
      {required CreateVehicleRequest? body}) {
    final Uri $url = Uri.parse('/vehicle/v1/vehicles');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Vehicle, Vehicle>($request);
  }

  @override
  Future<Response<Vehicle>> _vehicleV1VehiclesPut(
      {required UpdateVehicleRequest? body}) {
    final Uri $url = Uri.parse('/vehicle/v1/vehicles');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Vehicle, Vehicle>($request);
  }

  @override
  Future<Response<Vehicle>> _vehicleV1VehiclesVehicleIdGet(
      {required String? vehicleId}) {
    final Uri $url = Uri.parse('/vehicle/v1/vehicles/${vehicleId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Vehicle, Vehicle>($request);
  }

  @override
  Future<Response<dynamic>> _vehicleV1VehiclesVehicleIdFavoriteIsFavoritePut({
    required String? vehicleId,
    required bool? isFavorite,
  }) {
    final Uri $url =
        Uri.parse('/vehicle/v1/vehicles/${vehicleId}/favorite/${isFavorite}');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<VehicleBaseLocationPage>>
      _vehiclebaselocationV1VehiclebaselocationsGet() {
    final Uri $url = Uri.parse('/vehiclebaselocation/v1/vehiclebaselocations');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<VehicleBaseLocationPage, VehicleBaseLocationPage>($request);
  }

  @override
  Future<Response<VehicleBaseLocation>>
      _vehiclebaselocationV1VehiclebaselocationsPost(
          {required VehicleBaseLocation? body}) {
    final Uri $url = Uri.parse('/vehiclebaselocation/v1/vehiclebaselocations');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleBaseLocation, VehicleBaseLocation>($request);
  }

  @override
  Future<Response<dynamic>> _vehiclebaselocationV1VehiclebaselocationsIdDelete(
      {required String? id}) {
    final Uri $url =
        Uri.parse('/vehiclebaselocation/v1/vehiclebaselocations/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<VehicleBaseLocation>>
      _vehiclebaselocationV1VehiclebaselocationsIdPut({
    required String? id,
    required VehicleBaseLocation? body,
  }) {
    final Uri $url =
        Uri.parse('/vehiclebaselocation/v1/vehiclebaselocations/${id}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleBaseLocation, VehicleBaseLocation>($request);
  }
}
