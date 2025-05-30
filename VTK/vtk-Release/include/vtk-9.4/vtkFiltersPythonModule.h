
#ifndef VTKFILTERSPYTHON_EXPORT_H
#define VTKFILTERSPYTHON_EXPORT_H

#ifdef VTKFILTERSPYTHON_STATIC_DEFINE
#  define VTKFILTERSPYTHON_EXPORT
#  define VTKFILTERSPYTHON_NO_EXPORT
#else
#  ifndef VTKFILTERSPYTHON_EXPORT
#    ifdef FiltersPython_EXPORTS
        /* We are building this library */
#      define VTKFILTERSPYTHON_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKFILTERSPYTHON_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKFILTERSPYTHON_NO_EXPORT
#    define VTKFILTERSPYTHON_NO_EXPORT 
#  endif
#endif

#ifndef VTKFILTERSPYTHON_DEPRECATED
#  define VTKFILTERSPYTHON_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKFILTERSPYTHON_DEPRECATED_EXPORT
#  define VTKFILTERSPYTHON_DEPRECATED_EXPORT VTKFILTERSPYTHON_EXPORT VTKFILTERSPYTHON_DEPRECATED
#endif

#ifndef VTKFILTERSPYTHON_DEPRECATED_NO_EXPORT
#  define VTKFILTERSPYTHON_DEPRECATED_NO_EXPORT VTKFILTERSPYTHON_NO_EXPORT VTKFILTERSPYTHON_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKFILTERSPYTHON_NO_DEPRECATED
#    define VTKFILTERSPYTHON_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkFiltersPythonModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKFILTERSPYTHON_EXPORT_H */
