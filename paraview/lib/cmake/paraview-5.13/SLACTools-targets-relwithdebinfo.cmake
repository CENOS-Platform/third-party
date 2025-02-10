#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SLACTools::vtkSLACFilters" for configuration "RelWithDebInfo"
set_property(TARGET SLACTools::vtkSLACFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SLACTools::vtkSLACFilters PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/SLACTools/vtkSLACFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ParaView::VTKExtensionsCore;ParaView::VTKExtensionsMisc;VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersSources;VTK::ParallelCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/SLACTools/vtkSLACFilters.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS SLACTools::vtkSLACFilters )
list(APPEND _IMPORT_CHECK_FILES_FOR_SLACTools::vtkSLACFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/SLACTools/vtkSLACFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/SLACTools/vtkSLACFilters.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
