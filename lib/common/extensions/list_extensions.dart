extension ListOfExtensions<T> on T {
  List<T> toList({bool growable = false}) => List.of([this], growable: growable);
}
