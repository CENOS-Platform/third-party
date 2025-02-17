#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LegacyGhostCellsGeneratorFilters" for configuration "RelWithDebInfo"
set_property(TARGET LegacyGhostCellsGeneratorFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(LegacyGhostCellsGeneratorFilters PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMisc;VTK::ParallelCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFilters.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS LegacyGhostCellsGeneratorFilters )
list(APPEND _IMPORT_CHECK_FILES_FOR_LegacyGhostCellsGeneratorFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFilters.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
