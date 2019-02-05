class ChatKitResponse {
  String id;
  String name;
  String avatarUrl;
  var customData;
  String createdAt;
  String updatedAt;

  ChatKitResponse.fromApiResponse(Map<String, dynamic> apiResponse) {}

//  @override
//  String toString() {
//    return 'id: ${this.id}, name: ${this.name}, avatarUrl: ${this.avatarUrl},';
//  }
}
