#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LANLX3DReader::vtkLANLX3DReader" for configuration "RelWithDebInfo"
set_property(TARGET LANLX3DReader::vtkLANLX3DReader APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(LANLX3DReader::vtkLANLX3DReader PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LANLX3DReader/vtkLANLX3DReader.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LANLX3DReader/vtkLANLX3DReader.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS LANLX3DReader::vtkLANLX3DReader )
list(APPEND _IMPORT_CHECK_FILES_FOR_LANLX3DReader::vtkLANLX3DReader "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LANLX3DReader/vtkLANLX3DReader.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LANLX3DReader/vtkLANLX3DReader.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
