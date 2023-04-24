import 'dart:developer';

import 'package:flutter/material.dart';

extension DeveloperExtension on Object? {
  void get logger {
    log(toString(), name: 'GrockLogger => ');
  }

  void get printer {
    print(toString());
  }

  void get debugger {
    debugPrint(toString());
  }

  void get debuggerStack {
    debugPrintStack(label: toString());
  }

  void get debuggerDump {
    debugDumpApp();
  }

  void get debuggerDumpRenderTree {
    debugDumpRenderTree();
  }

  void get debuggerDumpLayerTree {
    debugDumpLayerTree();
  }
}
