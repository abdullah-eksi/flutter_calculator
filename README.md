

# Flutter Calculator

Bu proje, Flutter kullanılarak geliştirilmiş bir hesap makinesi uygulamasıdır. Uygulama, temel hesaplama işlevlerinin yanı sıra bazı gelişmiş özellikler de sunmaktadır. 

## İçindekiler

- [Gereksinimler](#gereksinimler)
- [Kurulum](#kurulum)
- [Kullanım](#kullanım)
- [Fonksiyonlar ve Özellikler](#fonksiyonlar-ve-özellikler)
- [Dosya Yapısı](#dosya-yapısı)
- [Yapımcı](#yapımcı)

## Gereksinimler

- Flutter 3.0.0 veya üzeri
- Dart 2.12.0 veya üzeri
- `math_expressions` paketi

## Kurulum

1. **Flutter SDK'sını Yükleyin**: [Flutter'ın Resmi Sitesinden](https://flutter.dev/docs/get-started/install) Flutter SDK'sını yükleyin.

2. **Projeyi Klonlayın**:
    ```bash
    git clone https://github.com/abdullah-eksi/flutter_calculator.git
    cd flutter_calculator
    ```

3. **Bağımlılıkları Yükleyin**:
    ```bash
    flutter pub get
    ```

4. **Uygulamayı Çalıştırın**:
    ```bash
    flutter run
    ```

## Kullanım

Uygulama, temel matematiksel işlemleri gerçekleştirmek için kullanıcı arayüzü sağlar. Kullanıcılar şu işlemleri gerçekleştirebilir:

- Toplama
- Çıkarma
- Çarpma
- Bölme
- Yüzde hesaplama
- Onluk ve kesirli sayılar ile işlemler
- Geri al (silme) ve tüm ifadeyi temizleme

## Fonksiyonlar ve Özellikler

### Temel Fonksiyonlar

- **Toplama (+)**: İki sayıyı toplar.
- **Çıkarma (-)**: İki sayı arasındaki farkı hesaplar.
- **Çarpma (x)**: İki sayıyı çarpar.
- **Bölme (÷)**: İki sayıyı böler.
- **Yüzde (%)**: Bir sayının yüzdesini hesaplar.

### Özel Fonksiyonlar

- **Geri Al (⌫)**: Son karakteri siler.
- **Temizle (C)**: Tüm ifadeyi temizler.
- **Hesapla (=)**: İfade sonucunu hesaplar ve görüntüler.

## Dosya Yapısı

### `main.dart`

Ana uygulama dosyasıdır. `MyApp` sınıfını içerir ve `CalculatorScreen` widget'ını başlatır.

### `calculator_screen.dart`

Hesap makinesinin kullanıcı arayüzünü ve iş mantığını tanımlar. 

- **_CalculatorScreenState**: Kullanıcı etkileşimlerine yanıt verir ve hesaplama işlevselliğini sağlar.
- **_onButtonPressed**: Düğmelere tıklama olaylarını işler ve hesaplama yapar.
- **_buildButtonGrid**: Hesap makinesinin düğme ızgarasını oluşturur.

### `calculator_button.dart`

Hesap makinesi düğmelerini temsil eden widget'tır. Düğme metnini ve stilini belirler.

### `button_row.dart`

Bir dizi düğmeyi yatay olarak hizalar ve düzenler.

