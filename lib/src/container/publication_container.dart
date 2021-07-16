// Copyright (c) 2021 Mantano. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:mno_shared_dart/mediatype.dart';
import 'package:mno_shared_dart/publication.dart';

import 'container.dart';

/// Temporary solution to migrate to [Publication.get] while ensuring backward compatibility with
/// [Container].
class PublicationContainer extends Container {
  final Publication publication;
  final String path;
  final MediaType mediaType;
  @override
  final Drm drm;

  PublicationContainer({this.publication, this.path, this.mediaType, this.drm});

  @override
  RootFile get rootFile =>
      RootFile(rootPath: path, mimetype: mediaType.toString());
}
