// Copyright (c) 2017, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
//import 'package:http/browser_client.dart';
import 'package:http/http.dart';

import 'package:tta/app_component.dart';
import 'package:tta/in_memory_data_service.dart';

void main() {
  bootstrap(AppComponent, [
    provide(Client, useClass: InMemoryDataService)
    //provide(BrowserClient, useFactory: () => new BrowserClient(), deps: [])
  ]);
}
