#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Moments::MomentFilters" for configuration "RelWithDebInfo"
set_property(TARGET Moments::MomentFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Moments::MomentFilters PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Moments/vtkMomentFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonTransforms;VTK::FiltersCore;VTK::FiltersGeneral;VTK::FiltersSources"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Moments/vtkMomentFilters.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Moments::MomentFilters )
list(APPEND _IMPORT_CHECK_FILES_FOR_Moments::MomentFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Moments/vtkMomentFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Moments/vtkMomentFilters.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
