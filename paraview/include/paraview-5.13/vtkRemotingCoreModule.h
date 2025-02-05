
#ifndef VTKREMOTINGCORE_EXPORT_H
#define VTKREMOTINGCORE_EXPORT_H

#ifdef VTKREMOTINGCORE_STATIC_DEFINE
#  define VTKREMOTINGCORE_EXPORT
#  define VTKREMOTINGCORE_NO_EXPORT
#else
#  ifndef VTKREMOTINGCORE_EXPORT
#    ifdef RemotingCore_EXPORTS
        /* We are building this library */
#      define VTKREMOTINGCORE_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKREMOTINGCORE_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKREMOTINGCORE_NO_EXPORT
#    define VTKREMOTINGCORE_NO_EXPORT 
#  endif
#endif

#ifndef VTKREMOTINGCORE_DEPRECATED
#  define VTKREMOTINGCORE_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKREMOTINGCORE_DEPRECATED_EXPORT
#  define VTKREMOTINGCORE_DEPRECATED_EXPORT VTKREMOTINGCORE_EXPORT VTKREMOTINGCORE_DEPRECATED
#endif

#ifndef VTKREMOTINGCORE_DEPRECATED_NO_EXPORT
#  define VTKREMOTINGCORE_DEPRECATED_NO_EXPORT VTKREMOTINGCORE_NO_EXPORT VTKREMOTINGCORE_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKREMOTINGCORE_NO_DEPRECATED
#    define VTKREMOTINGCORE_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkRemotingCoreModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKREMOTINGCORE_EXPORT_H */
