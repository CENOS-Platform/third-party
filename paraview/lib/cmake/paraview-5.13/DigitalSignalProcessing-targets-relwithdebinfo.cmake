#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "DigitalSignalProcessing::DSPDataModel" for configuration "RelWithDebInfo"
set_property(TARGET DigitalSignalProcessing::DSPDataModel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(DigitalSignalProcessing::DSPDataModel PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalSignalProcessing/vtkDSPDataModel.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS DigitalSignalProcessing::DSPDataModel )
list(APPEND _IMPORT_CHECK_FILES_FOR_DigitalSignalProcessing::DSPDataModel "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalSignalProcessing/vtkDSPDataModel.lib" )

# Import target "DigitalSignalProcessing::DSPFiltersPlugin" for configuration "RelWithDebInfo"
set_property(TARGET DigitalSignalProcessing::DSPFiltersPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(DigitalSignalProcessing::DSPFiltersPlugin PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalSignalProcessing/vtkDSPFiltersPlugin.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS DigitalSignalProcessing::DSPFiltersPlugin )
list(APPEND _IMPORT_CHECK_FILES_FOR_DigitalSignalProcessing::DSPFiltersPlugin "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalSignalProcessing/vtkDSPFiltersPlugin.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
