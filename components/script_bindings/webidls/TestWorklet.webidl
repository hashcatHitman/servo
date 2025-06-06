/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/. */

// skip-unless CARGO_FEATURE_TESTBINDING

// This interface is entirely internal to Servo, and should not be accessible to
// web pages.

[Pref="dom_worklet_testing_enabled", Exposed=(Window)]
interface TestWorklet {
   [Throws] constructor();
   [NewObject] Promise<undefined> addModule(USVString moduleURL, optional WorkletOptions options = {});
   DOMString? lookup(DOMString key);
};
