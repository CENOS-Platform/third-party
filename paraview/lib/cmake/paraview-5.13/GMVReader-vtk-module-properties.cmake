set(_vtk_module_import_prefix "${CMAKE_CURRENT_LIST_DIR}")
get_filename_component(_vtk_module_import_prefix "${_vtk_module_import_prefix}" DIRECTORY)
get_filename_component(_vtk_module_import_prefix "${_vtk_module_import_prefix}" DIRECTORY)
get_filename_component(_vtk_module_import_prefix "${_vtk_module_import_prefix}" DIRECTORY)
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_exclude_wrap" "FALSE")
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_include_marshal" "FALSE")
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_depends" "VTK::CommonExecutionModel")
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_private_depends" "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMisc")
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_optional_depends" "VTK::ParallelCore")
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_implements" "")
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_implementable" "FALSE")
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_library_name" "vtkGMVReader")
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_headers" "${_vtk_module_import_prefix}/include/paraview-5.13/ParaView_paraview_plugins/vtkGMVReader.h")
set_property(TARGET "GMVReader::vtkGMVReader" PROPERTY "INTERFACE_vtk_module_hierarchy" "${_vtk_module_import_prefix}/bin/paraview-5.13/plugins/GMVReader/vtk/hierarchy/GMVReader/vtkGMVReader-hierarchy.txt")
unset(_vtk_module_import_prefix)
