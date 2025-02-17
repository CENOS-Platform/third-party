#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MooseXfemClip::vtkMooseXfemClip" for configuration "RelWithDebInfo"
set_property(TARGET MooseXfemClip::vtkMooseXfemClip APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(MooseXfemClip::vtkMooseXfemClip PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/MooseXfemClip/vtkMooseXfemClip.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/MooseXfemClip/vtkMooseXfemClip.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS MooseXfemClip::vtkMooseXfemClip )
list(APPEND _IMPORT_CHECK_FILES_FOR_MooseXfemClip::vtkMooseXfemClip "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/MooseXfemClip/vtkMooseXfemClip.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/MooseXfemClip/vtkMooseXfemClip.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
