
#ifndef VTKPRISMVIEWS_EXPORT_H
#define VTKPRISMVIEWS_EXPORT_H

#ifdef VTKPRISMVIEWS_STATIC_DEFINE
#  define VTKPRISMVIEWS_EXPORT
#  define VTKPRISMVIEWS_NO_EXPORT
#else
#  ifndef VTKPRISMVIEWS_EXPORT
#    ifdef vtkPrismViews_EXPORTS
        /* We are building this library */
#      define VTKPRISMVIEWS_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKPRISMVIEWS_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKPRISMVIEWS_NO_EXPORT
#    define VTKPRISMVIEWS_NO_EXPORT 
#  endif
#endif

#ifndef VTKPRISMVIEWS_DEPRECATED
#  define VTKPRISMVIEWS_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKPRISMVIEWS_DEPRECATED_EXPORT
#  define VTKPRISMVIEWS_DEPRECATED_EXPORT VTKPRISMVIEWS_EXPORT VTKPRISMVIEWS_DEPRECATED
#endif

#ifndef VTKPRISMVIEWS_DEPRECATED_NO_EXPORT
#  define VTKPRISMVIEWS_DEPRECATED_NO_EXPORT VTKPRISMVIEWS_NO_EXPORT VTKPRISMVIEWS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKPRISMVIEWS_NO_DEPRECATED
#    define VTKPRISMVIEWS_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkPrismViewsModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKPRISMVIEWS_EXPORT_H */
