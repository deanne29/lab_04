
# LOGD – Debugging Record

## Bug 1: MyApp is not a class

- Date: 8 November 2026
- Symptom: Flutter analyze reported that MyApp was not a class in widget_test.dart.
- Cause: The default Flutter test still referenced the original MyApp class.
- Fix: Updated widget_test.dart to use PizzaStoreApp.
- Evidence: flutter analyze completed with no issues.

## Bug 2: Image assets not found

- Date: 8 November 2026
- Symptom: Food images did not display correctly.
- Cause: Flutter could not initially locate the declared image assets.
- Fix: Checked image locations and configured the assets directory in pubspec.yaml.
- Evidence: All three food images displayed correctly in the app.
