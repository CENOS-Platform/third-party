#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "TKService" for configuration "RelWithDebInfo"
set_property(TARGET TKService APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(TKService PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/libi/TKService.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/bini/TKService.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKService )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKService "${_IMPORT_PREFIX}/win64/vc14/libi/TKService.lib" "${_IMPORT_PREFIX}/win64/vc14/bini/TKService.dll" )

# Import target "TKV3d" for configuration "RelWithDebInfo"
set_property(TARGET TKV3d APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(TKV3d PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/libi/TKV3d.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/bini/TKV3d.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKV3d )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKV3d "${_IMPORT_PREFIX}/win64/vc14/libi/TKV3d.lib" "${_IMPORT_PREFIX}/win64/vc14/bini/TKV3d.dll" )

# Import target "TKMeshVS" for configuration "RelWithDebInfo"
set_property(TARGET TKMeshVS APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(TKMeshVS PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/libi/TKMeshVS.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/bini/TKMeshVS.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKMeshVS )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKMeshVS "${_IMPORT_PREFIX}/win64/vc14/libi/TKMeshVS.lib" "${_IMPORT_PREFIX}/win64/vc14/bini/TKMeshVS.dll" )

# Import target "TKIVtk" for configuration "RelWithDebInfo"
set_property(TARGET TKIVtk APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(TKIVtk PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/libi/TKIVtk.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/win64/vc14/bini/TKIVtk.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS TKIVtk )
list(APPEND _IMPORT_CHECK_FILES_FOR_TKIVtk "${_IMPORT_PREFIX}/win64/vc14/libi/TKIVtk.lib" "${_IMPORT_PREFIX}/win64/vc14/bini/TKIVtk.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
