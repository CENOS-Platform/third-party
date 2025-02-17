#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GMVReader::vtkGMVReader" for configuration "RelWithDebInfo"
set_property(TARGET GMVReader::vtkGMVReader APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(GMVReader::vtkGMVReader PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GMVReader/vtkGMVReader.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMisc;VTK::ParallelCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GMVReader/vtkGMVReader.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS GMVReader::vtkGMVReader )
list(APPEND _IMPORT_CHECK_FILES_FOR_GMVReader::vtkGMVReader "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GMVReader/vtkGMVReader.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GMVReader/vtkGMVReader.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
