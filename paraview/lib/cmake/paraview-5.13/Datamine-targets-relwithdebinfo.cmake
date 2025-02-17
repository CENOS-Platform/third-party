#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Datamine::DatamineReaders" for configuration "RelWithDebInfo"
set_property(TARGET Datamine::DatamineReaders APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Datamine::DatamineReaders PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Datamine/vtkDatamineReaders.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonTransforms;VTK::FiltersCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Datamine/vtkDatamineReaders.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Datamine::DatamineReaders )
list(APPEND _IMPORT_CHECK_FILES_FOR_Datamine::DatamineReaders "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Datamine/vtkDatamineReaders.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Datamine/vtkDatamineReaders.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
