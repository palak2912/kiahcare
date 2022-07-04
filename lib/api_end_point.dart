class ApiEndPoint {

  static const API_END_POINT = ""; //"""api-vcura-v2.azurewebsites.net";
  static const USER_PROFILE_IMAGE_PATH = ""; //"""api-vcura-v2.azurewebsites.net";
  static const OFFER_IMAGE_PATH = ""; //"api-vcura-v2.azurewebsites.net";

  Uri getHTTPUri(String url) {
    return Uri.https(API_END_POINT, url);
    // return Uri.parse(API_END_POINT+url);
  }

  String getUriParts(String uriParts) {
    return '/api/$uriParts';
  }
}
