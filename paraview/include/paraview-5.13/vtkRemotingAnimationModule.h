
#ifndef VTKREMOTINGANIMATION_EXPORT_H
#define VTKREMOTINGANIMATION_EXPORT_H

#ifdef VTKREMOTINGANIMATION_STATIC_DEFINE
#  define VTKREMOTINGANIMATION_EXPORT
#  define VTKREMOTINGANIMATION_NO_EXPORT
#else
#  ifndef VTKREMOTINGANIMATION_EXPORT
#    ifdef RemotingAnimation_EXPORTS
        /* We are building this library */
#      define VTKREMOTINGANIMATION_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKREMOTINGANIMATION_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKREMOTINGANIMATION_NO_EXPORT
#    define VTKREMOTINGANIMATION_NO_EXPORT 
#  endif
#endif

#ifndef VTKREMOTINGANIMATION_DEPRECATED
#  define VTKREMOTINGANIMATION_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKREMOTINGANIMATION_DEPRECATED_EXPORT
#  define VTKREMOTINGANIMATION_DEPRECATED_EXPORT VTKREMOTINGANIMATION_EXPORT VTKREMOTINGANIMATION_DEPRECATED
#endif

#ifndef VTKREMOTINGANIMATION_DEPRECATED_NO_EXPORT
#  define VTKREMOTINGANIMATION_DEPRECATED_NO_EXPORT VTKREMOTINGANIMATION_NO_EXPORT VTKREMOTINGANIMATION_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKREMOTINGANIMATION_NO_DEPRECATED
#    define VTKREMOTINGANIMATION_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkRemotingAnimationModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKREMOTINGANIMATION_EXPORT_H */
