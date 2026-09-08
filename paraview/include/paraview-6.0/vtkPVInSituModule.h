
#ifndef VTKPVINSITU_EXPORT_H
#define VTKPVINSITU_EXPORT_H

#ifdef VTKPVINSITU_STATIC_DEFINE
#  define VTKPVINSITU_EXPORT
#  define VTKPVINSITU_NO_EXPORT
#else
#  ifndef VTKPVINSITU_EXPORT
#    ifdef InSitu_EXPORTS
        /* We are building this library */
#      define VTKPVINSITU_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKPVINSITU_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKPVINSITU_NO_EXPORT
#    define VTKPVINSITU_NO_EXPORT 
#  endif
#endif

#ifndef VTKPVINSITU_DEPRECATED
#  define VTKPVINSITU_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKPVINSITU_DEPRECATED_EXPORT
#  define VTKPVINSITU_DEPRECATED_EXPORT VTKPVINSITU_EXPORT VTKPVINSITU_DEPRECATED
#endif

#ifndef VTKPVINSITU_DEPRECATED_NO_EXPORT
#  define VTKPVINSITU_DEPRECATED_NO_EXPORT VTKPVINSITU_NO_EXPORT VTKPVINSITU_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKPVINSITU_NO_DEPRECATED
#    define VTKPVINSITU_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkPVInSituModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKPVINSITU_EXPORT_H */
