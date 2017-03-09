/*
 * Package : Cbor
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 12/12/2016
 * Copyright :  S.Hamblett
 */

part of cbor;

class ListenerStack extends Listener {
  ItemStack _stack = new ItemStack();

  void onInteger(int value) {}

  void onBytes(typed.Uint8Buffer data, int size) {}

  void onString(String str) {}

  void onArray(int size) {}

  void onArrayElement(int value) {}

  void onMap(int size) {}

  void onTag(int tag) {}

  void onSpecial(int code) {}

  void onSpecialFloat(double value) {}

  void onBool(bool state) {}

  void onNull() {}

  void onUndefined() {}

  void onError(String error) {}

  void onExtraInteger(int value, int sign) {}

  void onExtraTag(int tag) {}

  void onExtraSpecial(int tag) {}

  void onIndefinate(String text) {}

  void _append(DartItem item) {
    if (_stack.size() == 0) {
      // Empty stack, straight add
      _stack.push(item);
    } else {
      final DartItem entry = _stack.pop();

      /// If its complete push it back and push
      /// our item
      if (entry.complete) {
        _stack.push(entry);
        _stack.push(item);
      } else {
        /// Map, Array etc.
      }
    }
  }
}