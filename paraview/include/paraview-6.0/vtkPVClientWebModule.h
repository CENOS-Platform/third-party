
#ifndef VTKPVCLIENTWEB_EXPORT_H
#define VTKPVCLIENTWEB_EXPORT_H

#ifdef VTKPVCLIENTWEB_STATIC_DEFINE
#  define VTKPVCLIENTWEB_EXPORT
#  define VTKPVCLIENTWEB_NO_EXPORT
#else
#  ifndef VTKPVCLIENTWEB_EXPORT
#    ifdef ClientsWeb_EXPORTS
        /* We are building this library */
#      define VTKPVCLIENTWEB_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKPVCLIENTWEB_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKPVCLIENTWEB_NO_EXPORT
#    define VTKPVCLIENTWEB_NO_EXPORT 
#  endif
#endif

#ifndef VTKPVCLIENTWEB_DEPRECATED
#  define VTKPVCLIENTWEB_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKPVCLIENTWEB_DEPRECATED_EXPORT
#  define VTKPVCLIENTWEB_DEPRECATED_EXPORT VTKPVCLIENTWEB_EXPORT VTKPVCLIENTWEB_DEPRECATED
#endif

#ifndef VTKPVCLIENTWEB_DEPRECATED_NO_EXPORT
#  define VTKPVCLIENTWEB_DEPRECATED_NO_EXPORT VTKPVCLIENTWEB_NO_EXPORT VTKPVCLIENTWEB_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKPVCLIENTWEB_NO_DEPRECATED
#    define VTKPVCLIENTWEB_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkPVClientWebModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKPVCLIENTWEB_EXPORT_H */
