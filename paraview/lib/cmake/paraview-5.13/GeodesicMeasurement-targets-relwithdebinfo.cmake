#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GeodesicMeasurement::GeodesicMeasurementFilters" for configuration "RelWithDebInfo"
set_property(TARGET GeodesicMeasurement::GeodesicMeasurementFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(GeodesicMeasurement::GeodesicMeasurementFilters PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/vtkGeodesicMeasurementFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersModeling"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/vtkGeodesicMeasurementFilters.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS GeodesicMeasurement::GeodesicMeasurementFilters )
list(APPEND _IMPORT_CHECK_FILES_FOR_GeodesicMeasurement::GeodesicMeasurementFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/vtkGeodesicMeasurementFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/vtkGeodesicMeasurementFilters.dll" )

# Import target "GeodesicMeasurement::FmmMesh" for configuration "RelWithDebInfo"
set_property(TARGET GeodesicMeasurement::FmmMesh APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(GeodesicMeasurement::FmmMesh PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/FmmMesh.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS GeodesicMeasurement::FmmMesh )
list(APPEND _IMPORT_CHECK_FILES_FOR_GeodesicMeasurement::FmmMesh "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/FmmMesh.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
