#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "AnalyzeNIfTIIO::NIfTIIO" for configuration "RelWithDebInfo"
set_property(TARGET AnalyzeNIfTIIO::NIfTIIO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(AnalyzeNIfTIIO::NIfTIIO PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIO.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::zlib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIO.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS AnalyzeNIfTIIO::NIfTIIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_AnalyzeNIfTIIO::NIfTIIO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIO.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIO.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
