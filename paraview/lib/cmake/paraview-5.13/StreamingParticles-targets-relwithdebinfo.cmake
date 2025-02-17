#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "StreamingParticles::vtkStreamingParticles" for configuration "RelWithDebInfo"
set_property(TARGET StreamingParticles::vtkStreamingParticles APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(StreamingParticles::vtkStreamingParticles PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "VTK::FiltersCore;VTK::ParallelCore;VTK::RenderingCore;VTK::RenderingOpenGL2"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS StreamingParticles::vtkStreamingParticles )
list(APPEND _IMPORT_CHECK_FILES_FOR_StreamingParticles::vtkStreamingParticles "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
