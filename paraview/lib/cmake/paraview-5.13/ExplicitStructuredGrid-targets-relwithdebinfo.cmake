#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ExplicitStructuredGrid::vtkExplicitStructuredGrid" for configuration "RelWithDebInfo"
set_property(TARGET ExplicitStructuredGrid::vtkExplicitStructuredGrid APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ExplicitStructuredGrid::vtkExplicitStructuredGrid PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ExplicitStructuredGrid/vtkExplicitStructuredGrid.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonDataModel;VTK::CommonCore;VTK::ParallelCore;VTK::WrappingPythonCore;VTK::PythonInterpreter"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ExplicitStructuredGrid/vtkExplicitStructuredGrid.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ExplicitStructuredGrid::vtkExplicitStructuredGrid )
list(APPEND _IMPORT_CHECK_FILES_FOR_ExplicitStructuredGrid::vtkExplicitStructuredGrid "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ExplicitStructuredGrid/vtkExplicitStructuredGrid.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ExplicitStructuredGrid/vtkExplicitStructuredGrid.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
