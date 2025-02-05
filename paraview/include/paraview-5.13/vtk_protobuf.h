// SPDX-FileCopyrightText: Copyright (c) Kitware Inc.
// SPDX-License-Identifier: BSD-3-Clause
#ifndef vtk_protobuf_h
#define vtk_protobuf_h

/* Use the protobuf library configured for ParaView.  */
#define VTK_MODULE_USE_EXTERNAL_ParaView_protobuf 0

#if VTK_MODULE_USE_EXTERNAL_ParaView_protobuf
# include <google/protobuf/message.h>
#else
# include <vtkprotobuf/src/google/protobuf/message.h>
#endif

#endif
