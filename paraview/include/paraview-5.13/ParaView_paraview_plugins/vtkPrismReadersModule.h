
#ifndef VTKPRISMREADERS_EXPORT_H
#define VTKPRISMREADERS_EXPORT_H

#ifdef VTKPRISMREADERS_STATIC_DEFINE
#  define VTKPRISMREADERS_EXPORT
#  define VTKPRISMREADERS_NO_EXPORT
#else
#  ifndef VTKPRISMREADERS_EXPORT
#    ifdef vtkPrismReaders_EXPORTS
        /* We are building this library */
#      define VTKPRISMREADERS_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKPRISMREADERS_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKPRISMREADERS_NO_EXPORT
#    define VTKPRISMREADERS_NO_EXPORT 
#  endif
#endif

#ifndef VTKPRISMREADERS_DEPRECATED
#  define VTKPRISMREADERS_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKPRISMREADERS_DEPRECATED_EXPORT
#  define VTKPRISMREADERS_DEPRECATED_EXPORT VTKPRISMREADERS_EXPORT VTKPRISMREADERS_DEPRECATED
#endif

#ifndef VTKPRISMREADERS_DEPRECATED_NO_EXPORT
#  define VTKPRISMREADERS_DEPRECATED_NO_EXPORT VTKPRISMREADERS_NO_EXPORT VTKPRISMREADERS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKPRISMREADERS_NO_DEPRECATED
#    define VTKPRISMREADERS_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkPrismReadersModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKPRISMREADERS_EXPORT_H */
