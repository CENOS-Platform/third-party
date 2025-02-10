#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "NonOrthogonalSource::vtkNonOrthogonalSources" for configuration "RelWithDebInfo"
set_property(TARGET NonOrthogonalSource::vtkNonOrthogonalSources APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(NonOrthogonalSource::vtkNonOrthogonalSources PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/NonOrthogonalSource/vtkNonOrthogonalSources.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ParaView::VTKExtensionsMisc;VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMath;VTK::CommonTransforms;VTK::FiltersGeneral;VTK::ImagingCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/NonOrthogonalSource/vtkNonOrthogonalSources.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS NonOrthogonalSource::vtkNonOrthogonalSources )
list(APPEND _IMPORT_CHECK_FILES_FOR_NonOrthogonalSource::vtkNonOrthogonalSources "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/NonOrthogonalSource/vtkNonOrthogonalSources.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/NonOrthogonalSource/vtkNonOrthogonalSources.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
