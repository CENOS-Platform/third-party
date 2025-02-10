#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "StereoCursorView::StereoCursorViews" for configuration "RelWithDebInfo"
set_property(TARGET StereoCursorView::StereoCursorViews APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(StereoCursorView::StereoCursorViews PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViews.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::InteractionWidgets;VTK::RenderingCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViews.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS StereoCursorView::StereoCursorViews )
list(APPEND _IMPORT_CHECK_FILES_FOR_StereoCursorView::StereoCursorViews "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViews.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViews.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
