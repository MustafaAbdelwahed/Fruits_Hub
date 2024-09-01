abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  // factory ServerFailure.fromDioExeption(dioException dioException) {
  //   switch (dioException.type) {
  //     case DioExceptionType.connectionTimeout:
  //       return ServerFailure(
  //         "Connection timeout with ApiServer",
  //       );

  //     case DioExceptionType.sendTimeout:
  //       return ServerFailure(
  //         "Send timeout with ApiServer",
  //       );

  //     case DioExceptionType.receiveTimeout:
  //       return ServerFailure(
  //         "Receive timeout with ApiServer",
  //       );

  //     case DioExceptionType.badCertificate:
  //       return ServerFailure(
  //         "Bad certificate with ApiServer",
  //       );

  //     case DioExceptionType.badResponse:
  //       return ServerFailure.fromResponse(
  //         dioException.response!.statusCode!,
  //         dioException.response!,
  //       );

  //     case DioExceptionType.cancel:
  //       return ServerFailure(
  //         "Cancel with ApiServer",
  //       );

  //     case DioExceptionType.connectionError:
  //       return ServerFailure(
  //         "Connection error with ApiServer",
  //       );

  //     case DioExceptionType.unknown:
  //       if (dioException.message!.contains("Failed host lookup")) {
  //         return ServerFailure(
  //           "Failed host lookup with ApiServer",
  //         );
  //       } else if (dioException.message!.contains("SocketException")) {
  //         return ServerFailure(
  //           "SocketException with ApiServer",
  //         );
  //       }
  //       return ServerFailure(
  //         "Unexpected error with ApiServer",
  //       );

  //     default:
  //       return ServerFailure(
  //         "something went wrong, try again later",
  //       );
  //   }
  // }
  // factory ServerFailure.fromResponse(int statesCode, dynamic response) {
  //   if (statesCode == 400 || statesCode == 401 || statesCode == 403) {
  //     return ServerFailure(response["message"]);
  //   } else if (statesCode == 404) {
  //     return ServerFailure("Your request not found");
  //   } else if (statesCode == 500) {
  //     return ServerFailure("Internal server error, try again later");
  //   } else {
  //     return ServerFailure("something went wrong, try again later");
  //   }
  // }
}
