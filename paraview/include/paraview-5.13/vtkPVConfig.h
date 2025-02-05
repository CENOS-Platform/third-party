// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-License-Identifier: BSD-3-Clause

#ifndef vtkPVConfig_h
#define vtkPVConfig_h

#ifdef _MSC_VER
#pragma message(                                                                                   \
  "vtkPVConfig.h is deprecated. Please include `vtkPVVersion.h`, `pqQtConfig.h`, or `pqQtWidgetConfig.h` instead.")
#else
#warning                                                                                           \
  "vtkPVConfig.h is deprecated. Please include `vtkPVVersion.h`, `pqQtConfig.h`, or `pqQtWidgetConfig.h` instead."
#endif

#ifndef PARAVIEW_USE_QTHELP
/* #undef PARAVIEW_USE_QTHELP */
#endif

#ifndef PARAVIEW_USE_QTWEBENGINE
#define PARAVIEW_USE_QTWEBENGINE 0
#endif

#include "vtkPVVersion.h"

#endif
