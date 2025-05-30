
#ifndef VTKREMOTINGVIEWS_EXPORT_H
#define VTKREMOTINGVIEWS_EXPORT_H

#ifdef VTKREMOTINGVIEWS_STATIC_DEFINE
#  define VTKREMOTINGVIEWS_EXPORT
#  define VTKREMOTINGVIEWS_NO_EXPORT
#else
#  ifndef VTKREMOTINGVIEWS_EXPORT
#    ifdef RemotingViews_EXPORTS
        /* We are building this library */
#      define VTKREMOTINGVIEWS_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKREMOTINGVIEWS_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKREMOTINGVIEWS_NO_EXPORT
#    define VTKREMOTINGVIEWS_NO_EXPORT 
#  endif
#endif

#ifndef VTKREMOTINGVIEWS_DEPRECATED
#  define VTKREMOTINGVIEWS_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKREMOTINGVIEWS_DEPRECATED_EXPORT
#  define VTKREMOTINGVIEWS_DEPRECATED_EXPORT VTKREMOTINGVIEWS_EXPORT VTKREMOTINGVIEWS_DEPRECATED
#endif

#ifndef VTKREMOTINGVIEWS_DEPRECATED_NO_EXPORT
#  define VTKREMOTINGVIEWS_DEPRECATED_NO_EXPORT VTKREMOTINGVIEWS_NO_EXPORT VTKREMOTINGVIEWS_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKREMOTINGVIEWS_NO_DEPRECATED
#    define VTKREMOTINGVIEWS_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkRemotingViewsModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"
/* AutoInit dependencies. */
#include "vtkRemotingServerManagerModule.h"
#include "vtkChartsCoreModule.h"
#include "vtkRenderingContext2DModule.h"
#include "vtkRenderingCoreModule.h"
#include "vtkRenderingCellGridModule.h"


/* AutoInit implementations. */
#ifdef vtkRemotingViews_AUTOINIT_INCLUDE
#include vtkRemotingViews_AUTOINIT_INCLUDE
#endif
#ifdef vtkRemotingViews_AUTOINIT
#include "vtkAutoInit.h"
VTK_MODULE_AUTOINIT(vtkRemotingViews)
#endif

#endif /* VTKREMOTINGVIEWS_EXPORT_H */
