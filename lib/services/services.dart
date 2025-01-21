import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:wordhoard/firebase_options.dart';
import 'package:wordhoard/services/time.dart';

const clientId =
    '504232284948-uq2441opkkmufs5s5ahnu1uab8u1rnn2.apps.googleusercontent.com';

class Services {
  late final FirebaseAuth firebaseAuth;
  late final FirebaseFirestore firebaseFirestore;
  late final TimeService timeService;

  Future<void> init() async {
    final firebaseApp = await _initFirebase();
    firebaseAuth = FirebaseAuth.instanceFor(app: firebaseApp);
    firebaseFirestore = FirebaseFirestore.instance;
    await _configureFirebaseUiAuth();

    timeService = TimeService();
  }

  Future<FirebaseApp> _initFirebase() async {
    return Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<void> _configureFirebaseUiAuth() async {
    FirebaseUIAuth.configureProviders([GoogleProvider(clientId: clientId)]);
  }
}
