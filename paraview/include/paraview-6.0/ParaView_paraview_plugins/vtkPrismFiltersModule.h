
#ifndef VTKPRISMFILTERS_EXPORT_H
#define VTKPRISMFILTERS_EXPORT_H

#ifdef VTKPRISMFILTERS_STATIC_DEFINE
#  define VTKPRISMFILTERS_EXPORT
#  define VTKPRISMFILTERS_NO_EXPORT
#else
#  ifndef VTKPRISMFILTERS_EXPORT
#    ifdef vtkPrismFilters_EXPORTS
        /* We are building this library */
#      define VTKPRISMFILTERS_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKPRISMFILTERS_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKPRISMFILTERS_NO_EXPORT
#    define VTKPRISMFILTERS_NO_EXPORT 
#  endif
#endif

#ifndef VTKPRISMFILTERS_DEPRECATED
#  define VTKPRISMFILTERS_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKPRISMFILTERS_DEPRECATED_EXPORT
#  define VTKPRISMFILTERS_DEPRECATED_EXPORT VTKPRISMFILTERS_EXPORT VTKPRISMFILTERS_DEPRECATED
#endif

#ifndef VTKPRISMFILTERS_DEPRECATED_NO_EXPORT
#  define VTKPRISMFILTERS_DEPRECATED_NO_EXPORT VTKPRISMFILTERS_NO_EXPORT VTKPRISMFILTERS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKPRISMFILTERS_NO_DEPRECATED
#    define VTKPRISMFILTERS_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkPrismFiltersModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKPRISMFILTERS_EXPORT_H */
