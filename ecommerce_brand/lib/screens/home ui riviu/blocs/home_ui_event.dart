abstract class ProductEvent {}

class ProductScreenTab1Fetched extends ProductEvent {
  int? page = 1;
  ProductScreenTab1Fetched({this.page});
}

class ProductScreenTab2Fetched extends ProductEvent {
  int? page = 1;
  ProductScreenTab2Fetched({this.page});
}

class ProductScreenTab3Fetched extends ProductEvent {
  int? page = 1;
  ProductScreenTab3Fetched({this.page});
}

// class ScrollUp extends ProductEvent {}

// class ScrollDown extends ProductEvent {}

// class ScrollUpQuick extends ProductEvent {}



// class GetTabsElement extends HomeUIEvent {
//   int index;
//   GetTabsElement({required this.index}); 
// }

// class TurnOnNestedAppBar extends HomeUIEvent{}
// class TurnOfNestedAppBar extends HomeUIEvent{}