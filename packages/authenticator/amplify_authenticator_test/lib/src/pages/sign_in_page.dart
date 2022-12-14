// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator_test/src/pages/authenticator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Sign In Page Object
class SignInPage extends AuthenticatorPage {
  SignInPage({required super.tester});

  @override
  Finder get usernameField => find.byKey(keyUsernameSignInFormField);
  Finder get passwordField => find.byKey(keyPasswordSignInFormField);
  Finder get signInButton => find.byKey(keySignInButton);
  Finder get forgotPasswordButton => find.byKey(keyForgotPasswordButton);
  Finder get confirmSignInField => find.byKey(keyCodeConfirmSignInFormField);
  Finder get signUpTab => find.descendant(
        of: find.byType(TabBar),
        matching: find.byKey(const ValueKey(AuthenticatorStep.signUp)),
      );

  /// When I sign in with "username" and "password"
  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    await enterUsername(username);
    await enterPassword(password);
    await submitSignIn();
  }

  /// When I type a new "username"
  Future<void> enterUsername(String username) async {
    await tester.ensureVisible(usernameField);
    await tester.enterText(usernameField, username);
    await tester.pumpAndSettle();
  }

  /// When I type my password
  Future<void> enterPassword(String password) async {
    await tester.ensureVisible(passwordField);
    await tester.enterText(passwordField, password);
    await tester.pumpAndSettle();
  }

  /// When I click the "Sign In" button
  Future<void> submitSignIn() async {
    await tester.ensureVisible(signInButton);
    await tester.tap(signInButton);
    await tester.pumpAndSettle();
  }

  /// When I navigate to the "Sign Up" step.
  Future<void> navigateToSignUp() async {
    await tester.tap(signUpTab);
    await tester.pumpAndSettle();
  }

  /// When I tap the "Forgot Password" button.
  Future<void> submitForgotPassword() async {
    await tester.tap(forgotPasswordButton);
    await tester.pumpAndSettle();
  }
}
