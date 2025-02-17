#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot" for configuration "RelWithDebInfo"
set_property(TARGET BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlot.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ParaView::VTKExtensionsFiltersRendering;ParaView::VTKExtensionsFiltersStatistics;ParaView::VTKExtensionsMisc;VTK::FiltersExtraction;VTK::FiltersStatistics;VTK::InfovisCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlot.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot )
list(APPEND _IMPORT_CHECK_FILES_FOR_BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlot.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlot.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
