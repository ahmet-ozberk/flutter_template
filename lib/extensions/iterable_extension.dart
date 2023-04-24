extension IterableExtension<E> on Iterable<E> {
  List<T> mapIndexed<T>(T Function(E value, int index) f) {
    var i = 0;
    return map((e) => f(e, i++)).toList();
  }

  List<E> whereAdd(bool? condition, E? value) {
    if (condition == null) {
      if (value != null) {
        return [...this, value];
      } else {
        return [...this];
      }
    } else if (condition) {
      return [...this, value as E];
    } else {
      return [...this];
    }
  }
}
