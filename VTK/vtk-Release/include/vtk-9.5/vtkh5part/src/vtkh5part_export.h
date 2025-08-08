
#ifndef VTKH5PART_EXPORT_H
#define VTKH5PART_EXPORT_H

#ifdef H5PART_STATIC_DEFINE
#  define VTKH5PART_EXPORT
#  define H5PART_NO_EXPORT
#else
#  ifndef VTKH5PART_EXPORT
#    ifdef h5part_EXPORTS
        /* We are building this library */
#      define VTKH5PART_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define VTKH5PART_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef H5PART_NO_EXPORT
#    define H5PART_NO_EXPORT 
#  endif
#endif

#ifndef H5PART_DEPRECATED
#  define H5PART_DEPRECATED __declspec(deprecated)
#endif

#ifndef H5PART_DEPRECATED_EXPORT
#  define H5PART_DEPRECATED_EXPORT VTKH5PART_EXPORT H5PART_DEPRECATED
#endif

#ifndef H5PART_DEPRECATED_NO_EXPORT
#  define H5PART_DEPRECATED_NO_EXPORT H5PART_NO_EXPORT H5PART_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef H5PART_NO_DEPRECATED
#    define H5PART_NO_DEPRECATED
#  endif
#endif

#endif /* VTKH5PART_EXPORT_H */
