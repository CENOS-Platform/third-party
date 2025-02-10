#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ArrowGlyph::ArrowGlyphFilter" for configuration "RelWithDebInfo"
set_property(TARGET ArrowGlyph::ArrowGlyphFilter APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ArrowGlyph::ArrowGlyphFilter PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ArrowGlyph/vtkArrowGlyphFilter.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ParaView::RemotingCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersSources"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ArrowGlyph/vtkArrowGlyphFilter.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ArrowGlyph::ArrowGlyphFilter )
list(APPEND _IMPORT_CHECK_FILES_FOR_ArrowGlyph::ArrowGlyphFilter "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ArrowGlyph/vtkArrowGlyphFilter.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ArrowGlyph/vtkArrowGlyphFilter.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
