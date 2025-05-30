#[==[.md
# paraview-config.cmake

This file is used by CMake when finding ParaView.

The following variables are provided by this module:

  * `ParaView_VERSION`: The full version of ParaView found.
  * `ParaView_VERSION_SIMPLE`: The simple version of ParaView found (eg: 5.9.1).
  * `ParaView_VERSION_MAJOR`: The major version of ParaView found.
  * `ParaView_VERSION_MINOR`: The minor version of ParaView found.
  * `ParaView_VERSION_PATCH`: The patch version of ParaView found.
  * `ParaView_PREFIX_PATH`: Install prefix for ParaView.
  * `PARAVIEW_USE_QT`: If ParaView's Qt GUI is available.
  * `PARAVIEW_QT_MAJOR_VERSION`: Major version of Qt used by ParaView if PARAVIEW_USE_QT is TRUE
  * `PARAVIEW_USE_MPI`: If ParaView is built with MPI support.
  * `PARAVIEW_USE_PYTHON`: If ParaView is built with Python support.
  * `PARAVIEW_USE_SERIALIZATION`: If ParaView is built with Serialization support.
  * `PARAVIEW_USE_QTWEBENGINE`: If ParaView uses Qt's WebEngine for its help.
  * `PARAVIEW_PYTHONPATH`: Where ParaView's Python modules live under the
    install prefix. Unset if Python is not available.
  * `PARAVIEW_PLUGIN_SUBDIR`: The subdirectory under the library directory for
    plugins.
  * `ParaView_CLIENT_XML_FILES`: XML files for client applications to use to
    reproduce ParaView's menu items. Only provided if `PARAVIEW_USE_QT`
    is set.
  * `ParaView_LIBRARIES`: The list of modules specified by `COMPONENTS` and
    `OPTIONAL_COMPONENTS`. This may be used in `MODULES` arguments in the API
    (e.g., `vtk_module_autoinit`). All modules are also targets and may be
    linked to using `target_link_libraries`.
  * `ParaView_CATALYST_DIR`: The directory to the ParaView Catalyst
    implementation (if present).
  * `ParaView_QCH_FILES`: QCH help files for the documentation. For now, it contains only the
    location of the paraview.qch.
#]==]

if (CMAKE_VERSION VERSION_LESS "3.12")
  set("${CMAKE_FIND_PACKAGE_NAME}_FOUND" 0)
  set("${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE"
    "ParaView requires CMake 3.12 in order to reliably be used.")
  return ()
endif ()

cmake_policy(PUSH)
cmake_policy(VERSION 3.12)

set(${CMAKE_FIND_PACKAGE_NAME}_CMAKE_MODULE_PATH_save "${CMAKE_MODULE_PATH}")
list(INSERT CMAKE_MODULE_PATH 0
  "${CMAKE_CURRENT_LIST_DIR}")

set("${CMAKE_FIND_PACKAGE_NAME}_CMAKE_PREFIX_PATH_save" "${CMAKE_PREFIX_PATH}")
include("${CMAKE_CURRENT_LIST_DIR}/paraview-prefix.cmake")
set("${CMAKE_FIND_PACKAGE_NAME}_PREFIX_PATH"
  "${_vtk_module_import_prefix}")
unset(_vtk_module_import_prefix)
list(INSERT CMAKE_PREFIX_PATH 0
  "${${CMAKE_FIND_PACKAGE_NAME}_PREFIX_PATH}")

set("${CMAKE_FIND_PACKAGE_NAME}_VERSION" "5.13.2-1216-gfdbfad1b23")
set("${CMAKE_FIND_PACKAGE_NAME}_VERSION_SIMPLE" "5.13")
set("${CMAKE_FIND_PACKAGE_NAME}_VERSION_MAJOR" "5")
set("${CMAKE_FIND_PACKAGE_NAME}_VERSION_MINOR" "13")
set("${CMAKE_FIND_PACKAGE_NAME}_VERSION_PATCH" "2")

unset("${CMAKE_FIND_PACKAGE_NAME}_FOUND")

set(_paraview_use_external_vtk "ON")
set(_paraview_find_package_args)
if (${CMAKE_FIND_PACKAGE_NAME}_FIND_QUIETLY)
  list(APPEND _paraview_find_package_args
    QUIET)
endif ()
if (NOT _paraview_use_external_vtk)
  list(APPEND _paraview_find_package_args
    PATHS "${CMAKE_CURRENT_LIST_DIR}/vtk"
    NO_DEFAULT_PATH)
  # Find VTK with just `CommonCore` to get the available targets first. Only
  # required for a vendored VTK since external targets are not checked by CMake
  # later.
  find_package(VTK REQUIRED
    ${_paraview_find_package_args}
    COMPONENTS CommonCore)
endif ()
unset(_paraview_use_external_vtk)

set(PARAVIEW_USE_QT "OFF")
set(PARAVIEW_QT_MAJOR_VERSION "")
set(PARAVIEW_USE_MPI "OFF")
set(PARAVIEW_USE_PYTHON "ON")
set(PARAVIEW_USE_SERIALIZATION "OFF")
set(PARAVIEW_USE_QTWEBENGINE "OFF")
set(PARAVIEW_PLUGIN_SUBDIR "paraview-5.13/plugins")

if (PARAVIEW_USE_PYTHON)
  set(PARAVIEW_PYTHONPATH "Lib/site-packages")
  include("${CMAKE_CURRENT_LIST_DIR}/ParaViewPython-targets.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/ParaViewPythonIncubator-targets.cmake")
  # Unset this for now; these targets will be defined later.
  unset("${CMAKE_FIND_PACKAGE_NAME}_FOUND")
  unset("${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE")
endif ()

include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}-targets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}-vtk-module-properties.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/paraview-find-package-helpers.cmake" OPTIONAL)
include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}-vtk-module-find-packages.cmake")

if ("INCUBATOR" IN_LIST "${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS")
  list(REMOVE_ITEM "${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS"
    INCUBATOR)
  # This component is always found.
  set("${CMAKE_FIND_PACKAGE_NAME}_INCUBATOR_FOUND" 1)

  include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Incubator-targets.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Incubator-vtk-module-properties.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Incubator-vtk-module-find-packages.cmake")
else ()
  include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Incubator-targets.cmake")

  set("${CMAKE_FIND_PACKAGE_NAME}_INCUBATOR_FOUND" 0)
  set("${CMAKE_FIND_PACKAGE_NAME}_INCUBATOR_NOT_FOUND_MESSAGE" "the `INCUBATOR` component was not requested")
endif ()

include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Plugins-paraview_plugins-targets-depends.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Plugins-targets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Plugins-paraview-plugin-properties.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Clients-targets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Clients-vtk-module-properties.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/ParaViewTools-targets.cmake" OPTIONAL)

# Gather the list of required VTK components.
set(_paraview_vtk_components_to_request_required)
set(_paraview_vtk_components_to_request_optional)
if (${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS)
  set(_paraview_search_components
    "${${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS}")
else ()
  set(_paraview_search_components
    "WrapClientServer;smTestDriver;PythonInterpreterPath;PythonInitializer;ProcessXML;CinemaSci;CinemaPython;RemotingViewsPython;RemotingServerManagerPython;RemotingMisc;RemotingLive;RemotingImport;RemotingExport;RemotingApplication;RemotingSettings;RemotingAnimation;RemotingViews;VTKExtensionsInteractionStyle;RemotingServerManager;protobuf;PVWebPython;VTKExtensionsPoints;VTKExtensionsIOSPCTH;VTKExtensionsIOImport;VTKExtensionsIOImage;VTKExtensionsIOGeneral;VTKExtensionsIOExodus;VTKExtensionsIOEnSight;VTKExtensionsIOCGNSWriter;VTKExtensionsIOAMR;VTKExtensionsIOCore;VTKExtensionsFiltersStatistics;VTKExtensionsFiltersPython;VTKExtensionsFiltersParallelDIY2;VTKExtensionsFiltersParallel;VTKExtensionsFiltersMaterialInterface;VTKExtensionsFiltersGeneral;VTKExtensionsFiltersRendering;VTKExtensionsMisc;RemotingCore;RemotingClientServerStream;VTKExtensionsFiltersFlowPaths;VTKExtensionsExtractionPython;VTKExtensionsExtraction;VTKExtensionsCore;Versioning;VTKExtensionsAMR;AdaptorsPython;ClientsWeb;PythonCatalyst;InSitu;Catalyst")
endif ()
foreach (_paraview_component IN LISTS "${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS")
  # Ignore non-existent components here.
  if (NOT TARGET "ParaView::${_paraview_component}")
    continue ()
  endif ()

  # Get all module dependencies.
  get_property(_paraview_component_depends
    TARGET "ParaView::${_paraview_component}"
    PROPERTY "INTERFACE_vtk_module_depends")
  get_property(_paraview_component_private_depends
    TARGET "ParaView::${_paraview_component}"
    PROPERTY "INTERFACE_vtk_module_private_depends")
  get_property(_paraview_component_optional_depends
    TARGET "ParaView::${_paraview_component}"
    PROPERTY "INTERFACE_vtk_module_optional_depends")

  # Keep only VTK dependencies.
  set(_paraview_component_vtk_depends
    ${_paraview_component_depends}
    ${_paraview_component_private_depends})
  set(_paraview_component_vtk_optional_depends
    ${_paraview_component_optional_depends})
  list(FILTER _paraview_component_vtk_depends INCLUDE REGEX "^VTK::")
  list(FILTER _paraview_component_vtk_optional_depends INCLUDE REGEX "^VTK::")
  string(REPLACE "VTK::" "" _paraview_component_vtk_depends "${_paraview_component_vtk_depends}")
  string(REPLACE "VTK::" "" _paraview_component_vtk_optional_depends "${_paraview_component_vtk_optional_depends}")
  if (${CMAKE_FIND_PACKAGE_NAME}_FIND_REQUIRED_${_paraview_component})
    list(APPEND _paraview_vtk_components_to_request_required
      ${_paraview_component_vtk_depends})
  else ()
    list(APPEND _paraview_vtk_components_to_request_optional
      ${_paraview_component_vtk_depends})
  endif ()
  list(APPEND _paraview_vtk_components_to_request_optional
    ${_paraview_component_vtk_optional_depends})
endforeach ()
unset(_paraview_component)
unset(_paraview_component_depends)
unset(_paraview_component_private_depends)
unset(_paraview_component_optional_depends)
unset(_paraview_component_vtk_optional_depends)
unset(_paraview_component_vtk_depends)

# Remove duplicate component requests.
if (_paraview_vtk_components_to_request_required)
  list(REMOVE_DUPLICATES _paraview_vtk_components_to_request_required)
endif ()
if (_paraview_vtk_components_to_request_optional)
  list(REMOVE_DUPLICATES _paraview_vtk_components_to_request_optional)
endif ()
# Modules which are required should be removed from the optional component
# list.
if (_paraview_vtk_components_to_request_required)
  list(REMOVE_ITEM _paraview_vtk_components_to_request_optional
    ${_paraview_vtk_components_to_request_required})
endif()

# Now find VTK with all of the components we require.
find_package(VTK REQUIRED
  ${_paraview_find_package_args}
  COMPONENTS ${_paraview_vtk_components_to_request_required}
  OPTIONAL_COMPONENTS ${_paraview_vtk_components_to_request_optional})
if (NOT VTK_FOUND)
  set("${CMAKE_FIND_PACKAGE_NAME}_FOUND" 0)
endif ()
unset(_paraview_find_package_args)
unset(_paraview_vtk_components_to_request_required)
unset(_paraview_vtk_components_to_request_optional)

include("${CMAKE_CURRENT_LIST_DIR}/ParaViewClient.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/ParaViewPlugin.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/ParaViewServerManager.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/ParaViewTesting.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/vtkModuleWrapClientServer.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/ParaViewTranslations.cmake")

if (0) # paraview_has_catalyst
  set("${CMAKE_FIND_PACKAGE_NAME}_CATALYST_DIR"
    "${${CMAKE_FIND_PACKAGE_NAME}_PREFIX_PATH}/")
endif ()

if (ON) # PARAVIEW_USE_PYTHON
  include("${CMAKE_CURRENT_LIST_DIR}/paraview.modules-vtk-python-module-properties.cmake")

  if(${CMAKE_FIND_PACKAGE_NAME}_INCUBATOR_FOUND)
    include("${CMAKE_CURRENT_LIST_DIR}/paraview.incubator-vtk-python-module-properties.cmake")
  endif ()
endif ()

if (OFF) # PARAVIEW_USE_QT
  include("${CMAKE_CURRENT_LIST_DIR}/${CMAKE_FIND_PACKAGE_NAME}Client-targets.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/ParaView-client-xml.cmake")
  # expose qch location via ParaView_QCH_FILES property
  include("${CMAKE_CURRENT_LIST_DIR}/ParaView-client-qch.cmake")
endif ()

set(_paraview_components_to_check)
foreach (_paraview_component IN LISTS "${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS")
  if (DEFINED "${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_FOUND")
    # It was already not-found (likely due to `find-package` failures).
  elseif (TARGET "${CMAKE_FIND_PACKAGE_NAME}::${_paraview_component}")
    list(APPEND _paraview_components_to_check
      "${_paraview_component}")
  else ()
    set("${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_FOUND" 0)
    list(APPEND "${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_NOT_FOUND_MESSAGE"
      "The ${_paraview_component} component is not available.")
  endif ()
endforeach ()
unset(_paraview_component)

set(_paraview_vtk_components)

while (_paraview_components_to_check)
  list(GET _paraview_components_to_check 0 _paraview_component)
  list(REMOVE_AT _paraview_components_to_check 0)
  if (DEFINED "${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_FOUND")
    # We've already made a determiniation.
    continue ()
  endif ()

  get_property(_paraview_dependencies
    TARGET    "${CMAKE_FIND_PACKAGE_NAME}::${_paraview_component}"
    PROPERTY  "INTERFACE_paraview_module_depends")
  string(REPLACE "${CMAKE_FIND_PACKAGE_NAME}::" "" _paraview_dependencies "${_paraview_dependencies}")
  set(_paraview_all_dependencies_checked TRUE)
  foreach (_paraview_dependency IN LISTS _paraview_dependencies)
    # Handle VTK module dependencies.
    string(FIND "${_paraview_component}" "VTK::" _paraview_vtk_idx)
    if (NOT _paraview_vtk_idx EQUAL -1)
      unset(_paraview_vtk_idx)
      if (NOT TARGET "${_paraview_dependency}")
        set("${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_FOUND" 0)
        list(APPEND "${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_NOT_FOUND_MESSAGE"
          "Failed to find the ${_paraview_dependency} module.")
      endif ()
      continue ()
    endif ()
    unset(_paraview_vtk_idx)

    if (DEFINED "${CMAKE_FIND_PACKAGE_NAME}_${_paraview_dependency}_FOUND")
      if (NOT ${CMAKE_FIND_PACKAGE_NAME}_${_paraview_dependency}_FOUND)
        set("${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_FOUND" 0)
        list(APPEND "${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_NOT_FOUND_MESSAGE"
          "Failed to find the ${_paraview_dependency} component.")
      endif ()
    else ()
      # Check its dependencies.
      list(APPEND _paraview_components_to_check
        "${_paraview_dependency}")
      set(_paraview_all_found FALSE)
    endif ()
  endforeach ()
  if (NOT DEFINED "${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_FOUND")
    if (_paraview_all_dependencies_checked)
      set("${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_FOUND" 1)
    else ()
      list(APPEND _paraview_components_to_check
        "${_paraview_component}")
    endif ()
  endif ()
  unset(_paraview_all_dependencies_checked)
  unset(_paraview_dependency)
  unset(_paraview_dependencies)
endwhile ()
unset(_paraview_component)
unset(_paraview_components_to_check)

set(_paraview_missing_components)
foreach (_paraview_component IN LISTS "${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS")
  if (NOT ${CMAKE_FIND_PACKAGE_NAME}_${_paraview_component}_FOUND AND ${CMAKE_FIND_PACKAGE_NAME}_FIND_REQUIRED_${_paraview_component})
    list(APPEND _paraview_missing_components
      "${_paraview_component}")
  endif ()
endforeach ()

if (_paraview_missing_components)
  list(REMOVE_DUPLICATES _paraview_missing_components)
  list(SORT _paraview_missing_components)
  string(REPLACE ";" ", " _paraview_missing_components "${_paraview_missing_components}")
  set("${CMAKE_FIND_PACKAGE_NAME}_FOUND" 0)
  set("${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE"
    "Could not find the ${CMAKE_FIND_PACKAGE_NAME} package with the following required components: ${_paraview_missing_components}.")
endif ()
unset(_paraview_missing_components)

set("${CMAKE_FIND_PACKAGE_NAME}_LIBRARIES")
if (NOT DEFINED "${CMAKE_FIND_PACKAGE_NAME}_FOUND")
  # If nothing went wrong, we've successfully found the package.
  set("${CMAKE_FIND_PACKAGE_NAME}_FOUND" 1)
  # Build the `_LIBRARIES` variable.
  foreach (_paraview_component IN LISTS "${CMAKE_FIND_PACKAGE_NAME}_FIND_COMPONENTS")
    list(APPEND "${CMAKE_FIND_PACKAGE_NAME}_LIBRARIES"
      "${CMAKE_FIND_PACKAGE_NAME}::${_paraview_component}")
  endforeach ()
  unset(_paraview_component)
endif ()

set(CMAKE_PREFIX_PATH "${${CMAKE_FIND_PACKAGE_NAME}_CMAKE_PREFIX_PATH_save}")
unset("${CMAKE_FIND_PACKAGE_NAME}_CMAKE_PREFIX_PATH_save")

set(CMAKE_MODULE_PATH "${${CMAKE_FIND_PACKAGE_NAME}_CMAKE_MODULE_PATH_save}")
unset(${CMAKE_FIND_PACKAGE_NAME}_CMAKE_MODULE_PATH_save)

# Compatibility with old code.
if (NOT ${CMAKE_FIND_PACKAGE_NAME}_FIND_VERSION)
  set(PARAVIEW_USE_FILE "${CMAKE_CURRENT_LIST_DIR}/paraview-use-file-deprecated.cmake")
elseif (${CMAKE_FIND_PACKAGE_NAME}_FIND_VERSION VERSION_LESS 5.7)
  set(PARAVIEW_USE_FILE "${CMAKE_CURRENT_LIST_DIR}/paraview-use-file-compat.cmake")
else ()
  set(PARAVIEW_USE_FILE "${CMAKE_CURRENT_LIST_DIR}/paraview-use-file-error.cmake")
endif ()

# 5.8 renamed these variables, so provide them if 5.8 is not the minimum
# requested.
if (NOT ${CMAKE_FIND_PACKAGE_NAME}_FIND_VERSION OR
    ${CMAKE_FIND_PACKAGE_NAME}_FIND_VERSION VERSION_LESS "5.8")
  set(PARAVIEW_BUILD_QT_GUI "${PARAVIEW_USE_QT}")
  set(PARAVIEW_ENABLE_PYTHON "${PARAVIEW_USE_PYTHON}")
endif ()

cmake_policy(POP)
