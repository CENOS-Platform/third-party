#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Prism::vtkPrismFilters" for configuration "RelWithDebInfo"
set_property(TARGET Prism::vtkPrismFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Prism::vtkPrismFilters PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersGeneral;VTK::fmt"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFilters.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Prism::vtkPrismFilters )
list(APPEND _IMPORT_CHECK_FILES_FOR_Prism::vtkPrismFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFilters.dll" )

# Import target "Prism::vtkPrismViews" for configuration "RelWithDebInfo"
set_property(TARGET Prism::vtkPrismViews APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Prism::vtkPrismViews PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViews.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ParaView::RemotingCore;Prism::vtkPrismFilters;VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersExtraction;VTK::FiltersGeometry"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViews.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Prism::vtkPrismViews )
list(APPEND _IMPORT_CHECK_FILES_FOR_Prism::vtkPrismViews "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViews.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViews.dll" )

# Import target "Prism::vtkPrismServerManager" for configuration "RelWithDebInfo"
set_property(TARGET Prism::vtkPrismServerManager APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Prism::vtkPrismServerManager PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManager.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ParaView::RemotingCore;VTK::CommonCore;VTK::CommonDataModel"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManager.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Prism::vtkPrismServerManager )
list(APPEND _IMPORT_CHECK_FILES_FOR_Prism::vtkPrismServerManager "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManager.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManager.dll" )

# Import target "Prism::vtkPrismReaders" for configuration "RelWithDebInfo"
set_property(TARGET Prism::vtkPrismReaders APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Prism::vtkPrismReaders PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReaders.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMisc;VTK::FiltersGeometry"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReaders.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Prism::vtkPrismReaders )
list(APPEND _IMPORT_CHECK_FILES_FOR_Prism::vtkPrismReaders "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReaders.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReaders.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
