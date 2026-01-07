// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-License-Identifier: BSD-3-Clause

#ifndef vtkPVVersion_h
#define vtkPVVersion_h

#include "vtkPVVersionQuick.h"

#define PARAVIEW_VERSION_PATCH 0
#define PARAVIEW_VERSION_FULL "6.0.0"

#define PARAVIEW_VERSION_NUMBER                                                                         \
  PARAVIEW_VERSION_CHECK(PARAVIEW_VERSION_MAJOR, PARAVIEW_VERSION_MINOR, PARAVIEW_VERSION_PATCH)

#endif
