import 'dart:js_interop';

/// JavaScript interoperability for language
@JS('navigator.language')
external JSString get navigatorLanguage;

/// JavaScript interoperability for languages
@JS('navigator.languages')
external JSArray<JSString> get navigatorLanguages;

/// Convert [navigatorLanguage] to dart String
String getBrowserLocale() {
  return navigatorLanguage.toDart;
}

/// Convert [navigatorLanguages] to dart List<String>
List<String> getBrowserLocales() {
  return navigatorLanguages.toDart.map((e) => e.toDart).toList();
}
