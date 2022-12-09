import 'apiConnection.dart';

class UserData{
  Future<dynamic> getInformation() async {
    ApiConnection apiConnection = new ApiConnection();
    var weatherData = await apiConnection.getData();
    return weatherData;
  }
}