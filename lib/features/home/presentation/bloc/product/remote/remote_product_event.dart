abstract class RemoteProductEvent {
  const RemoteProductEvent();
}

class GetProduct extends RemoteProductEvent {
  final String? page;
  const GetProduct(this.page);
}
