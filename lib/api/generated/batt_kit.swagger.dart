// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'batt_kit.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'batt_kit.enums.swagger.dart' as enums;
export 'batt_kit.enums.swagger.dart';
export 'batt_kit.models.swagger.dart';

part 'batt_kit.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class BattKit extends ChopperService {
  static BattKit create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$BattKit(client);
    }

    final newClient = ChopperClient(
        services: [_$BattKit()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$BattKit(newClient);
  }

  ///
  Future<chopper.Response<NonAvailabilityResponse>>
      availabilityV1NonAvailabilitiesPost(
          {required CreateNonAvailabilityRequest? body}) {
    generatedMapping.putIfAbsent(
        NonAvailabilityResponse, () => NonAvailabilityResponse.fromJsonFactory);

    return _availabilityV1NonAvailabilitiesPost(body: body);
  }

  ///
  @Post(
    path: '/availability/v1/non-availabilities',
    optionalBody: true,
  )
  Future<chopper.Response<NonAvailabilityResponse>>
      _availabilityV1NonAvailabilitiesPost(
          {@Body() required CreateNonAvailabilityRequest? body});

  ///
  Future<chopper.Response<NonAvailabilitiesPerVehiclePage>>
      availabilityV1NonAvailabilitiesSearchesPost(
          {required SearchNonAvailabilityEventsRequest? body}) {
    generatedMapping.putIfAbsent(NonAvailabilitiesPerVehiclePage,
        () => NonAvailabilitiesPerVehiclePage.fromJsonFactory);

    return _availabilityV1NonAvailabilitiesSearchesPost(body: body);
  }

  ///
  @Post(
    path: '/availability/v1/non-availabilities/searches',
    optionalBody: true,
  )
  Future<chopper.Response<NonAvailabilitiesPerVehiclePage>>
      _availabilityV1NonAvailabilitiesSearchesPost(
          {@Body() required SearchNonAvailabilityEventsRequest? body});

  ///
  ///@param nonAvailabilityId
  Future<chopper.Response>
      availabilityV1NonAvailabilitiesNonAvailabilityIdDelete(
          {required String? nonAvailabilityId}) {
    return _availabilityV1NonAvailabilitiesNonAvailabilityIdDelete(
        nonAvailabilityId: nonAvailabilityId);
  }

  ///
  ///@param nonAvailabilityId
  @Delete(path: '/availability/v1/non-availabilities/{nonAvailabilityId}')
  Future<chopper.Response>
      _availabilityV1NonAvailabilitiesNonAvailabilityIdDelete(
          {@Path('nonAvailabilityId') required String? nonAvailabilityId});

  ///
  ///@param vehicleId
  ///@param start
  ///@param end
  Future<chopper.Response<NonAvailabilitiesPage>>
      availabilityV1NonAvailabilitiesVehicleIdGet({
    required String? vehicleId,
    required DateTime? start,
    required DateTime? end,
  }) {
    generatedMapping.putIfAbsent(
        NonAvailabilitiesPage, () => NonAvailabilitiesPage.fromJsonFactory);

    return _availabilityV1NonAvailabilitiesVehicleIdGet(
        vehicleId: vehicleId, start: start, end: end);
  }

  ///
  ///@param vehicleId
  ///@param start
  ///@param end
  @Get(path: '/availability/v1/non-availabilities/{vehicleId}')
  Future<chopper.Response<NonAvailabilitiesPage>>
      _availabilityV1NonAvailabilitiesVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
    @Query('start') required DateTime? start,
    @Query('end') required DateTime? end,
  });

  ///
  Future<chopper.Response<BookingsPage>> bookingV1BookingsGet() {
    generatedMapping.putIfAbsent(
        BookingsPage, () => BookingsPage.fromJsonFactory);

    return _bookingV1BookingsGet();
  }

  ///
  @Get(path: '/booking/v1/bookings')
  Future<chopper.Response<BookingsPage>> _bookingV1BookingsGet();

  ///Create a new booking
  ///@param X-Client-Id Client ID
  Future<chopper.Response<Booking>> bookingV1BookingsPost({
    String? xClientId,
    required CreateBooking? body,
  }) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _bookingV1BookingsPost(xClientId: xClientId?.toString(), body: body);
  }

  ///Create a new booking
  ///@param X-Client-Id Client ID
  @Post(
    path: '/booking/v1/bookings',
    optionalBody: true,
  )
  Future<chopper.Response<Booking>> _bookingV1BookingsPost({
    @Header('X-Client-Id') String? xClientId,
    @Body() required CreateBooking? body,
  });

  ///
  Future<chopper.Response<Booking>> bookingV1BookingsActionsCancelPost(
      {required CancelBookingRequest? body}) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _bookingV1BookingsActionsCancelPost(body: body);
  }

  ///
  @Post(
    path: '/booking/v1/bookings/actions/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<Booking>> _bookingV1BookingsActionsCancelPost(
      {@Body() required CancelBookingRequest? body});

  ///
  Future<chopper.Response<Booking>> bookingV1BookingsActionsReplacementsPost(
      {required ReplaceBookingRequest? body}) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _bookingV1BookingsActionsReplacementsPost(body: body);
  }

  ///
  @Post(
    path: '/booking/v1/bookings/actions/replacements',
    optionalBody: true,
  )
  Future<chopper.Response<Booking>> _bookingV1BookingsActionsReplacementsPost(
      {@Body() required ReplaceBookingRequest? body});

  ///
  Future<chopper.Response<BookingsPage>> bookingV1BookingsOverdueGet() {
    generatedMapping.putIfAbsent(
        BookingsPage, () => BookingsPage.fromJsonFactory);

    return _bookingV1BookingsOverdueGet();
  }

  ///
  @Get(path: '/booking/v1/bookings/overdue')
  Future<chopper.Response<BookingsPage>> _bookingV1BookingsOverdueGet();

  ///
  Future<chopper.Response<BookingsPage>> bookingV1BookingsSearchesPost(
      {required SearchBookingsRequest? body}) {
    generatedMapping.putIfAbsent(
        BookingsPage, () => BookingsPage.fromJsonFactory);

    return _bookingV1BookingsSearchesPost(body: body);
  }

  ///
  @Post(
    path: '/booking/v1/bookings/searches',
    optionalBody: true,
  )
  Future<chopper.Response<BookingsPage>> _bookingV1BookingsSearchesPost(
      {@Body() required SearchBookingsRequest? body});

  ///
  Future<chopper.Response<BookingsPage>> bookingV1BookingsSummaryGet() {
    generatedMapping.putIfAbsent(
        BookingsPage, () => BookingsPage.fromJsonFactory);

    return _bookingV1BookingsSummaryGet();
  }

  ///
  @Get(path: '/booking/v1/bookings/summary')
  Future<chopper.Response<BookingsPage>> _bookingV1BookingsSummaryGet();

  ///
  ///@param bookingId
  ///@param includeAdjacent
  Future<chopper.Response<Booking>> bookingV1BookingsBookingIdGet({
    required String? bookingId,
    bool? includeAdjacent,
  }) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _bookingV1BookingsBookingIdGet(
        bookingId: bookingId, includeAdjacent: includeAdjacent);
  }

  ///
  ///@param bookingId
  ///@param includeAdjacent
  @Get(path: '/booking/v1/bookings/{bookingId}')
  Future<chopper.Response<Booking>> _bookingV1BookingsBookingIdGet({
    @Path('bookingId') required String? bookingId,
    @Query('includeAdjacent') bool? includeAdjacent,
  });

  ///
  ///@param bookingId
  Future<chopper.Response<Booking>> bookingV1BookingsBookingIdPut({
    required String? bookingId,
    required UpdateBookingRequest? body,
  }) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _bookingV1BookingsBookingIdPut(bookingId: bookingId, body: body);
  }

  ///
  ///@param bookingId
  @Put(
    path: '/booking/v1/bookings/{bookingId}',
    optionalBody: true,
  )
  Future<chopper.Response<Booking>> _bookingV1BookingsBookingIdPut({
    @Path('bookingId') required String? bookingId,
    @Body() required UpdateBookingRequest? body,
  });

  ///Create a new vehicle
  Future<chopper.Response<Vehicle>> bookingV1VehiclesPost(
      {required CreateVehicleRequest? body}) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _bookingV1VehiclesPost(body: body);
  }

  ///Create a new vehicle
  @Post(
    path: '/booking/v1/vehicles',
    optionalBody: true,
  )
  Future<chopper.Response<Vehicle>> _bookingV1VehiclesPost(
      {@Body() required CreateVehicleRequest? body});

  ///Update vehicle details
  Future<chopper.Response<Vehicle>> bookingV1VehiclesPut(
      {required UpdateVehicleRequest? body}) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _bookingV1VehiclesPut(body: body);
  }

  ///Update vehicle details
  @Put(
    path: '/booking/v1/vehicles',
    optionalBody: true,
  )
  Future<chopper.Response<Vehicle>> _bookingV1VehiclesPut(
      {@Body() required UpdateVehicleRequest? body});

  ///
  ///@param page
  Future<chopper.Response<ClientContractSummaryDtoApiPagedResponse>>
      contractV1ContractsGet({String? page}) {
    generatedMapping.putIfAbsent(ClientContractSummaryDtoApiPagedResponse,
        () => ClientContractSummaryDtoApiPagedResponse.fromJsonFactory);

    return _contractV1ContractsGet(page: page);
  }

  ///
  ///@param page
  @Get(path: '/contract/v1/contracts')
  Future<chopper.Response<ClientContractSummaryDtoApiPagedResponse>>
      _contractV1ContractsGet({@Query('page') String? page});

  ///
  ///@param contractId
  ///@param clientId
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      contractV1ContractsClientsClientIdContractsContractIdGet({
    required int? contractId,
    required String? clientId,
  }) {
    generatedMapping.putIfAbsent(ClientContractDtoApiDataResponse,
        () => ClientContractDtoApiDataResponse.fromJsonFactory);

    return _contractV1ContractsClientsClientIdContractsContractIdGet(
        contractId: contractId, clientId: clientId);
  }

  ///
  ///@param contractId
  ///@param clientId
  @Get(path: '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}')
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdGet({
    @Path('contractId') required int? contractId,
    @Path('clientId') required String? clientId,
  });

  ///
  ///@param contractId
  ///@param clientId
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      contractV1ContractsClientsClientIdContractsContractIdCommitmentPost({
    required int? contractId,
    required String? clientId,
    required ChangeContractCommitmentRequest? body,
  }) {
    generatedMapping.putIfAbsent(ClientContractDtoApiDataResponse,
        () => ClientContractDtoApiDataResponse.fromJsonFactory);

    return _contractV1ContractsClientsClientIdContractsContractIdCommitmentPost(
        contractId: contractId, clientId: clientId, body: body);
  }

  ///
  ///@param contractId
  ///@param clientId
  @Post(
    path:
        '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}/commitment',
    optionalBody: true,
  )
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdCommitmentPost({
    @Path('contractId') required int? contractId,
    @Path('clientId') required String? clientId,
    @Body() required ChangeContractCommitmentRequest? body,
  });

  ///
  ///@param contractId
  ///@param clientId
  Future<chopper.Response<ChangeContractCommitmentHintsApiDataResponse>>
      contractV1ContractsClientsClientIdContractsContractIdCommitmentHintsGet({
    required int? contractId,
    required String? clientId,
  }) {
    generatedMapping.putIfAbsent(ChangeContractCommitmentHintsApiDataResponse,
        () => ChangeContractCommitmentHintsApiDataResponse.fromJsonFactory);

    return _contractV1ContractsClientsClientIdContractsContractIdCommitmentHintsGet(
        contractId: contractId, clientId: clientId);
  }

  ///
  ///@param contractId
  ///@param clientId
  @Get(
      path:
          '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}/commitment/hints')
  Future<chopper.Response<ChangeContractCommitmentHintsApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdCommitmentHintsGet({
    @Path('contractId') required int? contractId,
    @Path('clientId') required String? clientId,
  });

  ///
  ///@param contractId
  ///@param clientId
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      contractV1ContractsClientsClientIdContractsContractIdFormulaPost({
    required int? contractId,
    required String? clientId,
    required ChangeContractFormulaRequest? body,
  }) {
    generatedMapping.putIfAbsent(ClientContractDtoApiDataResponse,
        () => ClientContractDtoApiDataResponse.fromJsonFactory);

    return _contractV1ContractsClientsClientIdContractsContractIdFormulaPost(
        contractId: contractId, clientId: clientId, body: body);
  }

  ///
  ///@param contractId
  ///@param clientId
  @Post(
    path:
        '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}/formula',
    optionalBody: true,
  )
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdFormulaPost({
    @Path('contractId') required int? contractId,
    @Path('clientId') required String? clientId,
    @Body() required ChangeContractFormulaRequest? body,
  });

  ///
  ///@param contractId
  ///@param clientId
  Future<chopper.Response<ChangeContractFormulaHintsApiDataResponse>>
      contractV1ContractsClientsClientIdContractsContractIdFormulaHintsGet({
    required int? contractId,
    required String? clientId,
  }) {
    generatedMapping.putIfAbsent(ChangeContractFormulaHintsApiDataResponse,
        () => ChangeContractFormulaHintsApiDataResponse.fromJsonFactory);

    return _contractV1ContractsClientsClientIdContractsContractIdFormulaHintsGet(
        contractId: contractId, clientId: clientId);
  }

  ///
  ///@param contractId
  ///@param clientId
  @Get(
      path:
          '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}/formula/hints')
  Future<chopper.Response<ChangeContractFormulaHintsApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdFormulaHintsGet({
    @Path('contractId') required int? contractId,
    @Path('clientId') required String? clientId,
  });

  ///
  ///@param contractId
  ///@param clientId
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      contractV1ContractsClientsClientIdContractsContractIdTerminatePost({
    required int? contractId,
    required String? clientId,
    required TerminateContractRequest? body,
  }) {
    generatedMapping.putIfAbsent(ClientContractDtoApiDataResponse,
        () => ClientContractDtoApiDataResponse.fromJsonFactory);

    return _contractV1ContractsClientsClientIdContractsContractIdTerminatePost(
        contractId: contractId, clientId: clientId, body: body);
  }

  ///
  ///@param contractId
  ///@param clientId
  @Post(
    path:
        '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}/terminate',
    optionalBody: true,
  )
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdTerminatePost({
    @Path('contractId') required int? contractId,
    @Path('clientId') required String? clientId,
    @Body() required TerminateContractRequest? body,
  });

  ///
  ///@param contractId
  ///@param clientId
  Future<chopper.Response<TerminateContractHintsApiDataResponse>>
      contractV1ContractsClientsClientIdContractsContractIdTerminateHintsGet({
    required int? contractId,
    required String? clientId,
  }) {
    generatedMapping.putIfAbsent(TerminateContractHintsApiDataResponse,
        () => TerminateContractHintsApiDataResponse.fromJsonFactory);

    return _contractV1ContractsClientsClientIdContractsContractIdTerminateHintsGet(
        contractId: contractId, clientId: clientId);
  }

  ///
  ///@param contractId
  ///@param clientId
  @Get(
      path:
          '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}/terminate/hints')
  Future<chopper.Response<TerminateContractHintsApiDataResponse>>
      _contractV1ContractsClientsClientIdContractsContractIdTerminateHintsGet({
    @Path('contractId') required int? contractId,
    @Path('clientId') required String? clientId,
  });

  ///
  ///@param clientId
  ///@param delegatedTrustClientId
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      contractV1ContractsClientsClientIdDelegatedTrustDelegatedTrustClientIdPost({
    required int? clientId,
    required int? delegatedTrustClientId,
    required CreateNewUsageContractRequest? body,
  }) {
    generatedMapping.putIfAbsent(ClientContractDtoApiDataResponse,
        () => ClientContractDtoApiDataResponse.fromJsonFactory);

    return _contractV1ContractsClientsClientIdDelegatedTrustDelegatedTrustClientIdPost(
        clientId: clientId,
        delegatedTrustClientId: delegatedTrustClientId,
        body: body);
  }

  ///
  ///@param clientId
  ///@param delegatedTrustClientId
  @Post(
    path:
        '/contract/v1/contracts/clients/{clientId}/delegatedTrust/{delegatedTrustClientId}',
    optionalBody: true,
  )
  Future<chopper.Response<ClientContractDtoApiDataResponse>>
      _contractV1ContractsClientsClientIdDelegatedTrustDelegatedTrustClientIdPost({
    @Path('clientId') required int? clientId,
    @Path('delegatedTrustClientId') required int? delegatedTrustClientId,
    @Body() required CreateNewUsageContractRequest? body,
  });

  ///
  ///@param page
  Future<chopper.Response<ClientContractSummaryDtoApiPagedResponse>>
      contractV1ContractsSearchPost({
    String? page,
    required SearchClientContractsRequest? body,
  }) {
    generatedMapping.putIfAbsent(ClientContractSummaryDtoApiPagedResponse,
        () => ClientContractSummaryDtoApiPagedResponse.fromJsonFactory);

    return _contractV1ContractsSearchPost(page: page, body: body);
  }

  ///
  ///@param page
  @Post(
    path: '/contract/v1/contracts/search',
    optionalBody: true,
  )
  Future<chopper.Response<ClientContractSummaryDtoApiPagedResponse>>
      _contractV1ContractsSearchPost({
    @Query('page') String? page,
    @Body() required SearchClientContractsRequest? body,
  });

  ///
  Future<chopper.Response<HomeFeedPage>> homefeedV1BookingsHomefeedGet() {
    generatedMapping.putIfAbsent(
        HomeFeedPage, () => HomeFeedPage.fromJsonFactory);

    return _homefeedV1BookingsHomefeedGet();
  }

  ///
  @Get(path: '/homefeed/v1/bookings/homefeed')
  Future<chopper.Response<HomeFeedPage>> _homefeedV1BookingsHomefeedGet();

  ///Get invoices
  ///@param clientId Client ID
  Future<chopper.Response<InvoiceResponse>> invoiceV1ClientsClientIdInvoicesGet(
      {required int? clientId}) {
    generatedMapping.putIfAbsent(
        InvoiceResponse, () => InvoiceResponse.fromJsonFactory);

    return _invoiceV1ClientsClientIdInvoicesGet(clientId: clientId);
  }

  ///Get invoices
  ///@param clientId Client ID
  @Get(path: '/invoice/v1/clients/{clientId}/invoices')
  Future<chopper.Response<InvoiceResponse>>
      _invoiceV1ClientsClientIdInvoicesGet(
          {@Path('clientId') required int? clientId});

  ///Get invoice pdf
  ///@param clientId Client ID
  ///@param invoiceId Invoice ID
  Future<chopper.Response<String>>
      invoiceV1ClientsClientIdInvoicesInvoiceIdInvoicePdfGet({
    required int? clientId,
    required int? invoiceId,
  }) {
    return _invoiceV1ClientsClientIdInvoicesInvoiceIdInvoicePdfGet(
        clientId: clientId, invoiceId: invoiceId);
  }

  ///Get invoice pdf
  ///@param clientId Client ID
  ///@param invoiceId Invoice ID
  @Get(path: '/invoice/v1/clients/{clientId}/invoices/{invoiceId}/invoice.pdf')
  Future<chopper.Response<String>>
      _invoiceV1ClientsClientIdInvoicesInvoiceIdInvoicePdfGet({
    @Path('clientId') required int? clientId,
    @Path('invoiceId') required int? invoiceId,
  });

  ///Determines the price rates and billing details based on the booking parameters (vehicle, period)
  ///@param X-Client-Id Client ID
  ///@param vehicleId Vehicle ID
  ///@param start Start Date
  ///@param end End Date
  Future<chopper.Response<BookingBillingPriceResponse>>
      pricingV1PricesBookingPriceGet({
    String? xClientId,
    required String? vehicleId,
    required DateTime? start,
    required DateTime? end,
  }) {
    generatedMapping.putIfAbsent(BookingBillingPriceResponse,
        () => BookingBillingPriceResponse.fromJsonFactory);

    return _pricingV1PricesBookingPriceGet(
        xClientId: xClientId?.toString(),
        vehicleId: vehicleId,
        start: start,
        end: end);
  }

  ///Determines the price rates and billing details based on the booking parameters (vehicle, period)
  ///@param X-Client-Id Client ID
  ///@param vehicleId Vehicle ID
  ///@param start Start Date
  ///@param end End Date
  @Get(path: '/pricing/v1/prices/booking-price')
  Future<chopper.Response<BookingBillingPriceResponse>>
      _pricingV1PricesBookingPriceGet({
    @Header('X-Client-Id') String? xClientId,
    @Query('vehicleId') required String? vehicleId,
    @Query('start') required DateTime? start,
    @Query('end') required DateTime? end,
  });

  ///Get the rates for vehicle models
  ///@param models Vehicle model IDs, separated by commas
  Future<chopper.Response<GetVehicleModelsRatesResponse>>
      pricingV1RatesVehicleModelsGet({String? models}) {
    generatedMapping.putIfAbsent(GetVehicleModelsRatesResponse,
        () => GetVehicleModelsRatesResponse.fromJsonFactory);

    return _pricingV1RatesVehicleModelsGet(models: models);
  }

  ///Get the rates for vehicle models
  ///@param models Vehicle model IDs, separated by commas
  @Get(path: '/pricing/v1/rates/vehicle-models')
  Future<chopper.Response<GetVehicleModelsRatesResponse>>
      _pricingV1RatesVehicleModelsGet({@Query('models') String? models});

  ///Insert rates for vehicle models
  Future<chopper.Response<CreateVehicleModelsRatesResponse>>
      pricingV1RatesVehicleModelsPost(
          {required CreateVehicleModelsRatesRequest? body}) {
    generatedMapping.putIfAbsent(CreateVehicleModelsRatesResponse,
        () => CreateVehicleModelsRatesResponse.fromJsonFactory);

    return _pricingV1RatesVehicleModelsPost(body: body);
  }

  ///Insert rates for vehicle models
  @Post(
    path: '/pricing/v1/rates/vehicle-models',
    optionalBody: true,
  )
  Future<chopper.Response<CreateVehicleModelsRatesResponse>>
      _pricingV1RatesVehicleModelsPost(
          {@Body() required CreateVehicleModelsRatesRequest? body});

  ///Deletes a single vehicle model rate
  ///@param rateId Rate ID
  Future<chopper.Response> pricingV1RatesVehicleModelsRateIdDelete(
      {required String? rateId}) {
    return _pricingV1RatesVehicleModelsRateIdDelete(rateId: rateId);
  }

  ///Deletes a single vehicle model rate
  ///@param rateId Rate ID
  @Delete(path: '/pricing/v1/rates/vehicle-models/{rateId}')
  Future<chopper.Response> _pricingV1RatesVehicleModelsRateIdDelete(
      {@Path('rateId') required String? rateId});

  ///Get the rates for vehicles
  ///@param vehicles Vehicle IDs, separated by commas
  Future<chopper.Response<GetVehiclesRatesResponse>> pricingV1RatesVehiclesGet(
      {String? vehicles}) {
    generatedMapping.putIfAbsent(GetVehiclesRatesResponse,
        () => GetVehiclesRatesResponse.fromJsonFactory);

    return _pricingV1RatesVehiclesGet(vehicles: vehicles);
  }

  ///Get the rates for vehicles
  ///@param vehicles Vehicle IDs, separated by commas
  @Get(path: '/pricing/v1/rates/vehicles')
  Future<chopper.Response<GetVehiclesRatesResponse>> _pricingV1RatesVehiclesGet(
      {@Query('vehicles') String? vehicles});

  ///Insert rates for vehicles
  Future<chopper.Response<CreateVehiclesRatesResponse>>
      pricingV1RatesVehiclesPost({required CreateVehiclesRatesRequest? body}) {
    generatedMapping.putIfAbsent(CreateVehiclesRatesResponse,
        () => CreateVehiclesRatesResponse.fromJsonFactory);

    return _pricingV1RatesVehiclesPost(body: body);
  }

  ///Insert rates for vehicles
  @Post(
    path: '/pricing/v1/rates/vehicles',
    optionalBody: true,
  )
  Future<chopper.Response<CreateVehiclesRatesResponse>>
      _pricingV1RatesVehiclesPost(
          {@Body() required CreateVehiclesRatesRequest? body});

  ///Deletes a single vehicle rate
  ///@param rateId Rate ID
  Future<chopper.Response> pricingV1RatesVehiclesRateIdDelete(
      {required String? rateId}) {
    return _pricingV1RatesVehiclesRateIdDelete(rateId: rateId);
  }

  ///Deletes a single vehicle rate
  ///@param rateId Rate ID
  @Delete(path: '/pricing/v1/rates/vehicles/{rateId}')
  Future<chopper.Response> _pricingV1RatesVehiclesRateIdDelete(
      {@Path('rateId') required String? rateId});

  ///Create a new client (company with VAT nr. or private person)
  Future<chopper.Response<Client>> userV1ClientsPost(
      {required ContractsCreateClient? body}) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _userV1ClientsPost(body: body);
  }

  ///Create a new client (company with VAT nr. or private person)
  @Post(
    path: '/user/v1/clients',
    optionalBody: true,
  )
  Future<chopper.Response<Client>> _userV1ClientsPost(
      {@Body() required ContractsCreateClient? body});

  ///Get information about a client you are the MainUser of
  ///@param clientId Client ID
  Future<chopper.Response<Client>> userV1ClientsClientIdGet(
      {required int? clientId}) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _userV1ClientsClientIdGet(clientId: clientId);
  }

  ///Get information about a client you are the MainUser of
  ///@param clientId Client ID
  @Get(path: '/user/v1/clients/{clientId}')
  Future<chopper.Response<Client>> _userV1ClientsClientIdGet(
      {@Path('clientId') required int? clientId});

  ///Delete a user from a client
  ///@param clientId Client ID
  ///@param userEmail User Email
  Future<chopper.Response<Client>> userV1ClientsClientIdUsersUserEmailDelete({
    required int? clientId,
    required String? userEmail,
  }) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _userV1ClientsClientIdUsersUserEmailDelete(
        clientId: clientId, userEmail: userEmail);
  }

  ///Delete a user from a client
  ///@param clientId Client ID
  ///@param userEmail User Email
  @Delete(path: '/user/v1/clients/{clientId}/users/{userEmail}')
  Future<chopper.Response<Client>> _userV1ClientsClientIdUsersUserEmailDelete({
    @Path('clientId') required int? clientId,
    @Path('userEmail') required String? userEmail,
  });

  ///Add a user to a client
  ///@param clientId Client ID
  ///@param userEmail User Email
  Future<chopper.Response<Client>> userV1ClientsClientIdUsersUserEmailPut({
    required int? clientId,
    required String? userEmail,
  }) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _userV1ClientsClientIdUsersUserEmailPut(
        clientId: clientId, userEmail: userEmail);
  }

  ///Add a user to a client
  ///@param clientId Client ID
  ///@param userEmail User Email
  @Put(
    path: '/user/v1/clients/{clientId}/users/{userEmail}',
    optionalBody: true,
  )
  Future<chopper.Response<Client>> _userV1ClientsClientIdUsersUserEmailPut({
    @Path('clientId') required int? clientId,
    @Path('userEmail') required String? userEmail,
  });

  ///
  Future<chopper.Response<GpsLocation>> userV1HomeLocationGet() {
    generatedMapping.putIfAbsent(
        GpsLocation, () => GpsLocation.fromJsonFactory);

    return _userV1HomeLocationGet();
  }

  ///
  @Get(path: '/user/v1/home-location')
  Future<chopper.Response<GpsLocation>> _userV1HomeLocationGet();

  ///
  Future<chopper.Response> userV1HomeLocationPut({required GpsLocation? body}) {
    return _userV1HomeLocationPut(body: body);
  }

  ///
  @Put(
    path: '/user/v1/home-location',
    optionalBody: true,
  )
  Future<chopper.Response> _userV1HomeLocationPut(
      {@Body() required GpsLocation? body});

  ///
  ///@param userId
  Future<chopper.Response<User>> userV1ImageUserIdPost({
    required String? userId,
    required List<int> file,
  }) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _userV1ImageUserIdPost(userId: userId, file: file);
  }

  ///
  ///@param userId
  @Post(
    path: '/user/v1/image/{userId}',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<User>> _userV1ImageUserIdPost({
    @Path('userId') required String? userId,
    @PartFile() required List<int> file,
  });

  ///Requests a password reset email to be sent
  Future<chopper.Response> userV1PasswordResetsPost(
      {required ContractsPasswordReset? body}) {
    return _userV1PasswordResetsPost(body: body);
  }

  ///Requests a password reset email to be sent
  @Post(
    path: '/user/v1/password-resets',
    optionalBody: true,
  )
  Future<chopper.Response> _userV1PasswordResetsPost(
      {@Body() required ContractsPasswordReset? body});

  ///Initiates user signup
  Future<chopper.Response> userV1UsersPost(
      {required ContractsSignupUser? body}) {
    return _userV1UsersPost(body: body);
  }

  ///Initiates user signup
  @Post(
    path: '/user/v1/users',
    optionalBody: true,
  )
  Future<chopper.Response> _userV1UsersPost(
      {@Body() required ContractsSignupUser? body});

  ///
  Future<chopper.Response> userV1UsersDevicesPut(
      {required RegisterDeviceRequest? body}) {
    return _userV1UsersDevicesPut(body: body);
  }

  ///
  @Put(
    path: '/user/v1/users/devices',
    optionalBody: true,
  )
  Future<chopper.Response> _userV1UsersDevicesPut(
      {@Body() required RegisterDeviceRequest? body});

  ///Get an uploaded document from the user
  ///@param filename File name
  Future<chopper.Response<String>> userV1UsersDocumentsFilenameGet(
      {required String? filename}) {
    return _userV1UsersDocumentsFilenameGet(filename: filename);
  }

  ///Get an uploaded document from the user
  ///@param filename File name
  @Get(path: '/user/v1/users/documents/{filename}')
  Future<chopper.Response<String>> _userV1UsersDocumentsFilenameGet(
      {@Path('filename') required String? filename});

  ///
  ///@param userImageId
  Future<chopper.Response<List<String>>> userV1UsersImagesUserImageIdGet(
      {required String? userImageId}) {
    return _userV1UsersImagesUserImageIdGet(userImageId: userImageId);
  }

  ///
  ///@param userImageId
  @Get(path: '/user/v1/users/images/{userImageId}')
  Future<chopper.Response<List<String>>> _userV1UsersImagesUserImageIdGet(
      {@Path('userImageId') required String? userImageId});

  ///Get information about your own user
  Future<chopper.Response<ContractUser>> userV1UsersMeGet() {
    generatedMapping.putIfAbsent(
        ContractUser, () => ContractUser.fromJsonFactory);

    return _userV1UsersMeGet();
  }

  ///Get information about your own user
  @Get(path: '/user/v1/users/me')
  Future<chopper.Response<ContractUser>> _userV1UsersMeGet();

  ///Get the onboarding status of your own user
  Future<chopper.Response<ContractsOnboarding>> userV1UsersOnboardingGet() {
    generatedMapping.putIfAbsent(
        ContractsOnboarding, () => ContractsOnboarding.fromJsonFactory);

    return _userV1UsersOnboardingGet();
  }

  ///Get the onboarding status of your own user
  @Get(path: '/user/v1/users/onboarding')
  Future<chopper.Response<ContractsOnboarding>> _userV1UsersOnboardingGet();

  ///Upload your own documents
  Future<chopper.Response<ContractsOnboarding>>
      userV1UsersOnboardingDocumentsPut({
    List<int>? backDriverLicense,
    List<int>? backId,
    List<int>? damageStatistic,
    List<int>? frontDriverLicense,
    List<int>? frontId,
    List<int>? selfie,
  }) {
    generatedMapping.putIfAbsent(
        ContractsOnboarding, () => ContractsOnboarding.fromJsonFactory);

    return _userV1UsersOnboardingDocumentsPut(
        backDriverLicense: backDriverLicense,
        backId: backId,
        damageStatistic: damageStatistic,
        frontDriverLicense: frontDriverLicense,
        frontId: frontId,
        selfie: selfie);
  }

  ///Upload your own documents
  @Put(
    path: '/user/v1/users/onboarding/documents',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<ContractsOnboarding>>
      _userV1UsersOnboardingDocumentsPut({
    @PartFile() List<int>? backDriverLicense,
    @PartFile() List<int>? backId,
    @PartFile() List<int>? damageStatistic,
    @PartFile() List<int>? frontDriverLicense,
    @PartFile() List<int>? frontId,
    @PartFile() List<int>? selfie,
  });

  ///Upload your legal information
  Future<chopper.Response<ContractsOnboarding>> userV1UsersOnboardingLegalPut(
      {required ContractsOnboardingLegal? body}) {
    generatedMapping.putIfAbsent(
        ContractsOnboarding, () => ContractsOnboarding.fromJsonFactory);

    return _userV1UsersOnboardingLegalPut(body: body);
  }

  ///Upload your legal information
  @Put(
    path: '/user/v1/users/onboarding/legal',
    optionalBody: true,
  )
  Future<chopper.Response<ContractsOnboarding>> _userV1UsersOnboardingLegalPut(
      {@Body() required ContractsOnboardingLegal? body});

  ///Update your information
  Future<chopper.Response<ContractsOnboarding>>
      userV1UsersOnboardingPersonalPut(
          {required ContractsOnboardingPersonal? body}) {
    generatedMapping.putIfAbsent(
        ContractsOnboarding, () => ContractsOnboarding.fromJsonFactory);

    return _userV1UsersOnboardingPersonalPut(body: body);
  }

  ///Update your information
  @Put(
    path: '/user/v1/users/onboarding/personal',
    optionalBody: true,
  )
  Future<chopper.Response<ContractsOnboarding>>
      _userV1UsersOnboardingPersonalPut(
          {@Body() required ContractsOnboardingPersonal? body});

  ///Register or verify your phone number
  Future<chopper.Response<ContractsOnboarding>> userV1UsersOnboardingPhonePut(
      {required ContractsOnboardingPhone? body}) {
    generatedMapping.putIfAbsent(
        ContractsOnboarding, () => ContractsOnboarding.fromJsonFactory);

    return _userV1UsersOnboardingPhonePut(body: body);
  }

  ///Register or verify your phone number
  @Put(
    path: '/user/v1/users/onboarding/phone',
    optionalBody: true,
  )
  Future<chopper.Response<ContractsOnboarding>> _userV1UsersOnboardingPhonePut(
      {@Body() required ContractsOnboardingPhone? body});

  ///
  ///@param role
  Future<chopper.Response<UserPage>> userV1UsersRolesRoleGet(
      {required enums.UserV1UsersRolesRoleGetRole? role}) {
    generatedMapping.putIfAbsent(UserPage, () => UserPage.fromJsonFactory);

    return _userV1UsersRolesRoleGet(role: role?.value?.toString());
  }

  ///
  ///@param role
  @Get(path: '/user/v1/users/roles/{role}')
  Future<chopper.Response<UserPage>> _userV1UsersRolesRoleGet(
      {@Path('role') required String? role});

  ///Search users based on first and last name
  ///@param firstNameHint First name
  ///@param lastNameHint Last name
  Future<chopper.Response<List<ContractUser>>> userV1UsersSearchesGet({
    required String? firstNameHint,
    required String? lastNameHint,
  }) {
    generatedMapping.putIfAbsent(
        ContractUser, () => ContractUser.fromJsonFactory);

    return _userV1UsersSearchesGet(
        firstNameHint: firstNameHint, lastNameHint: lastNameHint);
  }

  ///Search users based on first and last name
  ///@param firstNameHint First name
  ///@param lastNameHint Last name
  @Get(path: '/user/v1/users/searches')
  Future<chopper.Response<List<ContractUser>>> _userV1UsersSearchesGet({
    @Query('firstNameHint') required String? firstNameHint,
    @Query('lastNameHint') required String? lastNameHint,
  });

  ///
  Future<chopper.Response<UserPage>> userV1UsersSearchesPut(
      {required SearchUsersRequest? body}) {
    generatedMapping.putIfAbsent(UserPage, () => UserPage.fromJsonFactory);

    return _userV1UsersSearchesPut(body: body);
  }

  ///
  @Put(
    path: '/user/v1/users/searches',
    optionalBody: true,
  )
  Future<chopper.Response<UserPage>> _userV1UsersSearchesPut(
      {@Body() required SearchUsersRequest? body});

  ///
  ///@param id
  Future<chopper.Response<User>> userV1UsersIdPut({
    required String? id,
    required UpdateUserRequest? body,
  }) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _userV1UsersIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/user/v1/users/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<User>> _userV1UsersIdPut({
    @Path('id') required String? id,
    @Body() required UpdateUserRequest? body,
  });

  ///
  ///@param userId
  Future<chopper.Response> userV1UsersUserIdDelete({required String? userId}) {
    return _userV1UsersUserIdDelete(userId: userId);
  }

  ///
  ///@param userId
  @Delete(path: '/user/v1/users/{userId}')
  Future<chopper.Response> _userV1UsersUserIdDelete(
      {@Path('userId') required String? userId});

  ///
  ///@param userId
  Future<chopper.Response<User>> userV1UsersUserIdGet(
      {required String? userId}) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _userV1UsersUserIdGet(userId: userId);
  }

  ///
  ///@param userId
  @Get(path: '/user/v1/users/{userId}')
  Future<chopper.Response<User>> _userV1UsersUserIdGet(
      {@Path('userId') required String? userId});

  ///Requests a resend of the verification email that is part of the user signup process
  Future<chopper.Response> userV1VerificationEmailResendsPost(
      {required ContractsResendVerificationEmail? body}) {
    return _userV1VerificationEmailResendsPost(body: body);
  }

  ///Requests a resend of the verification email that is part of the user signup process
  @Post(
    path: '/user/v1/verification-email-resends',
    optionalBody: true,
  )
  Future<chopper.Response> _userV1VerificationEmailResendsPost(
      {@Body() required ContractsResendVerificationEmail? body});

  ///
  Future<chopper.Response<VehicleGroupPage>> vehicleGroupV1VehicleGroupsGet() {
    generatedMapping.putIfAbsent(
        VehicleGroupPage, () => VehicleGroupPage.fromJsonFactory);

    return _vehicleGroupV1VehicleGroupsGet();
  }

  ///
  @Get(path: '/vehicle-group/v1/vehicle-groups')
  Future<chopper.Response<VehicleGroupPage>> _vehicleGroupV1VehicleGroupsGet();

  ///
  Future<chopper.Response<VehicleGroup>> vehicleGroupV1VehicleGroupsPost(
      {required CreateVehicleGroupRequest? body}) {
    generatedMapping.putIfAbsent(
        VehicleGroup, () => VehicleGroup.fromJsonFactory);

    return _vehicleGroupV1VehicleGroupsPost(body: body);
  }

  ///
  @Post(
    path: '/vehicle-group/v1/vehicle-groups',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleGroup>> _vehicleGroupV1VehicleGroupsPost(
      {@Body() required CreateVehicleGroupRequest? body});

  ///
  ///@param vehicleGroupId
  Future<chopper.Response> vehicleGroupV1VehicleGroupsVehicleGroupIdDelete(
      {required String? vehicleGroupId}) {
    return _vehicleGroupV1VehicleGroupsVehicleGroupIdDelete(
        vehicleGroupId: vehicleGroupId);
  }

  ///
  ///@param vehicleGroupId
  @Delete(path: '/vehicle-group/v1/vehicle-groups/{vehicleGroupId}')
  Future<chopper.Response> _vehicleGroupV1VehicleGroupsVehicleGroupIdDelete(
      {@Path('vehicleGroupId') required String? vehicleGroupId});

  ///
  ///@param vehicleGroupId
  Future<chopper.Response<VehicleGroup>>
      vehicleGroupV1VehicleGroupsVehicleGroupIdGet(
          {required String? vehicleGroupId}) {
    generatedMapping.putIfAbsent(
        VehicleGroup, () => VehicleGroup.fromJsonFactory);

    return _vehicleGroupV1VehicleGroupsVehicleGroupIdGet(
        vehicleGroupId: vehicleGroupId);
  }

  ///
  ///@param vehicleGroupId
  @Get(path: '/vehicle-group/v1/vehicle-groups/{vehicleGroupId}')
  Future<chopper.Response<VehicleGroup>>
      _vehicleGroupV1VehicleGroupsVehicleGroupIdGet(
          {@Path('vehicleGroupId') required String? vehicleGroupId});

  ///
  ///@param vehicleGroupId
  Future<chopper.Response>
      vehicleGroupV1VehicleGroupsVehicleGroupIdActionsAddVehiclesPut({
    required String? vehicleGroupId,
    required AddVehiclesToGroupRequest? body,
  }) {
    return _vehicleGroupV1VehicleGroupsVehicleGroupIdActionsAddVehiclesPut(
        vehicleGroupId: vehicleGroupId, body: body);
  }

  ///
  ///@param vehicleGroupId
  @Put(
    path:
        '/vehicle-group/v1/vehicle-groups/{vehicleGroupId}/actions/add-vehicles',
    optionalBody: true,
  )
  Future<chopper.Response>
      _vehicleGroupV1VehicleGroupsVehicleGroupIdActionsAddVehiclesPut({
    @Path('vehicleGroupId') required String? vehicleGroupId,
    @Body() required AddVehiclesToGroupRequest? body,
  });

  ///
  ///@param vehicleGroupId
  Future<chopper.Response>
      vehicleGroupV1VehicleGroupsVehicleGroupIdActionsDeleteVehiclesPost({
    required String? vehicleGroupId,
    required DeleteVehiclesFromGroupRequest? body,
  }) {
    return _vehicleGroupV1VehicleGroupsVehicleGroupIdActionsDeleteVehiclesPost(
        vehicleGroupId: vehicleGroupId, body: body);
  }

  ///
  ///@param vehicleGroupId
  @Post(
    path:
        '/vehicle-group/v1/vehicle-groups/{vehicleGroupId}/actions/delete-vehicles',
    optionalBody: true,
  )
  Future<chopper.Response>
      _vehicleGroupV1VehicleGroupsVehicleGroupIdActionsDeleteVehiclesPost({
    @Path('vehicleGroupId') required String? vehicleGroupId,
    @Body() required DeleteVehiclesFromGroupRequest? body,
  });

  ///
  ///@param vehicleGroupId
  ///@param vehicleId
  Future<chopper.Response>
      vehicleGroupV1VehicleGroupsVehicleGroupIdVehiclesVehicleIdDelete({
    required String? vehicleGroupId,
    required String? vehicleId,
  }) {
    return _vehicleGroupV1VehicleGroupsVehicleGroupIdVehiclesVehicleIdDelete(
        vehicleGroupId: vehicleGroupId, vehicleId: vehicleId);
  }

  ///
  ///@param vehicleGroupId
  ///@param vehicleId
  @Delete(
      path:
          '/vehicle-group/v1/vehicle-groups/{vehicleGroupId}/vehicles/{vehicleId}')
  Future<chopper.Response>
      _vehicleGroupV1VehicleGroupsVehicleGroupIdVehiclesVehicleIdDelete({
    @Path('vehicleGroupId') required String? vehicleGroupId,
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleGroupId
  ///@param vehicleId
  Future<chopper.Response>
      vehicleGroupV1VehicleGroupsVehicleGroupIdVehiclesVehicleIdPut({
    required String? vehicleGroupId,
    required String? vehicleId,
  }) {
    return _vehicleGroupV1VehicleGroupsVehicleGroupIdVehiclesVehicleIdPut(
        vehicleGroupId: vehicleGroupId, vehicleId: vehicleId);
  }

  ///
  ///@param vehicleGroupId
  ///@param vehicleId
  @Put(
    path:
        '/vehicle-group/v1/vehicle-groups/{vehicleGroupId}/vehicles/{vehicleId}',
    optionalBody: true,
  )
  Future<chopper.Response>
      _vehicleGroupV1VehicleGroupsVehicleGroupIdVehiclesVehicleIdPut({
    @Path('vehicleGroupId') required String? vehicleGroupId,
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<VehicleUsage>>
      vehicleUsageV1ActiveUsageVehicleVehicleIdGet(
          {required String? vehicleId}) {
    generatedMapping.putIfAbsent(
        VehicleUsage, () => VehicleUsage.fromJsonFactory);

    return _vehicleUsageV1ActiveUsageVehicleVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @Get(path: '/vehicle-usage/v1/active-usage/vehicle/{vehicleId}')
  Future<chopper.Response<VehicleUsage>>
      _vehicleUsageV1ActiveUsageVehicleVehicleIdGet(
          {@Path('vehicleId') required String? vehicleId});

  ///
  Future<chopper.Response<VehicleUsage>> vehicleUsageV1EndPut(
      {required EndVehicleUsageRequest? body}) {
    generatedMapping.putIfAbsent(
        VehicleUsage, () => VehicleUsage.fromJsonFactory);

    return _vehicleUsageV1EndPut(body: body);
  }

  ///
  @Put(
    path: '/vehicle-usage/v1/end',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleUsage>> _vehicleUsageV1EndPut(
      {@Body() required EndVehicleUsageRequest? body});

  ///
  Future<chopper.Response<VehicleUsage>> vehicleUsageV1StartPut(
      {required StartVehicleUsageRequest? body}) {
    generatedMapping.putIfAbsent(
        VehicleUsage, () => VehicleUsage.fromJsonFactory);

    return _vehicleUsageV1StartPut(body: body);
  }

  ///
  @Put(
    path: '/vehicle-usage/v1/start',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleUsage>> _vehicleUsageV1StartPut(
      {@Body() required StartVehicleUsageRequest? body});

  ///
  Future<chopper.Response<VehicleUsagePage>> vehicleUsageV1VehicleUsagesGet() {
    generatedMapping.putIfAbsent(
        VehicleUsagePage, () => VehicleUsagePage.fromJsonFactory);

    return _vehicleUsageV1VehicleUsagesGet();
  }

  ///
  @Get(path: '/vehicle-usage/v1/vehicle-usages')
  Future<chopper.Response<VehicleUsagePage>> _vehicleUsageV1VehicleUsagesGet();

  ///
  ///@param vehicleUsageId
  Future<chopper.Response<VehicleUsage>> vehicleUsageV1VehicleUsageIdStatusPut({
    required String? vehicleUsageId,
    required VehicleUsageUpdateStatusRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        VehicleUsage, () => VehicleUsage.fromJsonFactory);

    return _vehicleUsageV1VehicleUsageIdStatusPut(
        vehicleUsageId: vehicleUsageId, body: body);
  }

  ///
  ///@param vehicleUsageId
  @Put(
    path: '/vehicle-usage/v1/{vehicleUsageId}/status',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleUsage>>
      _vehicleUsageV1VehicleUsageIdStatusPut({
    @Path('vehicleUsageId') required String? vehicleUsageId,
    @Body() required VehicleUsageUpdateStatusRequest? body,
  });

  ///
  Future<chopper.Response<BodyStylePage>> vehicleV1BodyStylesGet() {
    generatedMapping.putIfAbsent(
        BodyStylePage, () => BodyStylePage.fromJsonFactory);

    return _vehicleV1BodyStylesGet();
  }

  ///
  @Get(path: '/vehicle/v1/body-styles')
  Future<chopper.Response<BodyStylePage>> _vehicleV1BodyStylesGet();

  ///
  Future<chopper.Response<BodyStyle>> vehicleV1BodyStylesPost(
      {required CreateBodyStyleRequest? body}) {
    generatedMapping.putIfAbsent(BodyStyle, () => BodyStyle.fromJsonFactory);

    return _vehicleV1BodyStylesPost(body: body);
  }

  ///
  @Post(
    path: '/vehicle/v1/body-styles',
    optionalBody: true,
  )
  Future<chopper.Response<BodyStyle>> _vehicleV1BodyStylesPost(
      {@Body() required CreateBodyStyleRequest? body});

  ///
  Future<chopper.Response<VehicleBrandPage>> vehicleV1BrandsGet() {
    generatedMapping.putIfAbsent(
        VehicleBrandPage, () => VehicleBrandPage.fromJsonFactory);

    return _vehicleV1BrandsGet();
  }

  ///
  @Get(path: '/vehicle/v1/brands')
  Future<chopper.Response<VehicleBrandPage>> _vehicleV1BrandsGet();

  ///
  Future<chopper.Response<VehicleBrand>> vehicleV1BrandsPost(
      {required VehicleBrand? body}) {
    generatedMapping.putIfAbsent(
        VehicleBrand, () => VehicleBrand.fromJsonFactory);

    return _vehicleV1BrandsPost(body: body);
  }

  ///
  @Post(
    path: '/vehicle/v1/brands',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleBrand>> _vehicleV1BrandsPost(
      {@Body() required VehicleBrand? body});

  ///
  Future<chopper.Response<VehicleFilterEnums>> vehicleV1FiltersGet() {
    generatedMapping.putIfAbsent(
        VehicleFilterEnums, () => VehicleFilterEnums.fromJsonFactory);

    return _vehicleV1FiltersGet();
  }

  ///
  @Get(path: '/vehicle/v1/filters')
  Future<chopper.Response<VehicleFilterEnums>> _vehicleV1FiltersGet();

  ///
  Future<chopper.Response<VehicleModelPage>> vehicleV1ModelsGet() {
    generatedMapping.putIfAbsent(
        VehicleModelPage, () => VehicleModelPage.fromJsonFactory);

    return _vehicleV1ModelsGet();
  }

  ///
  @Get(path: '/vehicle/v1/models')
  Future<chopper.Response<VehicleModelPage>> _vehicleV1ModelsGet();

  ///
  Future<chopper.Response<VehicleModel>> vehicleV1ModelsPost(
      {required CreateVehicleModelRequest? body}) {
    generatedMapping.putIfAbsent(
        VehicleModel, () => VehicleModel.fromJsonFactory);

    return _vehicleV1ModelsPost(body: body);
  }

  ///
  @Post(
    path: '/vehicle/v1/models',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleModel>> _vehicleV1ModelsPost(
      {@Body() required CreateVehicleModelRequest? body});

  ///
  Future<chopper.Response<VehiclesPage>> vehicleV1MyVehiclesGet() {
    generatedMapping.putIfAbsent(
        VehiclesPage, () => VehiclesPage.fromJsonFactory);

    return _vehicleV1MyVehiclesGet();
  }

  ///
  @Get(path: '/vehicle/v1/my-vehicles')
  Future<chopper.Response<VehiclesPage>> _vehicleV1MyVehiclesGet();

  ///
  Future<chopper.Response<MyAvailableVehiclesPage>>
      vehicleV1MyVehiclesAvailableGet() {
    generatedMapping.putIfAbsent(
        MyAvailableVehiclesPage, () => MyAvailableVehiclesPage.fromJsonFactory);

    return _vehicleV1MyVehiclesAvailableGet();
  }

  ///
  @Get(path: '/vehicle/v1/my-vehicles/available')
  Future<chopper.Response<MyAvailableVehiclesPage>>
      _vehicleV1MyVehiclesAvailableGet();

  ///
  Future<chopper.Response<VehiclesPage>> vehicleV1SearchPost(
      {required SearchVehiclesRequest? body}) {
    generatedMapping.putIfAbsent(
        VehiclesPage, () => VehiclesPage.fromJsonFactory);

    return _vehicleV1SearchPost(body: body);
  }

  ///
  @Post(
    path: '/vehicle/v1/search',
    optionalBody: true,
  )
  Future<chopper.Response<VehiclesPage>> _vehicleV1SearchPost(
      {@Body() required SearchVehiclesRequest? body});

  ///
  ///@param vehicleId
  Future<chopper.Response<Vehicle>> vehicleV1VehicleImageVehicleIdPost({
    required String? vehicleId,
    required List<int> file,
  }) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _vehicleV1VehicleImageVehicleIdPost(
        vehicleId: vehicleId, file: file);
  }

  ///
  ///@param vehicleId
  @Post(
    path: '/vehicle/v1/vehicle/image/{vehicleId}',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<Vehicle>> _vehicleV1VehicleImageVehicleIdPost({
    @Path('vehicleId') required String? vehicleId,
    @PartFile() required List<int> file,
  });

  ///
  ///@param vehicleImageId
  Future<chopper.Response<List<String>>> vehicleV1VehicleImageVehicleImageIdGet(
      {required String? vehicleImageId}) {
    return _vehicleV1VehicleImageVehicleImageIdGet(
        vehicleImageId: vehicleImageId);
  }

  ///
  ///@param vehicleImageId
  @Get(path: '/vehicle/v1/vehicle/image/{vehicleImageId}')
  Future<chopper.Response<List<String>>>
      _vehicleV1VehicleImageVehicleImageIdGet(
          {@Path('vehicleImageId') required String? vehicleImageId});

  ///
  ///@param activeOnly
  Future<chopper.Response<VehiclesPage>> vehicleV1VehiclesGet(
      {bool? activeOnly}) {
    generatedMapping.putIfAbsent(
        VehiclesPage, () => VehiclesPage.fromJsonFactory);

    return _vehicleV1VehiclesGet(activeOnly: activeOnly);
  }

  ///
  ///@param activeOnly
  @Get(path: '/vehicle/v1/vehicles')
  Future<chopper.Response<VehiclesPage>> _vehicleV1VehiclesGet(
      {@Query('activeOnly') bool? activeOnly});

  ///
  Future<chopper.Response<Vehicle>> vehicleV1VehiclesPost(
      {required CreateVehicleRequest? body}) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _vehicleV1VehiclesPost(body: body);
  }

  ///
  @Post(
    path: '/vehicle/v1/vehicles',
    optionalBody: true,
  )
  Future<chopper.Response<Vehicle>> _vehicleV1VehiclesPost(
      {@Body() required CreateVehicleRequest? body});

  ///
  Future<chopper.Response<Vehicle>> vehicleV1VehiclesPut(
      {required UpdateVehicleRequest? body}) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _vehicleV1VehiclesPut(body: body);
  }

  ///
  @Put(
    path: '/vehicle/v1/vehicles',
    optionalBody: true,
  )
  Future<chopper.Response<Vehicle>> _vehicleV1VehiclesPut(
      {@Body() required UpdateVehicleRequest? body});

  ///
  ///@param vehicleId
  Future<chopper.Response<Vehicle>> vehicleV1VehiclesVehicleIdGet(
      {required String? vehicleId}) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _vehicleV1VehiclesVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @Get(path: '/vehicle/v1/vehicles/{vehicleId}')
  Future<chopper.Response<Vehicle>> _vehicleV1VehiclesVehicleIdGet(
      {@Path('vehicleId') required String? vehicleId});

  ///
  ///@param vehicleId
  ///@param isFavorite
  Future<chopper.Response> vehicleV1VehiclesVehicleIdFavoriteIsFavoritePut({
    required String? vehicleId,
    required bool? isFavorite,
  }) {
    return _vehicleV1VehiclesVehicleIdFavoriteIsFavoritePut(
        vehicleId: vehicleId, isFavorite: isFavorite);
  }

  ///
  ///@param vehicleId
  ///@param isFavorite
  @Put(
    path: '/vehicle/v1/vehicles/{vehicleId}/favorite/{isFavorite}',
    optionalBody: true,
  )
  Future<chopper.Response> _vehicleV1VehiclesVehicleIdFavoriteIsFavoritePut({
    @Path('vehicleId') required String? vehicleId,
    @Path('isFavorite') required bool? isFavorite,
  });

  ///
  Future<chopper.Response<VehicleBaseLocationPage>>
      vehiclebaselocationV1VehiclebaselocationsGet() {
    generatedMapping.putIfAbsent(
        VehicleBaseLocationPage, () => VehicleBaseLocationPage.fromJsonFactory);

    return _vehiclebaselocationV1VehiclebaselocationsGet();
  }

  ///
  @Get(path: '/vehiclebaselocation/v1/vehiclebaselocations')
  Future<chopper.Response<VehicleBaseLocationPage>>
      _vehiclebaselocationV1VehiclebaselocationsGet();

  ///
  Future<chopper.Response<VehicleBaseLocation>>
      vehiclebaselocationV1VehiclebaselocationsPost(
          {required VehicleBaseLocation? body}) {
    generatedMapping.putIfAbsent(
        VehicleBaseLocation, () => VehicleBaseLocation.fromJsonFactory);

    return _vehiclebaselocationV1VehiclebaselocationsPost(body: body);
  }

  ///
  @Post(
    path: '/vehiclebaselocation/v1/vehiclebaselocations',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleBaseLocation>>
      _vehiclebaselocationV1VehiclebaselocationsPost(
          {@Body() required VehicleBaseLocation? body});

  ///
  ///@param id
  Future<chopper.Response> vehiclebaselocationV1VehiclebaselocationsIdDelete(
      {required String? id}) {
    return _vehiclebaselocationV1VehiclebaselocationsIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/vehiclebaselocation/v1/vehiclebaselocations/{id}')
  Future<chopper.Response> _vehiclebaselocationV1VehiclebaselocationsIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<VehicleBaseLocation>>
      vehiclebaselocationV1VehiclebaselocationsIdPut({
    required String? id,
    required VehicleBaseLocation? body,
  }) {
    generatedMapping.putIfAbsent(
        VehicleBaseLocation, () => VehicleBaseLocation.fromJsonFactory);

    return _vehiclebaselocationV1VehiclebaselocationsIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/vehiclebaselocation/v1/vehiclebaselocations/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleBaseLocation>>
      _vehiclebaselocationV1VehiclebaselocationsIdPut({
    @Path('id') required String? id,
    @Body() required VehicleBaseLocation? body,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
