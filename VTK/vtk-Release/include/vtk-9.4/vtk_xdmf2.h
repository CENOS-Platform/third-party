// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause
#ifndef vtk_xdmf2_h
#define vtk_xdmf2_h

/* Use the xdmf2 library configured for VTK.  */
#define VTK_MODULE_USE_EXTERNAL_vtkxdmf2 0

#if VTK_MODULE_USE_EXTERNAL_vtkxdmf2
#else
#define VTKXDMF2_HEADER(x)  <vtkxdmf2/libsrc/x>
#endif

#endif
