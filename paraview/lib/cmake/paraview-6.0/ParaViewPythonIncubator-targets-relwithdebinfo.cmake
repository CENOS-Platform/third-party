#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ParaView::vtkPVIncubatorCorePython" for configuration "RelWithDebInfo"
set_property(TARGET ParaView::vtkPVIncubatorCorePython APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ParaView::vtkPVIncubatorCorePython PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_RELWITHDEBINFO ""
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/Lib/site-packages/paraview/incubator/vtkPVIncubatorCore.pyd"
  )

list(APPEND _IMPORT_CHECK_TARGETS ParaView::vtkPVIncubatorCorePython )
list(APPEND _IMPORT_CHECK_FILES_FOR_ParaView::vtkPVIncubatorCorePython "${_IMPORT_PREFIX}/Lib/site-packages/paraview/incubator/vtkPVIncubatorCore.pyd" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
