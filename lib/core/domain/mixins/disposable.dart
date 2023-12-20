import 'dart:async';

abstract mixin class Disposable {
  final List<StreamSubscription<dynamic>> _subscriptions =
      <StreamSubscription<dynamic>>[];

  void disposeAll() {
    for (final StreamSubscription<dynamic> subscription in _subscriptions) {
      subscription.cancel();
    }
  }

  void addSubscription(StreamSubscription<dynamic> subscription) {
    _subscriptions.add(subscription);
  }
}

extension StreamExtension on StreamSubscription<dynamic> {
  void dispose(Disposable disposable) {
    disposable.addSubscription(this);
  }
}
