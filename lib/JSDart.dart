import 'package:js/js.dart';
import 'package:location_web/JSCSS2Properties.dart';

@JS()
@staticInterop
class JSElement {}

extension JSElementExtension on JSElement {
  external List<JSElement> get children;

  external JSElement tag(String tag);

  external set id(String value);

  external String get id;

  external void addEventListener(String type, Function listener);
}

@JS()
@staticInterop
class JSHTMLElement extends JSElement {}

extension JSHTMLElementExtension on JSHTMLElement {
  external set draggable(bool newValue);

  external JSCSS2Properties get style;
}

@JS()
@staticInterop
class JSHTMLInputElement extends JSHTMLElement {}

extension JSHTMLInputElementExtension on JSHTMLInputElement {
  external set type(String newValue);

  external String get type;

  external set multiple(bool value);

  external set accept(String value);

  external List<JSFile> get files;

  external void addEventListener(String type, Function listener);

  external void click();
}

@JS('document.querySelector')
external JSElement? querySelector(Object obj);

@JS("window.removeEventListener")
external void removeEventListener(String type, Function listener);

@JS("window.addEventListener")
external void addEventListener(String type, Function listener);

@JS()
@staticInterop
class JSInputElement {
  external factory JSInputElement();
}

@JS()
@staticInterop
class JsBlob {}

extension JsBlobExtension on JsBlob {
  external JsBlob slice(int start, int end);
}

@JS()
@staticInterop
class JSFile implements JsBlob {
  external factory JSFile();
}

extension JSFileExtension on JSFile {
  external String get name;

  external int get size;

  external JSFileReader get reader;
}

@JS()
@staticInterop
class JSFileReader implements JsBlob {
  external factory JSFileReader();
}

extension JSFileReaderExtension on JSFileReader {
  external void readAsDataUrl(JSFile file);

  external void readAsArrayBuffer(JsBlob file);

  external dynamic get result;

  external void addEventListener(String type, Function listener);
}

@JS('document.createElement')
external JSElement createElement(String obj);

JSHTMLInputElement createFileUploadInputElement() {
  var element = createElement('input') as JSHTMLInputElement;
  element.type = 'file';
  return element;
}
