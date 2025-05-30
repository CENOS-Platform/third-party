
#ifndef VTKACCELERATORSVTKMDATAMODEL_EXPORT_H
#define VTKACCELERATORSVTKMDATAMODEL_EXPORT_H

#ifdef VTKACCELERATORSVTKMDATAMODEL_STATIC_DEFINE
#  define VTKACCELERATORSVTKMDATAMODEL_EXPORT
#  define VTKACCELERATORSVTKMDATAMODEL_NO_EXPORT
#else
#  ifndef VTKACCELERATORSVTKMDATAMODEL_EXPORT
#    ifdef AcceleratorsVTKmDataModel_EXPORTS
        /* We are building this library */
#      define VTKACCELERATORSVTKMDATAMODEL_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKACCELERATORSVTKMDATAMODEL_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef VTKACCELERATORSVTKMDATAMODEL_NO_EXPORT
#    define VTKACCELERATORSVTKMDATAMODEL_NO_EXPORT 
#  endif
#endif

#ifndef VTKACCELERATORSVTKMDATAMODEL_DEPRECATED
#  define VTKACCELERATORSVTKMDATAMODEL_DEPRECATED __declspec(deprecated)
#endif

#ifndef VTKACCELERATORSVTKMDATAMODEL_DEPRECATED_EXPORT
#  define VTKACCELERATORSVTKMDATAMODEL_DEPRECATED_EXPORT VTKACCELERATORSVTKMDATAMODEL_EXPORT VTKACCELERATORSVTKMDATAMODEL_DEPRECATED
#endif

#ifndef VTKACCELERATORSVTKMDATAMODEL_DEPRECATED_NO_EXPORT
#  define VTKACCELERATORSVTKMDATAMODEL_DEPRECATED_NO_EXPORT VTKACCELERATORSVTKMDATAMODEL_NO_EXPORT VTKACCELERATORSVTKMDATAMODEL_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKACCELERATORSVTKMDATAMODEL_NO_DEPRECATED
#    define VTKACCELERATORSVTKMDATAMODEL_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkAcceleratorsVTKmDataModelModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKACCELERATORSVTKMDATAMODEL_EXPORT_H */
