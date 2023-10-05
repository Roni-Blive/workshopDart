enum OrderStatus {
  open(10),
  confirmed(20),
  completed(30),
  cancelled(40);

  final int progress;
  const OrderStatus(this.progress);

  //Overriding the operators to compare one enum with another
  bool operator <(OrderStatus status) => progress < status.progress;
  bool operator >(OrderStatus status) => progress > status.progress;

  String get nome {
    switch (this) {
      case OrderStatus.open:
        return 'Opened Order';
      case OrderStatus.confirmed:
        return 'Confirmed Order';
      case OrderStatus.completed:
        return 'Completed Order';
      case OrderStatus.cancelled:
        return 'Cancelled Order';
    }
  }
}