#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ngcore" for configuration "Debug"
set_property(TARGET ngcore APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ngcore PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/ngcore.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/ngcore.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ngcore )
list(APPEND _IMPORT_CHECK_FILES_FOR_ngcore "${_IMPORT_PREFIX}/lib/ngcore.lib" "${_IMPORT_PREFIX}/bin/ngcore.dll" )

# Import target "netgen" for configuration "Debug"
set_property(TARGET netgen APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(netgen PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/netgen.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS netgen )
list(APPEND _IMPORT_CHECK_FILES_FOR_netgen "${_IMPORT_PREFIX}/bin/netgen.exe" )

# Import target "gui" for configuration "Debug"
set_property(TARGET gui APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gui PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/libgui.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "togl;TKBO;TKBRep;TKBool;TKCAF;TKCDF;TKFillet;TKG2d;TKG3d;TKGeomAlgo;TKGeomBase;TKHLR;TKIGES;TKLCAF;TKMath;TKMesh;TKOffset;TKPrim;TKSTEP;TKSTEP209;TKSTEPAttr;TKSTEPBase;TKSTL;TKService;TKShHealing;TKTopAlgo;TKV3d;TKVCAF;TKXCAF;TKXDEIGES;TKXDESTEP;TKXSBase;TKernel"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/libgui.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS gui )
list(APPEND _IMPORT_CHECK_FILES_FOR_gui "${_IMPORT_PREFIX}/lib/libgui.lib" "${_IMPORT_PREFIX}/bin/libgui.dll" )

# Import target "togl" for configuration "Debug"
set_property(TARGET togl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(togl PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/togl.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/togl.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS togl )
list(APPEND _IMPORT_CHECK_FILES_FOR_togl "${_IMPORT_PREFIX}/lib/togl.lib" "${_IMPORT_PREFIX}/bin/togl.dll" )

# Import target "nglib" for configuration "Debug"
set_property(TARGET nglib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(nglib PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/nglib.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "TKBO;TKBRep;TKBool;TKCAF;TKCDF;TKFillet;TKG2d;TKG3d;TKGeomAlgo;TKGeomBase;TKHLR;TKIGES;TKLCAF;TKMath;TKMesh;TKOffset;TKPrim;TKSTEP;TKSTEP209;TKSTEPAttr;TKSTEPBase;TKSTL;TKService;TKShHealing;TKTopAlgo;TKV3d;TKVCAF;TKXCAF;TKXDEIGES;TKXDESTEP;TKXSBase;TKernel"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/nglib.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS nglib )
list(APPEND _IMPORT_CHECK_FILES_FOR_nglib "${_IMPORT_PREFIX}/lib/nglib.lib" "${_IMPORT_PREFIX}/bin/nglib.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
