### 0.21.1

Various small improvements

## 0.21.0










feature: add platform-safe integer detection for NSNumber and ObjC dependency loader header

* add public MulleObjCDeps+MulleObjCMathFoundation header/implementation so dependent libraries can declare loader dependencies
* NSNumber+Math: improve detection whether double/long double represent long long on Windows and cosmopolitan using isfinite/round and LLONG range checks to avoid incorrect integer classification
* update reflect metadata to register NSNumber Math dependency
