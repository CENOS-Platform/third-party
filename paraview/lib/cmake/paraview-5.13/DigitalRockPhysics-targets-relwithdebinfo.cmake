#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "DigitalRockPhysics::DigitalRocksFilters" for configuration "RelWithDebInfo"
set_property(TARGET DigitalRockPhysics::DigitalRocksFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(DigitalRockPhysics::DigitalRocksFilters PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalRockPhysics/vtkDigitalRocksFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::ParallelCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalRockPhysics/vtkDigitalRocksFilters.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS DigitalRockPhysics::DigitalRocksFilters )
list(APPEND _IMPORT_CHECK_FILES_FOR_DigitalRockPhysics::DigitalRocksFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalRockPhysics/vtkDigitalRocksFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalRockPhysics/vtkDigitalRocksFilters.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
