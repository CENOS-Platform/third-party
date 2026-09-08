
#ifndef VTKSLACFILTERS_EXPORT_H
#define VTKSLACFILTERS_EXPORT_H

#ifdef VTKSLACFILTERS_STATIC_DEFINE
#  define VTKSLACFILTERS_EXPORT
#  define VTKSLACFILTERS_NO_EXPORT
#else
#  ifndef VTKSLACFILTERS_EXPORT
#    ifdef vtkSLACFilters_EXPORTS
        /* We are building this library */
#      define VTKSLACFILTERS_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKSLACFILTERS_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKSLACFILTERS_NO_EXPORT
#    define VTKSLACFILTERS_NO_EXPORT 
#  endif
#endif

#ifndef VTKSLACFILTERS_DEPRECATED
#  define VTKSLACFILTERS_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKSLACFILTERS_DEPRECATED_EXPORT
#  define VTKSLACFILTERS_DEPRECATED_EXPORT VTKSLACFILTERS_EXPORT VTKSLACFILTERS_DEPRECATED
#endif

#ifndef VTKSLACFILTERS_DEPRECATED_NO_EXPORT
#  define VTKSLACFILTERS_DEPRECATED_NO_EXPORT VTKSLACFILTERS_NO_EXPORT VTKSLACFILTERS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKSLACFILTERS_NO_DEPRECATED
#    define VTKSLACFILTERS_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkSLACFiltersModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKSLACFILTERS_EXPORT_H */
