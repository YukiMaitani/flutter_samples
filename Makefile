w:
	flutter pub get
	flutter packages pub run build_runner watch --delete-conflicting-outputs

clean:
	flutter clean
	flutter pub get
build:
	flutter pub get
	flutter packages pub run build_runner build --delete-conflicting-outputs
rel:
	flutter run --release