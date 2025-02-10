#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PanoramicProjectionView::vtkPanoramicProjectionViews" for configuration "RelWithDebInfo"
set_property(TARGET PanoramicProjectionView::vtkPanoramicProjectionViews APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(PanoramicProjectionView::vtkPanoramicProjectionViews PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/PanoramicProjectionView/vtkPanoramicProjectionViews.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::RenderingCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/PanoramicProjectionView/vtkPanoramicProjectionViews.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS PanoramicProjectionView::vtkPanoramicProjectionViews )
list(APPEND _IMPORT_CHECK_FILES_FOR_PanoramicProjectionView::vtkPanoramicProjectionViews "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/PanoramicProjectionView/vtkPanoramicProjectionViews.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/PanoramicProjectionView/vtkPanoramicProjectionViews.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
