
#ifndef VTKIOH5RAGE_EXPORT_H
#define VTKIOH5RAGE_EXPORT_H

#ifdef VTKIOH5RAGE_STATIC_DEFINE
#  define VTKIOH5RAGE_EXPORT
#  define VTKIOH5RAGE_NO_EXPORT
#else
#  ifndef VTKIOH5RAGE_EXPORT
#    ifdef IOH5Rage_EXPORTS
        /* We are building this library */
#      define VTKIOH5RAGE_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKIOH5RAGE_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKIOH5RAGE_NO_EXPORT
#    define VTKIOH5RAGE_NO_EXPORT 
#  endif
#endif

#ifndef VTKIOH5RAGE_DEPRECATED
#  define VTKIOH5RAGE_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKIOH5RAGE_DEPRECATED_EXPORT
#  define VTKIOH5RAGE_DEPRECATED_EXPORT VTKIOH5RAGE_EXPORT VTKIOH5RAGE_DEPRECATED
#endif

#ifndef VTKIOH5RAGE_DEPRECATED_NO_EXPORT
#  define VTKIOH5RAGE_DEPRECATED_NO_EXPORT VTKIOH5RAGE_NO_EXPORT VTKIOH5RAGE_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKIOH5RAGE_NO_DEPRECATED
#    define VTKIOH5RAGE_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkIOH5RageModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKIOH5RAGE_EXPORT_H */
