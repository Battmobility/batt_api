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
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$BattKit(newClient);
  }

  ///
  Future<chopper.Response<String>>
  wellKnownAppspecificComTesla3pPublicKeyPemGet() {
    return _wellKnownAppspecificComTesla3pPublicKeyPemGet();
  }

  ///
  @GET(path: '/.well-known/appspecific/com.tesla.3p.public-key.pem')
  Future<chopper.Response<String>>
  _wellKnownAppspecificComTesla3pPublicKeyPemGet();

  ///
  Future<chopper.Response<NonAvailabilityResponse>>
  availabilityV1NonAvailabilitiesPost({
    required CreateNonAvailabilityRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      NonAvailabilityResponse,
      () => NonAvailabilityResponse.fromJsonFactory,
    );

    return _availabilityV1NonAvailabilitiesPost(body: body);
  }

  ///
  @POST(path: '/availability/v1/non-availabilities', optionalBody: true)
  Future<chopper.Response<NonAvailabilityResponse>>
  _availabilityV1NonAvailabilitiesPost({
    @Body() required CreateNonAvailabilityRequest? body,
  });

  ///
  Future<chopper.Response<RecurringNonAvailability>>
  availabilityV1NonAvailabilitiesRecurringPost({
    required CreateRecurringNonAvailabilityRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      RecurringNonAvailability,
      () => RecurringNonAvailability.fromJsonFactory,
    );

    return _availabilityV1NonAvailabilitiesRecurringPost(body: body);
  }

  ///
  @POST(
    path: '/availability/v1/non-availabilities/recurring',
    optionalBody: true,
  )
  Future<chopper.Response<RecurringNonAvailability>>
  _availabilityV1NonAvailabilitiesRecurringPost({
    @Body() required CreateRecurringNonAvailabilityRequest? body,
  });

  ///
  Future<chopper.Response<NonAvailabilitiesPerVehiclePage>>
  availabilityV1NonAvailabilitiesSearchesPost({
    required SearchNonAvailabilityEventsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      NonAvailabilitiesPerVehiclePage,
      () => NonAvailabilitiesPerVehiclePage.fromJsonFactory,
    );

    return _availabilityV1NonAvailabilitiesSearchesPost(body: body);
  }

  ///
  @POST(
    path: '/availability/v1/non-availabilities/searches',
    optionalBody: true,
  )
  Future<chopper.Response<NonAvailabilitiesPerVehiclePage>>
  _availabilityV1NonAvailabilitiesSearchesPost({
    @Body() required SearchNonAvailabilityEventsRequest? body,
  });

  ///
  ///@param nonAvailabilityId
  Future<chopper.Response>
  availabilityV1NonAvailabilitiesNonAvailabilityIdDelete({
    required String? nonAvailabilityId,
  }) {
    return _availabilityV1NonAvailabilitiesNonAvailabilityIdDelete(
      nonAvailabilityId: nonAvailabilityId,
    );
  }

  ///
  ///@param nonAvailabilityId
  @DELETE(path: '/availability/v1/non-availabilities/{nonAvailabilityId}')
  Future<chopper.Response>
  _availabilityV1NonAvailabilitiesNonAvailabilityIdDelete({
    @Path('nonAvailabilityId') required String? nonAvailabilityId,
  });

  ///
  ///@param nonAvailabilityId
  ///@param start
  ///@param end
  Future<chopper.Response<NonAvailabilitiesPage>>
  availabilityV1NonAvailabilitiesNonAvailabilityIdSplitPut({
    required String? nonAvailabilityId,
    required DateTime? start,
    required DateTime? end,
  }) {
    generatedMapping.putIfAbsent(
      NonAvailabilitiesPage,
      () => NonAvailabilitiesPage.fromJsonFactory,
    );

    return _availabilityV1NonAvailabilitiesNonAvailabilityIdSplitPut(
      nonAvailabilityId: nonAvailabilityId,
      start: start,
      end: end,
    );
  }

  ///
  ///@param nonAvailabilityId
  ///@param start
  ///@param end
  @PUT(
    path: '/availability/v1/non-availabilities/{nonAvailabilityId}/split',
    optionalBody: true,
  )
  Future<chopper.Response<NonAvailabilitiesPage>>
  _availabilityV1NonAvailabilitiesNonAvailabilityIdSplitPut({
    @Path('nonAvailabilityId') required String? nonAvailabilityId,
    @Query('start') required DateTime? start,
    @Query('end') required DateTime? end,
  });

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
      NonAvailabilitiesPage,
      () => NonAvailabilitiesPage.fromJsonFactory,
    );

    return _availabilityV1NonAvailabilitiesVehicleIdGet(
      vehicleId: vehicleId,
      start: start,
      end: end,
    );
  }

  ///
  ///@param vehicleId
  ///@param start
  ///@param end
  @GET(path: '/availability/v1/non-availabilities/{vehicleId}')
  Future<chopper.Response<NonAvailabilitiesPage>>
  _availabilityV1NonAvailabilitiesVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
    @Query('start') required DateTime? start,
    @Query('end') required DateTime? end,
  });

  ///
  Future<chopper.Response<BookingsPage>> bookingV1BookingsGet() {
    generatedMapping.putIfAbsent(
      BookingsPage,
      () => BookingsPage.fromJsonFactory,
    );

    return _bookingV1BookingsGet();
  }

  ///
  @GET(path: '/booking/v1/bookings')
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
  @POST(path: '/booking/v1/bookings', optionalBody: true)
  Future<chopper.Response<Booking>> _bookingV1BookingsPost({
    @Header('X-Client-Id') String? xClientId,
    @Body() required CreateBooking? body,
  });

  ///
  Future<chopper.Response<Booking>> bookingV1BookingsActionsCancelPost({
    required CancelBookingRequest? body,
  }) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _bookingV1BookingsActionsCancelPost(body: body);
  }

  ///
  @POST(path: '/booking/v1/bookings/actions/cancel', optionalBody: true)
  Future<chopper.Response<Booking>> _bookingV1BookingsActionsCancelPost({
    @Body() required CancelBookingRequest? body,
  });

  ///
  Future<chopper.Response<Booking>> bookingV1BookingsActionsReplacementsPost({
    required ReplaceBookingRequest? body,
  }) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _bookingV1BookingsActionsReplacementsPost(body: body);
  }

  ///
  @POST(path: '/booking/v1/bookings/actions/replacements', optionalBody: true)
  Future<chopper.Response<Booking>> _bookingV1BookingsActionsReplacementsPost({
    @Body() required ReplaceBookingRequest? body,
  });

  ///
  Future<chopper.Response<BookingsPage>> bookingV1BookingsOverdueGet() {
    generatedMapping.putIfAbsent(
      BookingsPage,
      () => BookingsPage.fromJsonFactory,
    );

    return _bookingV1BookingsOverdueGet();
  }

  ///
  @GET(path: '/booking/v1/bookings/overdue')
  Future<chopper.Response<BookingsPage>> _bookingV1BookingsOverdueGet();

  ///
  Future<chopper.Response<BookingsPage>> bookingV1BookingsSearchesPost({
    required SearchBookingsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      BookingsPage,
      () => BookingsPage.fromJsonFactory,
    );

    return _bookingV1BookingsSearchesPost(body: body);
  }

  ///
  @POST(path: '/booking/v1/bookings/searches', optionalBody: true)
  Future<chopper.Response<BookingsPage>> _bookingV1BookingsSearchesPost({
    @Body() required SearchBookingsRequest? body,
  });

  ///
  Future<chopper.Response<BookingsPage>> bookingV1BookingsSummaryGet() {
    generatedMapping.putIfAbsent(
      BookingsPage,
      () => BookingsPage.fromJsonFactory,
    );

    return _bookingV1BookingsSummaryGet();
  }

  ///
  @GET(path: '/booking/v1/bookings/summary')
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
      bookingId: bookingId,
      includeAdjacent: includeAdjacent,
    );
  }

  ///
  ///@param bookingId
  ///@param includeAdjacent
  @GET(path: '/booking/v1/bookings/{bookingId}')
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
  @PUT(path: '/booking/v1/bookings/{bookingId}', optionalBody: true)
  Future<chopper.Response<Booking>> _bookingV1BookingsBookingIdPut({
    @Path('bookingId') required String? bookingId,
    @Body() required UpdateBookingRequest? body,
  });

  ///Create a new vehicle
  Future<chopper.Response<Vehicle>> bookingV1VehiclesPost({
    required CreateVehicleRequest? body,
  }) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _bookingV1VehiclesPost(body: body);
  }

  ///Create a new vehicle
  @POST(path: '/booking/v1/vehicles', optionalBody: true)
  Future<chopper.Response<Vehicle>> _bookingV1VehiclesPost({
    @Body() required CreateVehicleRequest? body,
  });

  ///Update vehicle details
  Future<chopper.Response<Vehicle>> bookingV1VehiclesPut({
    required UpdateVehicleRequest? body,
  }) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _bookingV1VehiclesPut(body: body);
  }

  ///Update vehicle details
  @PUT(path: '/booking/v1/vehicles', optionalBody: true)
  Future<chopper.Response<Vehicle>> _bookingV1VehiclesPut({
    @Body() required UpdateVehicleRequest? body,
  });

  ///Get all clients, optionally filtered by name
  ///@param name Filter clients by name (LIKE search)
  Future<chopper.Response<List<Client>>> clientV1ClientsGet({String? name}) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _clientV1ClientsGet(name: name);
  }

  ///Get all clients, optionally filtered by name
  ///@param name Filter clients by name (LIKE search)
  @GET(path: '/client/v1/clients')
  Future<chopper.Response<List<Client>>> _clientV1ClientsGet({
    @Query('name') String? name,
  });

  ///
  ///@param clientId Client ID
  Future<chopper.Response<Client>> clientV1ClientsClientIdGet({
    required int? clientId,
  }) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _clientV1ClientsClientIdGet(clientId: clientId);
  }

  ///
  ///@param clientId Client ID
  @GET(path: '/client/v1/clients/{clientId}')
  Future<chopper.Response<Client>> _clientV1ClientsClientIdGet({
    @Path('clientId') required int? clientId,
  });

  ///Update a client
  ///@param clientId Client ID
  Future<chopper.Response<Client>> clientV1ClientsClientIdPut({
    required int? clientId,
    required UpdateClient? body,
  }) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _clientV1ClientsClientIdPut(clientId: clientId, body: body);
  }

  ///Update a client
  ///@param clientId Client ID
  @PUT(path: '/client/v1/clients/{clientId}', optionalBody: true)
  Future<chopper.Response<Client>> _clientV1ClientsClientIdPut({
    @Path('clientId') required int? clientId,
    @Body() required UpdateClient? body,
  });

  ///Delete a user from a client (admin)
  ///@param clientId Client ID
  ///@param userId User ID
  Future<chopper.Response<Client>> clientV1ClientsClientIdUsersUserIdDelete({
    required int? clientId,
    required int? userId,
  }) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _clientV1ClientsClientIdUsersUserIdDelete(
      clientId: clientId,
      userId: userId,
    );
  }

  ///Delete a user from a client (admin)
  ///@param clientId Client ID
  ///@param userId User ID
  @DELETE(path: '/client/v1/clients/{clientId}/users/{userId}')
  Future<chopper.Response<Client>> _clientV1ClientsClientIdUsersUserIdDelete({
    @Path('clientId') required int? clientId,
    @Path('userId') required int? userId,
  });

  ///Add a user to a client (admin)
  ///@param userId User ID
  ///@param clientId Client ID
  Future<chopper.Response<Client>> clientV1ClientsClientIdUsersUserIdPut({
    required int? userId,
    required int? clientId,
  }) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _clientV1ClientsClientIdUsersUserIdPut(
      userId: userId,
      clientId: clientId,
    );
  }

  ///Add a user to a client (admin)
  ///@param userId User ID
  ///@param clientId Client ID
  @PUT(path: '/client/v1/clients/{clientId}/users/{userId}', optionalBody: true)
  Future<chopper.Response<Client>> _clientV1ClientsClientIdUsersUserIdPut({
    @Path('userId') required int? userId,
    @Path('clientId') required int? clientId,
  });

  ///Get vehicles and groups for a client
  ///@param clientId Client ID
  ///@param date Date in RFC3339 format (default: current date)
  ///@param userId User ID (optional, to check if the user is a MainUser of the client)
  Future<chopper.Response<VehiclesAndGroupsResponse>>
  clientV1ClientsClientIdVehiclesGet({
    required int? clientId,
    String? date,
    String? userId,
  }) {
    generatedMapping.putIfAbsent(
      VehiclesAndGroupsResponse,
      () => VehiclesAndGroupsResponse.fromJsonFactory,
    );

    return _clientV1ClientsClientIdVehiclesGet(
      clientId: clientId,
      date: date,
      userId: userId,
    );
  }

  ///Get vehicles and groups for a client
  ///@param clientId Client ID
  ///@param date Date in RFC3339 format (default: current date)
  ///@param userId User ID (optional, to check if the user is a MainUser of the client)
  @GET(path: '/client/v1/clients/{clientId}/vehicles')
  Future<chopper.Response<VehiclesAndGroupsResponse>>
  _clientV1ClientsClientIdVehiclesGet({
    @Path('clientId') required int? clientId,
    @Query('date') String? date,
    @Query('userId') String? userId,
  });

  ///
  ///@param page
  Future<chopper.Response<ClientContractSummaryDtoApiPagedResponse>>
  contractV1ContractsGet({String? page}) {
    generatedMapping.putIfAbsent(
      ClientContractSummaryDtoApiPagedResponse,
      () => ClientContractSummaryDtoApiPagedResponse.fromJsonFactory,
    );

    return _contractV1ContractsGet(page: page);
  }

  ///
  ///@param page
  @GET(path: '/contract/v1/contracts')
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
    generatedMapping.putIfAbsent(
      ClientContractDtoApiDataResponse,
      () => ClientContractDtoApiDataResponse.fromJsonFactory,
    );

    return _contractV1ContractsClientsClientIdContractsContractIdGet(
      contractId: contractId,
      clientId: clientId,
    );
  }

  ///
  ///@param contractId
  ///@param clientId
  @GET(path: '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}')
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
    generatedMapping.putIfAbsent(
      ClientContractDtoApiDataResponse,
      () => ClientContractDtoApiDataResponse.fromJsonFactory,
    );

    return _contractV1ContractsClientsClientIdContractsContractIdCommitmentPost(
      contractId: contractId,
      clientId: clientId,
      body: body,
    );
  }

  ///
  ///@param contractId
  ///@param clientId
  @POST(
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
    generatedMapping.putIfAbsent(
      ChangeContractCommitmentHintsApiDataResponse,
      () => ChangeContractCommitmentHintsApiDataResponse.fromJsonFactory,
    );

    return _contractV1ContractsClientsClientIdContractsContractIdCommitmentHintsGet(
      contractId: contractId,
      clientId: clientId,
    );
  }

  ///
  ///@param contractId
  ///@param clientId
  @GET(
    path:
        '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}/commitment/hints',
  )
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
    generatedMapping.putIfAbsent(
      ClientContractDtoApiDataResponse,
      () => ClientContractDtoApiDataResponse.fromJsonFactory,
    );

    return _contractV1ContractsClientsClientIdContractsContractIdFormulaPost(
      contractId: contractId,
      clientId: clientId,
      body: body,
    );
  }

  ///
  ///@param contractId
  ///@param clientId
  @POST(
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
    generatedMapping.putIfAbsent(
      ChangeContractFormulaHintsApiDataResponse,
      () => ChangeContractFormulaHintsApiDataResponse.fromJsonFactory,
    );

    return _contractV1ContractsClientsClientIdContractsContractIdFormulaHintsGet(
      contractId: contractId,
      clientId: clientId,
    );
  }

  ///
  ///@param contractId
  ///@param clientId
  @GET(
    path:
        '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}/formula/hints',
  )
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
    generatedMapping.putIfAbsent(
      ClientContractDtoApiDataResponse,
      () => ClientContractDtoApiDataResponse.fromJsonFactory,
    );

    return _contractV1ContractsClientsClientIdContractsContractIdTerminatePost(
      contractId: contractId,
      clientId: clientId,
      body: body,
    );
  }

  ///
  ///@param contractId
  ///@param clientId
  @POST(
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
    generatedMapping.putIfAbsent(
      TerminateContractHintsApiDataResponse,
      () => TerminateContractHintsApiDataResponse.fromJsonFactory,
    );

    return _contractV1ContractsClientsClientIdContractsContractIdTerminateHintsGet(
      contractId: contractId,
      clientId: clientId,
    );
  }

  ///
  ///@param contractId
  ///@param clientId
  @GET(
    path:
        '/contract/v1/contracts/clients/{clientId}/contracts/{contractId}/terminate/hints',
  )
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
    generatedMapping.putIfAbsent(
      ClientContractDtoApiDataResponse,
      () => ClientContractDtoApiDataResponse.fromJsonFactory,
    );

    return _contractV1ContractsClientsClientIdDelegatedTrustDelegatedTrustClientIdPost(
      clientId: clientId,
      delegatedTrustClientId: delegatedTrustClientId,
      body: body,
    );
  }

  ///
  ///@param clientId
  ///@param delegatedTrustClientId
  @POST(
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
    generatedMapping.putIfAbsent(
      ClientContractSummaryDtoApiPagedResponse,
      () => ClientContractSummaryDtoApiPagedResponse.fromJsonFactory,
    );

    return _contractV1ContractsSearchPost(page: page, body: body);
  }

  ///
  ///@param page
  @POST(path: '/contract/v1/contracts/search', optionalBody: true)
  Future<chopper.Response<ClientContractSummaryDtoApiPagedResponse>>
  _contractV1ContractsSearchPost({
    @Query('page') String? page,
    @Body() required SearchClientContractsRequest? body,
  });

  ///Get invoices
  ///@param clientId Client ID
  Future<chopper.Response<InvoiceResponse>>
  invoiceV1ClientsClientIdInvoicesGet({required int? clientId}) {
    generatedMapping.putIfAbsent(
      InvoiceResponse,
      () => InvoiceResponse.fromJsonFactory,
    );

    return _invoiceV1ClientsClientIdInvoicesGet(clientId: clientId);
  }

  ///Get invoices
  ///@param clientId Client ID
  @GET(path: '/invoice/v1/clients/{clientId}/invoices')
  Future<chopper.Response<InvoiceResponse>>
  _invoiceV1ClientsClientIdInvoicesGet({
    @Path('clientId') required int? clientId,
  });

  ///Get invoice pdf
  ///@param clientId Client ID
  ///@param invoiceId Invoice ID
  Future<chopper.Response<String>>
  invoiceV1ClientsClientIdInvoicesInvoiceIdInvoicePdfGet({
    required int? clientId,
    required int? invoiceId,
  }) {
    return _invoiceV1ClientsClientIdInvoicesInvoiceIdInvoicePdfGet(
      clientId: clientId,
      invoiceId: invoiceId,
    );
  }

  ///Get invoice pdf
  ///@param clientId Client ID
  ///@param invoiceId Invoice ID
  @GET(path: '/invoice/v1/clients/{clientId}/invoices/{invoiceId}/invoice.pdf')
  Future<chopper.Response<String>>
  _invoiceV1ClientsClientIdInvoicesInvoiceIdInvoicePdfGet({
    @Path('clientId') required int? clientId,
    @Path('invoiceId') required int? invoiceId,
  });

  ///
  ///@param code
  ///@param state
  Future<chopper.Response> oauthCallbackGet({
    required String? code,
    required String? state,
  }) {
    return _oauthCallbackGet(code: code, state: state);
  }

  ///
  ///@param code
  ///@param state
  @GET(path: '/oauth/callback')
  Future<chopper.Response> _oauthCallbackGet({
    @Query('code') required String? code,
    @Query('state') required String? state,
  });

  ///Determines the price rates and billing details based on the booking parameters (vehicle, period)
  ///@param X-Client-Id Client ID
  ///@param vehicleId Vehicle ID
  ///@param start Start Date
  ///@param end End Date
  Future<chopper.Response<BillingPriceResponse>>
  pricingV1PricesBookingPriceGet({
    String? xClientId,
    required String? vehicleId,
    required DateTime? start,
    required DateTime? end,
  }) {
    generatedMapping.putIfAbsent(
      BillingPriceResponse,
      () => BillingPriceResponse.fromJsonFactory,
    );

    return _pricingV1PricesBookingPriceGet(
      xClientId: xClientId?.toString(),
      vehicleId: vehicleId,
      start: start,
      end: end,
    );
  }

  ///Determines the price rates and billing details based on the booking parameters (vehicle, period)
  ///@param X-Client-Id Client ID
  ///@param vehicleId Vehicle ID
  ///@param start Start Date
  ///@param end End Date
  @GET(path: '/pricing/v1/prices/booking-price')
  Future<chopper.Response<BillingPriceResponse>>
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
    generatedMapping.putIfAbsent(
      GetVehicleModelsRatesResponse,
      () => GetVehicleModelsRatesResponse.fromJsonFactory,
    );

    return _pricingV1RatesVehicleModelsGet(models: models);
  }

  ///Get the rates for vehicle models
  ///@param models Vehicle model IDs, separated by commas
  @GET(path: '/pricing/v1/rates/vehicle-models')
  Future<chopper.Response<GetVehicleModelsRatesResponse>>
  _pricingV1RatesVehicleModelsGet({@Query('models') String? models});

  ///Insert rates for vehicle models
  Future<chopper.Response<CreateVehicleModelsRatesResponse>>
  pricingV1RatesVehicleModelsPost({
    required CreateVehicleModelsRatesRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      CreateVehicleModelsRatesResponse,
      () => CreateVehicleModelsRatesResponse.fromJsonFactory,
    );

    return _pricingV1RatesVehicleModelsPost(body: body);
  }

  ///Insert rates for vehicle models
  @POST(path: '/pricing/v1/rates/vehicle-models', optionalBody: true)
  Future<chopper.Response<CreateVehicleModelsRatesResponse>>
  _pricingV1RatesVehicleModelsPost({
    @Body() required CreateVehicleModelsRatesRequest? body,
  });

  ///Deletes a single vehicle model rate
  ///@param rateId Rate ID
  Future<chopper.Response> pricingV1RatesVehicleModelsRateIdDelete({
    required String? rateId,
  }) {
    return _pricingV1RatesVehicleModelsRateIdDelete(rateId: rateId);
  }

  ///Deletes a single vehicle model rate
  ///@param rateId Rate ID
  @DELETE(path: '/pricing/v1/rates/vehicle-models/{rateId}')
  Future<chopper.Response> _pricingV1RatesVehicleModelsRateIdDelete({
    @Path('rateId') required String? rateId,
  });

  ///Get the rates for vehicles
  ///@param vehicles Vehicle IDs, separated by commas
  Future<chopper.Response<GetVehiclesRatesResponse>> pricingV1RatesVehiclesGet({
    String? vehicles,
  }) {
    generatedMapping.putIfAbsent(
      GetVehiclesRatesResponse,
      () => GetVehiclesRatesResponse.fromJsonFactory,
    );

    return _pricingV1RatesVehiclesGet(vehicles: vehicles);
  }

  ///Get the rates for vehicles
  ///@param vehicles Vehicle IDs, separated by commas
  @GET(path: '/pricing/v1/rates/vehicles')
  Future<chopper.Response<GetVehiclesRatesResponse>>
  _pricingV1RatesVehiclesGet({@Query('vehicles') String? vehicles});

  ///Insert rates for vehicles
  Future<chopper.Response<CreateVehiclesRatesResponse>>
  pricingV1RatesVehiclesPost({required CreateVehiclesRatesRequest? body}) {
    generatedMapping.putIfAbsent(
      CreateVehiclesRatesResponse,
      () => CreateVehiclesRatesResponse.fromJsonFactory,
    );

    return _pricingV1RatesVehiclesPost(body: body);
  }

  ///Insert rates for vehicles
  @POST(path: '/pricing/v1/rates/vehicles', optionalBody: true)
  Future<chopper.Response<CreateVehiclesRatesResponse>>
  _pricingV1RatesVehiclesPost({
    @Body() required CreateVehiclesRatesRequest? body,
  });

  ///Deletes a single vehicle rate
  ///@param rateId Rate ID
  Future<chopper.Response> pricingV1RatesVehiclesRateIdDelete({
    required String? rateId,
  }) {
    return _pricingV1RatesVehiclesRateIdDelete(rateId: rateId);
  }

  ///Deletes a single vehicle rate
  ///@param rateId Rate ID
  @DELETE(path: '/pricing/v1/rates/vehicles/{rateId}')
  Future<chopper.Response> _pricingV1RatesVehiclesRateIdDelete({
    @Path('rateId') required String? rateId,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<BatteryStatus>>
  telematicsV1BatteryDatabaseVehicleIdGet({required String? vehicleId}) {
    generatedMapping.putIfAbsent(
      BatteryStatus,
      () => BatteryStatus.fromJsonFactory,
    );

    return _telematicsV1BatteryDatabaseVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @GET(path: '/telematics/v1/battery/database/{vehicleId}')
  Future<chopper.Response<BatteryStatus>>
  _telematicsV1BatteryDatabaseVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<BatteryStatus>> telematicsV1BatteryVehicleIdGet({
    required String? vehicleId,
  }) {
    generatedMapping.putIfAbsent(
      BatteryStatus,
      () => BatteryStatus.fromJsonFactory,
    );

    return _telematicsV1BatteryVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @GET(path: '/telematics/v1/battery/{vehicleId}')
  Future<chopper.Response<BatteryStatus>> _telematicsV1BatteryVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param key
  Future<chopper.Response<ConfigValue>> telematicsV1ConfigValueKeyGet({
    required String? key,
  }) {
    generatedMapping.putIfAbsent(
      ConfigValue,
      () => ConfigValue.fromJsonFactory,
    );

    return _telematicsV1ConfigValueKeyGet(key: key);
  }

  ///
  ///@param key
  @GET(path: '/telematics/v1/configValue/{key}')
  Future<chopper.Response<ConfigValue>> _telematicsV1ConfigValueKeyGet({
    @Path('key') required String? key,
  });

  ///
  ///@param key
  Future<chopper.Response<ConfigValue>> telematicsV1ConfigValueKeyPut({
    required String? key,
    required StoreConfigValueRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ConfigValue,
      () => ConfigValue.fromJsonFactory,
    );

    return _telematicsV1ConfigValueKeyPut(key: key, body: body);
  }

  ///
  ///@param key
  @PUT(path: '/telematics/v1/configValue/{key}', optionalBody: true)
  Future<chopper.Response<ConfigValue>> _telematicsV1ConfigValueKeyPut({
    @Path('key') required String? key,
    @Body() required StoreConfigValueRequest? body,
  });

  ///
  Future<chopper.Response> telematicsV1DebugProducerPost() {
    return _telematicsV1DebugProducerPost();
  }

  ///
  @POST(path: '/telematics/v1/debug-producer', optionalBody: true)
  Future<chopper.Response> _telematicsV1DebugProducerPost();

  ///
  Future<chopper.Response<List<TelematicsDevice>>> telematicsV1DevicesGet() {
    generatedMapping.putIfAbsent(
      TelematicsDevice,
      () => TelematicsDevice.fromJsonFactory,
    );

    return _telematicsV1DevicesGet();
  }

  ///
  @GET(path: '/telematics/v1/devices')
  Future<chopper.Response<List<TelematicsDevice>>> _telematicsV1DevicesGet();

  ///
  Future<chopper.Response> telematicsV1DevicesPost({
    required TelematicsRequest? body,
  }) {
    return _telematicsV1DevicesPost(body: body);
  }

  ///
  @POST(path: '/telematics/v1/devices', optionalBody: true)
  Future<chopper.Response> _telematicsV1DevicesPost({
    @Body() required TelematicsRequest? body,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response> telematicsV1DevicesVehicleIdDelete({
    required String? vehicleId,
  }) {
    return _telematicsV1DevicesVehicleIdDelete(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @DELETE(path: '/telematics/v1/devices/{vehicleId}')
  Future<chopper.Response> _telematicsV1DevicesVehicleIdDelete({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<TelematicsDevice>> telematicsV1DevicesVehicleIdGet({
    required String? vehicleId,
  }) {
    generatedMapping.putIfAbsent(
      TelematicsDevice,
      () => TelematicsDevice.fromJsonFactory,
    );

    return _telematicsV1DevicesVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @GET(path: '/telematics/v1/devices/{vehicleId}')
  Future<chopper.Response<TelematicsDevice>> _telematicsV1DevicesVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response> telematicsV1DevicesVehicleIdPut({
    required String? vehicleId,
    required UpdateTelematicsRequest? body,
  }) {
    return _telematicsV1DevicesVehicleIdPut(vehicleId: vehicleId, body: body);
  }

  ///
  ///@param vehicleId
  @PUT(path: '/telematics/v1/devices/{vehicleId}', optionalBody: true)
  Future<chopper.Response> _telematicsV1DevicesVehicleIdPut({
    @Path('vehicleId') required String? vehicleId,
    @Body() required UpdateTelematicsRequest? body,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response> telematicsV1ImmobilizerVehicleIdPut({
    required String? vehicleId,
    required ChangeLockRequest? body,
  }) {
    return _telematicsV1ImmobilizerVehicleIdPut(
      vehicleId: vehicleId,
      body: body,
    );
  }

  ///
  ///@param vehicleId
  @PUT(path: '/telematics/v1/immobilizer/{vehicleId}', optionalBody: true)
  Future<chopper.Response> _telematicsV1ImmobilizerVehicleIdPut({
    @Path('vehicleId') required String? vehicleId,
    @Body() required ChangeLockRequest? body,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<LocationValue>> telematicsV1LocationVehicleIdGet({
    required String? vehicleId,
  }) {
    generatedMapping.putIfAbsent(
      LocationValue,
      () => LocationValue.fromJsonFactory,
    );

    return _telematicsV1LocationVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @GET(path: '/telematics/v1/location/{vehicleId}')
  Future<chopper.Response<LocationValue>> _telematicsV1LocationVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<VehicleLockStatus>>
  telematicsV1LockStatusVehicleIdGet({required String? vehicleId}) {
    generatedMapping.putIfAbsent(
      VehicleLockStatus,
      () => VehicleLockStatus.fromJsonFactory,
    );

    return _telematicsV1LockStatusVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @GET(path: '/telematics/v1/lock-status/{vehicleId}')
  Future<chopper.Response<VehicleLockStatus>>
  _telematicsV1LockStatusVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response> telematicsV1LockVehicleIdPut({
    required String? vehicleId,
    required ChangeLockRequest? body,
  }) {
    return _telematicsV1LockVehicleIdPut(vehicleId: vehicleId, body: body);
  }

  ///
  ///@param vehicleId
  @PUT(path: '/telematics/v1/lock/{vehicleId}', optionalBody: true)
  Future<chopper.Response> _telematicsV1LockVehicleIdPut({
    @Path('vehicleId') required String? vehicleId,
    @Body() required ChangeLockRequest? body,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<Mileage>> telematicsV1MileageVehicleIdGet({
    required String? vehicleId,
  }) {
    generatedMapping.putIfAbsent(Mileage, () => Mileage.fromJsonFactory);

    return _telematicsV1MileageVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @GET(path: '/telematics/v1/mileage/{vehicleId}')
  Future<chopper.Response<Mileage>> _telematicsV1MileageVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  Future<chopper.Response<TelematicsProviderPage>> telematicsV1ProvidersGet() {
    generatedMapping.putIfAbsent(
      TelematicsProviderPage,
      () => TelematicsProviderPage.fromJsonFactory,
    );

    return _telematicsV1ProvidersGet();
  }

  ///
  @GET(path: '/telematics/v1/providers')
  Future<chopper.Response<TelematicsProviderPage>> _telematicsV1ProvidersGet();

  ///
  ///@param providerId
  Future<chopper.Response<List<ProviderTelematics>>>
  telematicsV1ProvidersProviderIdDevicesGet({required String? providerId}) {
    generatedMapping.putIfAbsent(
      ProviderTelematics,
      () => ProviderTelematics.fromJsonFactory,
    );

    return _telematicsV1ProvidersProviderIdDevicesGet(providerId: providerId);
  }

  ///
  ///@param providerId
  @GET(path: '/telematics/v1/providers/{providerId}/devices')
  Future<chopper.Response<List<ProviderTelematics>>>
  _telematicsV1ProvidersProviderIdDevicesGet({
    @Path('providerId') required String? providerId,
  });

  ///
  Future<chopper.Response> telematicsV1RefreshTeslaTokenPost() {
    return _telematicsV1RefreshTeslaTokenPost();
  }

  ///
  @POST(path: '/telematics/v1/refresh-tesla-token', optionalBody: true)
  Future<chopper.Response> _telematicsV1RefreshTeslaTokenPost();

  ///
  ///@param vehicleId
  Future<chopper.Response> telematicsV1TeslaLocationVehicleIdPost({
    required String? vehicleId,
  }) {
    return _telematicsV1TeslaLocationVehicleIdPost(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @POST(path: '/telematics/v1/tesla-location/{vehicleId}', optionalBody: true)
  Future<chopper.Response> _telematicsV1TeslaLocationVehicleIdPost({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response> telematicsV1TeslaTokenVehicleIdPut({
    required String? vehicleId,
    required StoreTeslaTokensRequest? body,
  }) {
    return _telematicsV1TeslaTokenVehicleIdPut(
      vehicleId: vehicleId,
      body: body,
    );
  }

  ///
  ///@param vehicleId
  @PUT(path: '/telematics/v1/tesla/token/{vehicleId}', optionalBody: true)
  Future<chopper.Response> _telematicsV1TeslaTokenVehicleIdPut({
    @Path('vehicleId') required String? vehicleId,
    @Body() required StoreTeslaTokensRequest? body,
  });

  ///
  Future<chopper.Response<List<TelematicsTracking>>>
  telematicsV1TrackingsSearchesPost({
    required SearchTelematicsTrackingRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      TelematicsTracking,
      () => TelematicsTracking.fromJsonFactory,
    );

    return _telematicsV1TrackingsSearchesPost(body: body);
  }

  ///
  @POST(path: '/telematics/v1/trackings/searches', optionalBody: true)
  Future<chopper.Response<List<TelematicsTracking>>>
  _telematicsV1TrackingsSearchesPost({
    @Body() required SearchTelematicsTrackingRequest? body,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<TelematicsVehicleUsage>>
  telematicsV1UsageVehicleIdPut({
    required String? vehicleId,
    required ChangeVehicleUsageRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      TelematicsVehicleUsage,
      () => TelematicsVehicleUsage.fromJsonFactory,
    );

    return _telematicsV1UsageVehicleIdPut(vehicleId: vehicleId, body: body);
  }

  ///
  ///@param vehicleId
  @PUT(path: '/telematics/v1/usage/{vehicleId}', optionalBody: true)
  Future<chopper.Response<TelematicsVehicleUsage>>
  _telematicsV1UsageVehicleIdPut({
    @Path('vehicleId') required String? vehicleId,
    @Body() required ChangeVehicleUsageRequest? body,
  });

  ///
  Future<chopper.Response> telematicsV1WebhooksFlespiPost({
    required FlespiCallbackRequest? body,
  }) {
    return _telematicsV1WebhooksFlespiPost(body: body);
  }

  ///
  @POST(path: '/telematics/v1/webhooks/flespi', optionalBody: true)
  Future<chopper.Response> _telematicsV1WebhooksFlespiPost({
    @Body() required FlespiCallbackRequest? body,
  });

  ///Create a new client (company with VAT nr. or private person)
  Future<chopper.Response<Client>> userV1ClientsPost({
    required CreateClient? body,
  }) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _userV1ClientsPost(body: body);
  }

  ///Create a new client (company with VAT nr. or private person)
  @POST(path: '/user/v1/clients', optionalBody: true)
  Future<chopper.Response<Client>> _userV1ClientsPost({
    @Body() required CreateClient? body,
  });

  ///Get information about a client you are the MainUser of
  ///@param clientId Client ID
  Future<chopper.Response<Client>> userV1ClientsClientIdGet({
    required int? clientId,
  }) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _userV1ClientsClientIdGet(clientId: clientId);
  }

  ///Get information about a client you are the MainUser of
  ///@param clientId Client ID
  @GET(path: '/user/v1/clients/{clientId}')
  Future<chopper.Response<Client>> _userV1ClientsClientIdGet({
    @Path('clientId') required int? clientId,
  });

  ///Delete a user from a client
  ///@param clientId Client ID
  ///@param userEmail User Email
  Future<chopper.Response<Client>> userV1ClientsClientIdUsersUserEmailDelete({
    required int? clientId,
    required String? userEmail,
  }) {
    generatedMapping.putIfAbsent(Client, () => Client.fromJsonFactory);

    return _userV1ClientsClientIdUsersUserEmailDelete(
      clientId: clientId,
      userEmail: userEmail,
    );
  }

  ///Delete a user from a client
  ///@param clientId Client ID
  ///@param userEmail User Email
  @DELETE(path: '/user/v1/clients/{clientId}/users/{userEmail}')
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
      clientId: clientId,
      userEmail: userEmail,
    );
  }

  ///Add a user to a client
  ///@param clientId Client ID
  ///@param userEmail User Email
  @PUT(
    path: '/user/v1/clients/{clientId}/users/{userEmail}',
    optionalBody: true,
  )
  Future<chopper.Response<Client>> _userV1ClientsClientIdUsersUserEmailPut({
    @Path('clientId') required int? clientId,
    @Path('userEmail') required String? userEmail,
  });

  ///Get an uploaded document from the user
  ///@param filename File name
  Future<chopper.Response<String>> userV1DocumentsFilenameGet({
    required String? filename,
  }) {
    return _userV1DocumentsFilenameGet(filename: filename);
  }

  ///Get an uploaded document from the user
  ///@param filename File name
  @GET(path: '/user/v1/documents/{filename}')
  Future<chopper.Response<String>> _userV1DocumentsFilenameGet({
    @Path('filename') required String? filename,
  });

  ///Requests a password reset email to be sent
  Future<chopper.Response> userV1PasswordResetsPost({
    required PasswordReset? body,
  }) {
    return _userV1PasswordResetsPost(body: body);
  }

  ///Requests a password reset email to be sent
  @POST(path: '/user/v1/password-resets', optionalBody: true)
  Future<chopper.Response> _userV1PasswordResetsPost({
    @Body() required PasswordReset? body,
  });

  ///Get all users
  Future<chopper.Response<List<ContractUser>>> userV1UsersGet() {
    generatedMapping.putIfAbsent(
      ContractUser,
      () => ContractUser.fromJsonFactory,
    );

    return _userV1UsersGet();
  }

  ///Get all users
  @GET(path: '/user/v1/users')
  Future<chopper.Response<List<ContractUser>>> _userV1UsersGet();

  ///Initiates user signup
  Future<chopper.Response> userV1UsersPost({required SignupUser? body}) {
    return _userV1UsersPost(body: body);
  }

  ///Initiates user signup
  @POST(path: '/user/v1/users', optionalBody: true)
  Future<chopper.Response> _userV1UsersPost({
    @Body() required SignupUser? body,
  });

  ///
  Future<chopper.Response> userV1UsersDevicesPut({
    required RegisterDeviceRequest? body,
  }) {
    return _userV1UsersDevicesPut(body: body);
  }

  ///
  @PUT(path: '/user/v1/users/devices', optionalBody: true)
  Future<chopper.Response> _userV1UsersDevicesPut({
    @Body() required RegisterDeviceRequest? body,
  });

  ///Get information about your own user
  Future<chopper.Response<ContractUser>> userV1UsersMeGet() {
    generatedMapping.putIfAbsent(
      ContractUser,
      () => ContractUser.fromJsonFactory,
    );

    return _userV1UsersMeGet();
  }

  ///Get information about your own user
  @GET(path: '/user/v1/users/me')
  Future<chopper.Response<ContractUser>> _userV1UsersMeGet();

  ///Get the onboarding status of your own user
  Future<chopper.Response<Onboarding>> userV1UsersOnboardingGet() {
    generatedMapping.putIfAbsent(Onboarding, () => Onboarding.fromJsonFactory);

    return _userV1UsersOnboardingGet();
  }

  ///Get the onboarding status of your own user
  @GET(path: '/user/v1/users/onboarding')
  Future<chopper.Response<Onboarding>> _userV1UsersOnboardingGet();

  ///Upload your own documents
  Future<chopper.Response<Onboarding>> userV1UsersOnboardingDocumentsPut({
    MultipartFile? backDriverLicense,
    MultipartFile? backId,
    MultipartFile? damageStatistic,
    MultipartFile? frontDriverLicense,
    MultipartFile? frontId,
    MultipartFile? selfie,
  }) {
    generatedMapping.putIfAbsent(Onboarding, () => Onboarding.fromJsonFactory);

    return _userV1UsersOnboardingDocumentsPut(
      backDriverLicense: backDriverLicense,
      backId: backId,
      damageStatistic: damageStatistic,
      frontDriverLicense: frontDriverLicense,
      frontId: frontId,
      selfie: selfie,
    );
  }

  ///Upload your own documents
  @PUT(path: '/user/v1/users/onboarding/documents', optionalBody: true)
  @Multipart()
  Future<chopper.Response<Onboarding>> _userV1UsersOnboardingDocumentsPut({
    @PartFile() MultipartFile? backDriverLicense,
    @PartFile() MultipartFile? backId,
    @PartFile() MultipartFile? damageStatistic,
    @PartFile() MultipartFile? frontDriverLicense,
    @PartFile() MultipartFile? frontId,
    @PartFile() MultipartFile? selfie,
  });

  ///Upload your legal information
  Future<chopper.Response<Onboarding>> userV1UsersOnboardingLegalPut({
    required OnboardingLegal? body,
  }) {
    generatedMapping.putIfAbsent(Onboarding, () => Onboarding.fromJsonFactory);

    return _userV1UsersOnboardingLegalPut(body: body);
  }

  ///Upload your legal information
  @PUT(path: '/user/v1/users/onboarding/legal', optionalBody: true)
  Future<chopper.Response<Onboarding>> _userV1UsersOnboardingLegalPut({
    @Body() required OnboardingLegal? body,
  });

  ///Update your information
  Future<chopper.Response<Onboarding>> userV1UsersOnboardingPersonalPut({
    required OnboardingPersonal? body,
  }) {
    generatedMapping.putIfAbsent(Onboarding, () => Onboarding.fromJsonFactory);

    return _userV1UsersOnboardingPersonalPut(body: body);
  }

  ///Update your information
  @PUT(path: '/user/v1/users/onboarding/personal', optionalBody: true)
  Future<chopper.Response<Onboarding>> _userV1UsersOnboardingPersonalPut({
    @Body() required OnboardingPersonal? body,
  });

  ///Register or verify your phone number
  Future<chopper.Response<Onboarding>> userV1UsersOnboardingPhonePut({
    required OnboardingPhone? body,
  }) {
    generatedMapping.putIfAbsent(Onboarding, () => Onboarding.fromJsonFactory);

    return _userV1UsersOnboardingPhonePut(body: body);
  }

  ///Register or verify your phone number
  @PUT(path: '/user/v1/users/onboarding/phone', optionalBody: true)
  Future<chopper.Response<Onboarding>> _userV1UsersOnboardingPhonePut({
    @Body() required OnboardingPhone? body,
  });

  ///Search users based on first and last name
  ///@param firstNameHint First name
  ///@param lastNameHint Last name
  ///@param phoneNumber Phone number
  Future<chopper.Response<List<ContractUser>>> userV1UsersSearchesGet({
    String? firstNameHint,
    String? lastNameHint,
    String? phoneNumber,
  }) {
    generatedMapping.putIfAbsent(
      ContractUser,
      () => ContractUser.fromJsonFactory,
    );

    return _userV1UsersSearchesGet(
      firstNameHint: firstNameHint,
      lastNameHint: lastNameHint,
      phoneNumber: phoneNumber,
    );
  }

  ///Search users based on first and last name
  ///@param firstNameHint First name
  ///@param lastNameHint Last name
  ///@param phoneNumber Phone number
  @GET(path: '/user/v1/users/searches')
  Future<chopper.Response<List<ContractUser>>> _userV1UsersSearchesGet({
    @Query('firstNameHint') String? firstNameHint,
    @Query('lastNameHint') String? lastNameHint,
    @Query('phoneNumber') String? phoneNumber,
  });

  ///Get an uploaded document from the user by admin
  ///@param userGuid User Guid
  ///@param filename File name
  Future<chopper.Response<String>> userV1UsersUserGuidDocumentsFilenameGet({
    required String? userGuid,
    required String? filename,
  }) {
    return _userV1UsersUserGuidDocumentsFilenameGet(
      userGuid: userGuid,
      filename: filename,
    );
  }

  ///Get an uploaded document from the user by admin
  ///@param userGuid User Guid
  ///@param filename File name
  @GET(path: '/user/v1/users/{userGuid}/documents/{filename}')
  Future<chopper.Response<String>> _userV1UsersUserGuidDocumentsFilenameGet({
    @Path('userGuid') required String? userGuid,
    @Path('filename') required String? filename,
  });

  ///
  ///@param userId
  Future<chopper.Response> userV1UsersUserIdDelete({required String? userId}) {
    return _userV1UsersUserIdDelete(userId: userId);
  }

  ///
  ///@param userId
  @DELETE(path: '/user/v1/users/{userId}')
  Future<chopper.Response> _userV1UsersUserIdDelete({
    @Path('userId') required String? userId,
  });

  ///
  ///@param userId
  Future<chopper.Response<User>> userV1UsersUserIdGet({
    required String? userId,
  }) {
    generatedMapping.putIfAbsent(User, () => User.fromJsonFactory);

    return _userV1UsersUserIdGet(userId: userId);
  }

  ///
  ///@param userId
  @GET(path: '/user/v1/users/{userId}')
  Future<chopper.Response<User>> _userV1UsersUserIdGet({
    @Path('userId') required String? userId,
  });

  ///Get a user by ID (admin)
  ///@param userId User ID
  Future<chopper.Response<ContractUser>> userV1UsersUserIdDetailsGet({
    required int? userId,
  }) {
    generatedMapping.putIfAbsent(
      ContractUser,
      () => ContractUser.fromJsonFactory,
    );

    return _userV1UsersUserIdDetailsGet(userId: userId);
  }

  ///Get a user by ID (admin)
  ///@param userId User ID
  @GET(path: '/user/v1/users/{userId}/details')
  Future<chopper.Response<ContractUser>> _userV1UsersUserIdDetailsGet({
    @Path('userId') required int? userId,
  });

  ///Requests a resend of the verification email that is part of the user signup process
  Future<chopper.Response> userV1VerificationEmailResendsPost({
    required ResendVerificationEmail? body,
  }) {
    return _userV1VerificationEmailResendsPost(body: body);
  }

  ///Requests a resend of the verification email that is part of the user signup process
  @POST(path: '/user/v1/verification-email-resends', optionalBody: true)
  Future<chopper.Response> _userV1VerificationEmailResendsPost({
    @Body() required ResendVerificationEmail? body,
  });

  ///
  Future<chopper.Response<VehicleGroupPage>> vehicleGroupV1VehicleGroupsGet() {
    generatedMapping.putIfAbsent(
      VehicleGroupPage,
      () => VehicleGroupPage.fromJsonFactory,
    );

    return _vehicleGroupV1VehicleGroupsGet();
  }

  ///
  @GET(path: '/vehicle-group/v1/vehicle-groups')
  Future<chopper.Response<VehicleGroupPage>> _vehicleGroupV1VehicleGroupsGet();

  ///
  Future<chopper.Response<VehicleGroup>> vehicleGroupV1VehicleGroupsPost({
    required CreateVehicleGroupRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      VehicleGroup,
      () => VehicleGroup.fromJsonFactory,
    );

    return _vehicleGroupV1VehicleGroupsPost(body: body);
  }

  ///
  @POST(path: '/vehicle-group/v1/vehicle-groups', optionalBody: true)
  Future<chopper.Response<VehicleGroup>> _vehicleGroupV1VehicleGroupsPost({
    @Body() required CreateVehicleGroupRequest? body,
  });

  ///
  ///@param vehicleGroupId
  Future<chopper.Response> vehicleGroupV1VehicleGroupsVehicleGroupIdDelete({
    required String? vehicleGroupId,
  }) {
    return _vehicleGroupV1VehicleGroupsVehicleGroupIdDelete(
      vehicleGroupId: vehicleGroupId,
    );
  }

  ///
  ///@param vehicleGroupId
  @DELETE(path: '/vehicle-group/v1/vehicle-groups/{vehicleGroupId}')
  Future<chopper.Response> _vehicleGroupV1VehicleGroupsVehicleGroupIdDelete({
    @Path('vehicleGroupId') required String? vehicleGroupId,
  });

  ///
  ///@param vehicleGroupId
  Future<chopper.Response<VehicleGroup>>
  vehicleGroupV1VehicleGroupsVehicleGroupIdGet({
    required String? vehicleGroupId,
  }) {
    generatedMapping.putIfAbsent(
      VehicleGroup,
      () => VehicleGroup.fromJsonFactory,
    );

    return _vehicleGroupV1VehicleGroupsVehicleGroupIdGet(
      vehicleGroupId: vehicleGroupId,
    );
  }

  ///
  ///@param vehicleGroupId
  @GET(path: '/vehicle-group/v1/vehicle-groups/{vehicleGroupId}')
  Future<chopper.Response<VehicleGroup>>
  _vehicleGroupV1VehicleGroupsVehicleGroupIdGet({
    @Path('vehicleGroupId') required String? vehicleGroupId,
  });

  ///
  ///@param vehicleGroupId
  Future<chopper.Response>
  vehicleGroupV1VehicleGroupsVehicleGroupIdActionsAddVehiclesPut({
    required String? vehicleGroupId,
    required AddVehiclesToGroupRequest? body,
  }) {
    return _vehicleGroupV1VehicleGroupsVehicleGroupIdActionsAddVehiclesPut(
      vehicleGroupId: vehicleGroupId,
      body: body,
    );
  }

  ///
  ///@param vehicleGroupId
  @PUT(
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
      vehicleGroupId: vehicleGroupId,
      body: body,
    );
  }

  ///
  ///@param vehicleGroupId
  @POST(
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
      vehicleGroupId: vehicleGroupId,
      vehicleId: vehicleId,
    );
  }

  ///
  ///@param vehicleGroupId
  ///@param vehicleId
  @DELETE(
    path:
        '/vehicle-group/v1/vehicle-groups/{vehicleGroupId}/vehicles/{vehicleId}',
  )
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
      vehicleGroupId: vehicleGroupId,
      vehicleId: vehicleId,
    );
  }

  ///
  ///@param vehicleGroupId
  ///@param vehicleId
  @PUT(
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
  Future<chopper.Response<VehicleGroupPage>>
  vehicleGroupV1VehiclesVehicleIdVehicleGroupsGet({
    required String? vehicleId,
  }) {
    generatedMapping.putIfAbsent(
      VehicleGroupPage,
      () => VehicleGroupPage.fromJsonFactory,
    );

    return _vehicleGroupV1VehiclesVehicleIdVehicleGroupsGet(
      vehicleId: vehicleId,
    );
  }

  ///
  ///@param vehicleId
  @GET(path: '/vehicle-group/v1/vehicles/{vehicleId}/vehicle-groups')
  Future<chopper.Response<VehicleGroupPage>>
  _vehicleGroupV1VehiclesVehicleIdVehicleGroupsGet({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<VehicleUsage>>
  vehicleUsageV1ActiveUsageVehicleVehicleIdGet({required String? vehicleId}) {
    generatedMapping.putIfAbsent(
      VehicleUsage,
      () => VehicleUsage.fromJsonFactory,
    );

    return _vehicleUsageV1ActiveUsageVehicleVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @GET(path: '/vehicle-usage/v1/active-usage/vehicle/{vehicleId}')
  Future<chopper.Response<VehicleUsage>>
  _vehicleUsageV1ActiveUsageVehicleVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  Future<chopper.Response<VehicleUsage>> vehicleUsageV1EndPut({
    required EndVehicleUsageRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      VehicleUsage,
      () => VehicleUsage.fromJsonFactory,
    );

    return _vehicleUsageV1EndPut(body: body);
  }

  ///
  @PUT(path: '/vehicle-usage/v1/end', optionalBody: true)
  Future<chopper.Response<VehicleUsage>> _vehicleUsageV1EndPut({
    @Body() required EndVehicleUsageRequest? body,
  });

  ///
  Future<chopper.Response<VehicleUsage>> vehicleUsageV1StartPut({
    required StartVehicleUsageRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      VehicleUsage,
      () => VehicleUsage.fromJsonFactory,
    );

    return _vehicleUsageV1StartPut(body: body);
  }

  ///
  @PUT(path: '/vehicle-usage/v1/start', optionalBody: true)
  Future<chopper.Response<VehicleUsage>> _vehicleUsageV1StartPut({
    @Body() required StartVehicleUsageRequest? body,
  });

  ///
  Future<chopper.Response<VehicleUsagePage>> vehicleUsageV1VehicleUsagesGet() {
    generatedMapping.putIfAbsent(
      VehicleUsagePage,
      () => VehicleUsagePage.fromJsonFactory,
    );

    return _vehicleUsageV1VehicleUsagesGet();
  }

  ///
  @GET(path: '/vehicle-usage/v1/vehicle-usages')
  Future<chopper.Response<VehicleUsagePage>> _vehicleUsageV1VehicleUsagesGet();

  ///
  ///@param vehicleUsageId
  Future<chopper.Response<VehicleUsage>> vehicleUsageV1VehicleUsageIdGet({
    required String? vehicleUsageId,
  }) {
    generatedMapping.putIfAbsent(
      VehicleUsage,
      () => VehicleUsage.fromJsonFactory,
    );

    return _vehicleUsageV1VehicleUsageIdGet(vehicleUsageId: vehicleUsageId);
  }

  ///
  ///@param vehicleUsageId
  @GET(path: '/vehicle-usage/v1/{vehicleUsageId}')
  Future<chopper.Response<VehicleUsage>> _vehicleUsageV1VehicleUsageIdGet({
    @Path('vehicleUsageId') required String? vehicleUsageId,
  });

  ///
  ///@param vehicleUsageId
  Future<chopper.Response<VehicleUsage>> vehicleUsageV1VehicleUsageIdStatusPut({
    required String? vehicleUsageId,
    required VehicleUsageUpdateStatusRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      VehicleUsage,
      () => VehicleUsage.fromJsonFactory,
    );

    return _vehicleUsageV1VehicleUsageIdStatusPut(
      vehicleUsageId: vehicleUsageId,
      body: body,
    );
  }

  ///
  ///@param vehicleUsageId
  @PUT(path: '/vehicle-usage/v1/{vehicleUsageId}/status', optionalBody: true)
  Future<chopper.Response<VehicleUsage>>
  _vehicleUsageV1VehicleUsageIdStatusPut({
    @Path('vehicleUsageId') required String? vehicleUsageId,
    @Body() required VehicleUsageUpdateStatusRequest? body,
  });

  ///
  Future<chopper.Response<BodyStylePage>> vehicleV1BodyStylesGet() {
    generatedMapping.putIfAbsent(
      BodyStylePage,
      () => BodyStylePage.fromJsonFactory,
    );

    return _vehicleV1BodyStylesGet();
  }

  ///
  @GET(path: '/vehicle/v1/body-styles')
  Future<chopper.Response<BodyStylePage>> _vehicleV1BodyStylesGet();

  ///
  Future<chopper.Response<BodyStyle>> vehicleV1BodyStylesPost({
    required CreateBodyStyleRequest? body,
  }) {
    generatedMapping.putIfAbsent(BodyStyle, () => BodyStyle.fromJsonFactory);

    return _vehicleV1BodyStylesPost(body: body);
  }

  ///
  @POST(path: '/vehicle/v1/body-styles', optionalBody: true)
  Future<chopper.Response<BodyStyle>> _vehicleV1BodyStylesPost({
    @Body() required CreateBodyStyleRequest? body,
  });

  ///
  Future<chopper.Response<VehicleBrandPage>> vehicleV1BrandsGet() {
    generatedMapping.putIfAbsent(
      VehicleBrandPage,
      () => VehicleBrandPage.fromJsonFactory,
    );

    return _vehicleV1BrandsGet();
  }

  ///
  @GET(path: '/vehicle/v1/brands')
  Future<chopper.Response<VehicleBrandPage>> _vehicleV1BrandsGet();

  ///
  Future<chopper.Response<VehicleBrand>> vehicleV1BrandsPost({
    required VehicleBrand? body,
  }) {
    generatedMapping.putIfAbsent(
      VehicleBrand,
      () => VehicleBrand.fromJsonFactory,
    );

    return _vehicleV1BrandsPost(body: body);
  }

  ///
  @POST(path: '/vehicle/v1/brands', optionalBody: true)
  Future<chopper.Response<VehicleBrand>> _vehicleV1BrandsPost({
    @Body() required VehicleBrand? body,
  });

  ///
  Future<chopper.Response<VehicleFilterEnums>> vehicleV1FiltersGet() {
    generatedMapping.putIfAbsent(
      VehicleFilterEnums,
      () => VehicleFilterEnums.fromJsonFactory,
    );

    return _vehicleV1FiltersGet();
  }

  ///
  @GET(path: '/vehicle/v1/filters')
  Future<chopper.Response<VehicleFilterEnums>> _vehicleV1FiltersGet();

  ///
  Future<chopper.Response<VehicleModelPage>> vehicleV1ModelsGet() {
    generatedMapping.putIfAbsent(
      VehicleModelPage,
      () => VehicleModelPage.fromJsonFactory,
    );

    return _vehicleV1ModelsGet();
  }

  ///
  @GET(path: '/vehicle/v1/models')
  Future<chopper.Response<VehicleModelPage>> _vehicleV1ModelsGet();

  ///
  Future<chopper.Response<VehicleModel>> vehicleV1ModelsPost({
    required CreateVehicleModelRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      VehicleModel,
      () => VehicleModel.fromJsonFactory,
    );

    return _vehicleV1ModelsPost(body: body);
  }

  ///
  @POST(path: '/vehicle/v1/models', optionalBody: true)
  Future<chopper.Response<VehicleModel>> _vehicleV1ModelsPost({
    @Body() required CreateVehicleModelRequest? body,
  });

  ///
  Future<chopper.Response<VehiclesPage>> vehicleV1MyVehiclesGet() {
    generatedMapping.putIfAbsent(
      VehiclesPage,
      () => VehiclesPage.fromJsonFactory,
    );

    return _vehicleV1MyVehiclesGet();
  }

  ///
  @GET(path: '/vehicle/v1/my-vehicles')
  Future<chopper.Response<VehiclesPage>> _vehicleV1MyVehiclesGet();

  ///
  Future<chopper.Response<MyAvailableVehiclesPage>>
  vehicleV1MyVehiclesAvailableGet() {
    generatedMapping.putIfAbsent(
      MyAvailableVehiclesPage,
      () => MyAvailableVehiclesPage.fromJsonFactory,
    );

    return _vehicleV1MyVehiclesAvailableGet();
  }

  ///
  @GET(path: '/vehicle/v1/my-vehicles/available')
  Future<chopper.Response<MyAvailableVehiclesPage>>
  _vehicleV1MyVehiclesAvailableGet();

  ///
  Future<chopper.Response<VehiclesPage>> vehicleV1SearchPost({
    required SearchVehiclesRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      VehiclesPage,
      () => VehiclesPage.fromJsonFactory,
    );

    return _vehicleV1SearchPost(body: body);
  }

  ///
  @POST(path: '/vehicle/v1/search', optionalBody: true)
  Future<chopper.Response<VehiclesPage>> _vehicleV1SearchPost({
    @Body() required SearchVehiclesRequest? body,
  });

  ///
  ///@param activeOnly
  ///@param temporaryRebased
  Future<chopper.Response<VehiclesPage>> vehicleV1VehiclesGet({
    bool? activeOnly,
    bool? temporaryRebased,
  }) {
    generatedMapping.putIfAbsent(
      VehiclesPage,
      () => VehiclesPage.fromJsonFactory,
    );

    return _vehicleV1VehiclesGet(
      activeOnly: activeOnly,
      temporaryRebased: temporaryRebased,
    );
  }

  ///
  ///@param activeOnly
  ///@param temporaryRebased
  @GET(path: '/vehicle/v1/vehicles')
  Future<chopper.Response<VehiclesPage>> _vehicleV1VehiclesGet({
    @Query('activeOnly') bool? activeOnly,
    @Query('temporaryRebased') bool? temporaryRebased,
  });

  ///
  Future<chopper.Response<Vehicle>> vehicleV1VehiclesPost({
    required CreateVehicleRequest? body,
  }) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _vehicleV1VehiclesPost(body: body);
  }

  ///
  @POST(path: '/vehicle/v1/vehicles', optionalBody: true)
  Future<chopper.Response<Vehicle>> _vehicleV1VehiclesPost({
    @Body() required CreateVehicleRequest? body,
  });

  ///
  Future<chopper.Response<Vehicle>> vehicleV1VehiclesPut({
    required UpdateVehicleRequest? body,
  }) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _vehicleV1VehiclesPut(body: body);
  }

  ///
  @PUT(path: '/vehicle/v1/vehicles', optionalBody: true)
  Future<chopper.Response<Vehicle>> _vehicleV1VehiclesPut({
    @Body() required UpdateVehicleRequest? body,
  });

  ///
  ///@param vehicleId
  Future<chopper.Response<Vehicle>> vehicleV1VehiclesVehicleIdGet({
    required String? vehicleId,
  }) {
    generatedMapping.putIfAbsent(Vehicle, () => Vehicle.fromJsonFactory);

    return _vehicleV1VehiclesVehicleIdGet(vehicleId: vehicleId);
  }

  ///
  ///@param vehicleId
  @GET(path: '/vehicle/v1/vehicles/{vehicleId}')
  Future<chopper.Response<Vehicle>> _vehicleV1VehiclesVehicleIdGet({
    @Path('vehicleId') required String? vehicleId,
  });

  ///
  ///@param vehicleId
  ///@param isFavorite
  Future<chopper.Response> vehicleV1VehiclesVehicleIdFavoriteIsFavoritePut({
    required String? vehicleId,
    required bool? isFavorite,
  }) {
    return _vehicleV1VehiclesVehicleIdFavoriteIsFavoritePut(
      vehicleId: vehicleId,
      isFavorite: isFavorite,
    );
  }

  ///
  ///@param vehicleId
  ///@param isFavorite
  @PUT(
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
      VehicleBaseLocationPage,
      () => VehicleBaseLocationPage.fromJsonFactory,
    );

    return _vehiclebaselocationV1VehiclebaselocationsGet();
  }

  ///
  @GET(path: '/vehiclebaselocation/v1/vehiclebaselocations')
  Future<chopper.Response<VehicleBaseLocationPage>>
  _vehiclebaselocationV1VehiclebaselocationsGet();

  ///
  Future<chopper.Response<VehicleBaseLocation>>
  vehiclebaselocationV1VehiclebaselocationsPost({
    required VehicleBaseLocation? body,
  }) {
    generatedMapping.putIfAbsent(
      VehicleBaseLocation,
      () => VehicleBaseLocation.fromJsonFactory,
    );

    return _vehiclebaselocationV1VehiclebaselocationsPost(body: body);
  }

  ///
  @POST(
    path: '/vehiclebaselocation/v1/vehiclebaselocations',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleBaseLocation>>
  _vehiclebaselocationV1VehiclebaselocationsPost({
    @Body() required VehicleBaseLocation? body,
  });

  ///
  ///@param id
  Future<chopper.Response> vehiclebaselocationV1VehiclebaselocationsIdDelete({
    required String? id,
  }) {
    return _vehiclebaselocationV1VehiclebaselocationsIdDelete(id: id);
  }

  ///
  ///@param id
  @DELETE(path: '/vehiclebaselocation/v1/vehiclebaselocations/{id}')
  Future<chopper.Response> _vehiclebaselocationV1VehiclebaselocationsIdDelete({
    @Path('id') required String? id,
  });

  ///
  ///@param id
  Future<chopper.Response<VehicleBaseLocation>>
  vehiclebaselocationV1VehiclebaselocationsIdPut({
    required String? id,
    required VehicleBaseLocation? body,
  }) {
    generatedMapping.putIfAbsent(
      VehicleBaseLocation,
      () => VehicleBaseLocation.fromJsonFactory,
    );

    return _vehiclebaselocationV1VehiclebaselocationsIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @PUT(
    path: '/vehiclebaselocation/v1/vehiclebaselocations/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<VehicleBaseLocation>>
  _vehiclebaselocationV1VehiclebaselocationsIdPut({
    @Path('id') required String? id,
    @Body() required VehicleBaseLocation? body,
  });

  ///Create a new vehicle contract
  Future<chopper.Response<ClientContractVehicleRecord>>
  vehiclecontractV1VehiclecontractsPost({
    required CreateVehicleContract? body,
  }) {
    generatedMapping.putIfAbsent(
      ClientContractVehicleRecord,
      () => ClientContractVehicleRecord.fromJsonFactory,
    );

    return _vehiclecontractV1VehiclecontractsPost(body: body);
  }

  ///Create a new vehicle contract
  @POST(path: '/vehiclecontract/v1/vehiclecontracts', optionalBody: true)
  Future<chopper.Response<ClientContractVehicleRecord>>
  _vehiclecontractV1VehiclecontractsPost({
    @Body() required CreateVehicleContract? body,
  });

  ///Get all vehicle contracts for a specific client
  ///@param clientId Client ID
  Future<chopper.Response<VehicleContractResponse>>
  vehiclecontractV1VehiclecontractsClientsClientIdGet({
    required int? clientId,
  }) {
    generatedMapping.putIfAbsent(
      VehicleContractResponse,
      () => VehicleContractResponse.fromJsonFactory,
    );

    return _vehiclecontractV1VehiclecontractsClientsClientIdGet(
      clientId: clientId,
    );
  }

  ///Get all vehicle contracts for a specific client
  ///@param clientId Client ID
  @GET(path: '/vehiclecontract/v1/vehiclecontracts/clients/{clientId}')
  Future<chopper.Response<VehicleContractResponse>>
  _vehiclecontractV1VehiclecontractsClientsClientIdGet({
    @Path('clientId') required int? clientId,
  });

  ///
  Future<chopper.Response<Issue>> webApiIssueV1IssuesPost({
    required CreateIssueRequest? body,
  }) {
    generatedMapping.putIfAbsent(Issue, () => Issue.fromJsonFactory);

    return _webApiIssueV1IssuesPost(body: body);
  }

  ///
  @POST(path: '/web-api/issue/v1/issues', optionalBody: true)
  Future<chopper.Response<Issue>> _webApiIssueV1IssuesPost({
    @Body() required CreateIssueRequest? body,
  });

  ///
  Future<chopper.Response<IssuePage>> webApiIssueV1IssuesSearchesPost({
    required SearchIssuesRequest? body,
  }) {
    generatedMapping.putIfAbsent(IssuePage, () => IssuePage.fromJsonFactory);

    return _webApiIssueV1IssuesSearchesPost(body: body);
  }

  ///
  @POST(path: '/web-api/issue/v1/issues/searches', optionalBody: true)
  Future<chopper.Response<IssuePage>> _webApiIssueV1IssuesSearchesPost({
    @Body() required SearchIssuesRequest? body,
  });

  ///
  ///@param issueNumber
  Future<chopper.Response<Issue>> webApiIssueV1IssuesIssueNumberGet({
    required int? issueNumber,
  }) {
    generatedMapping.putIfAbsent(Issue, () => Issue.fromJsonFactory);

    return _webApiIssueV1IssuesIssueNumberGet(issueNumber: issueNumber);
  }

  ///
  ///@param issueNumber
  @GET(path: '/web-api/issue/v1/issues/{issueNumber}')
  Future<chopper.Response<Issue>> _webApiIssueV1IssuesIssueNumberGet({
    @Path('issueNumber') required int? issueNumber,
  });

  ///
  ///@param issueNumber
  Future<chopper.Response<Issue>> webApiIssueV1IssuesIssueNumberPost({
    required int? issueNumber,
    required UpdateIssueRequest? body,
  }) {
    generatedMapping.putIfAbsent(Issue, () => Issue.fromJsonFactory);

    return _webApiIssueV1IssuesIssueNumberPost(
      issueNumber: issueNumber,
      body: body,
    );
  }

  ///
  ///@param issueNumber
  @POST(path: '/web-api/issue/v1/issues/{issueNumber}', optionalBody: true)
  Future<chopper.Response<Issue>> _webApiIssueV1IssuesIssueNumberPost({
    @Path('issueNumber') required int? issueNumber,
    @Body() required UpdateIssueRequest? body,
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
    chopper.Response response,
  ) async {
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
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
