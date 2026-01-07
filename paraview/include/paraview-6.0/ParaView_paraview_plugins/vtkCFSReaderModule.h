
#ifndef VTKCFSREADER_EXPORT_H
#define VTKCFSREADER_EXPORT_H

#ifdef VTKCFSREADER_STATIC_DEFINE
#  define VTKCFSREADER_EXPORT
#  define VTKCFSREADER_NO_EXPORT
#else
#  ifndef VTKCFSREADER_EXPORT
#    ifdef Reader_EXPORTS
        /* We are building this library */
#      define VTKCFSREADER_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKCFSREADER_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKCFSREADER_NO_EXPORT
#    define VTKCFSREADER_NO_EXPORT 
#  endif
#endif

#ifndef VTKCFSREADER_DEPRECATED
#  define VTKCFSREADER_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKCFSREADER_DEPRECATED_EXPORT
#  define VTKCFSREADER_DEPRECATED_EXPORT VTKCFSREADER_EXPORT VTKCFSREADER_DEPRECATED
#endif

#ifndef VTKCFSREADER_DEPRECATED_NO_EXPORT
#  define VTKCFSREADER_DEPRECATED_NO_EXPORT VTKCFSREADER_NO_EXPORT VTKCFSREADER_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKCFSREADER_NO_DEPRECATED
#    define VTKCFSREADER_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkCFSReaderModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKCFSREADER_EXPORT_H */
