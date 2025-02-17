#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "BivariateRepresentations::vtkBivariateRepresentations" for configuration "RelWithDebInfo"
set_property(TARGET BivariateRepresentations::vtkBivariateRepresentations APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(BivariateRepresentations::vtkBivariateRepresentations PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BivariateRepresentations/vtkBivariateRepresentations.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS BivariateRepresentations::vtkBivariateRepresentations )
list(APPEND _IMPORT_CHECK_FILES_FOR_BivariateRepresentations::vtkBivariateRepresentations "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BivariateRepresentations/vtkBivariateRepresentations.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
