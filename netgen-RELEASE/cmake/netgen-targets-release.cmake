#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ngcore" for configuration "Release"
set_property(TARGET ngcore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ngcore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/ngcore.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ngcore.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS ngcore )
list(APPEND _IMPORT_CHECK_FILES_FOR_ngcore "${_IMPORT_PREFIX}/lib/ngcore.lib" "${_IMPORT_PREFIX}/bin/ngcore.dll" )

# Import target "netgen" for configuration "Release"
set_property(TARGET netgen APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(netgen PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/netgen.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS netgen )
list(APPEND _IMPORT_CHECK_FILES_FOR_netgen "${_IMPORT_PREFIX}/bin/netgen.exe" )

# Import target "nggui" for configuration "Release"
set_property(TARGET nggui APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(nggui PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libnggui.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "TKBO;TKBRep;TKBool;TKCAF;TKCDF;TKFillet;TKG2d;TKG3d;TKGeomAlgo;TKGeomBase;TKHLR;TKIGES;TKLCAF;TKMath;TKMesh;TKOffset;TKPrim;TKSTEP;TKSTEP209;TKSTEPAttr;TKSTEPBase;TKSTL;TKService;TKShHealing;TKTopAlgo;TKV3d;TKVCAF;TKXCAF;TKXDEIGES;TKXDESTEP;TKXSBase;TKernel"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libnggui.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS nggui )
list(APPEND _IMPORT_CHECK_FILES_FOR_nggui "${_IMPORT_PREFIX}/lib/libnggui.lib" "${_IMPORT_PREFIX}/bin/libnggui.dll" )

# Import target "togl" for configuration "Release"
set_property(TARGET togl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(togl PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/togl.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/togl.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS togl )
list(APPEND _IMPORT_CHECK_FILES_FOR_togl "${_IMPORT_PREFIX}/lib/togl.lib" "${_IMPORT_PREFIX}/bin/togl.dll" )

# Import target "nglib" for configuration "Release"
set_property(TARGET nglib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(nglib PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/nglib.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "TKBO;TKBRep;TKBool;TKCAF;TKCDF;TKFillet;TKG2d;TKG3d;TKGeomAlgo;TKGeomBase;TKHLR;TKIGES;TKLCAF;TKMath;TKMesh;TKOffset;TKPrim;TKSTEP;TKSTEP209;TKSTEPAttr;TKSTEPBase;TKSTL;TKService;TKShHealing;TKTopAlgo;TKV3d;TKVCAF;TKXCAF;TKXDEIGES;TKXDESTEP;TKXSBase;TKernel"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/nglib.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS nglib )
list(APPEND _IMPORT_CHECK_FILES_FOR_nglib "${_IMPORT_PREFIX}/lib/nglib.lib" "${_IMPORT_PREFIX}/bin/nglib.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)