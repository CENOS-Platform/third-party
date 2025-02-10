#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ContourLabelRepresentation::ContourLabelRepresentation" for configuration "RelWithDebInfo"
set_property(TARGET ContourLabelRepresentation::ContourLabelRepresentation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ContourLabelRepresentation::ContourLabelRepresentation PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ContourLabelPlugin/vtkContourLabelPlugin.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersParallel;VTK::ParallelCore;VTK::RenderingCore;ParaView::VTKExtensionsMisc"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ContourLabelPlugin/vtkContourLabelPlugin.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ContourLabelRepresentation::ContourLabelRepresentation )
list(APPEND _IMPORT_CHECK_FILES_FOR_ContourLabelRepresentation::ContourLabelRepresentation "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ContourLabelPlugin/vtkContourLabelPlugin.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ContourLabelPlugin/vtkContourLabelPlugin.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
