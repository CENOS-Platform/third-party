set(PACKAGE_VERSION "6.2.2204-11-gdb3a28b41")
find_package(Netgen CONFIG REQUIRED HINTS
  ${CMAKE_CURRENT_LIST_DIR}
  ${CMAKE_CURRENT_LIST_DIR}/..
  ${CMAKE_CURRENT_LIST_DIR}/../netgen
)

get_filename_component(NGSOLVE_DIR  "${NETGEN_DIR}"  ABSOLUTE)

get_filename_component(NGSOLVE_INSTALL_DIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)
get_filename_component(NGSOLVE_INCLUDE_DIR  "${NETGEN_INCLUDE_DIR}"  ABSOLUTE)
get_filename_component(NGSOLVE_BINARY_DIR   "${NETGEN_BINARY_DIR}"   ABSOLUTE)
get_filename_component(NGSOLVE_LIBRARY_DIR  "${NETGEN_LIBRARY_DIR}"  ABSOLUTE)
get_filename_component(NGSOLVE_PYTHON_DIR   "${NETGEN_PYTHON_DIR}"   ABSOLUTE)
get_filename_component(NGSOLVE_RESOURCE_DIR "${NETGEN_RESOURCE_DIR}" ABSOLUTE)

set(NGSOLVE_INCLUDE_DIRS ";${NETGEN_INCLUDE_DIRS}")

set(NGSOLVE_CXX_COMPILER "C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/bin/Hostx64/x64/cl.exe")
set(NGSOLVE_CMAKE_BUILD_TYPE "RelWithDebInfo")

set(NGSOLVE_CMAKE_THREAD_LIBS_INIT "")
set(NGSOLVE_MKL_LIBRARIES "")
set(NGSOLVE_PYBIND_INCLUDE_DIR "")
set(NGSOLVE_PYTHON_INCLUDE_DIRS "C:/Users/User/AppData/Local/Programs/Python/Python310/include")
set(NGSOLVE_PYTHON_LIBRARIES "C:/Users/User/AppData/Local/Programs/Python/Python310/libs/python310.lib")
set(NGSOLVE_PYTHON_PACKAGES_INSTALL_DIR  "")
set(NGSOLVE_TCL_INCLUDE_PATH "D:/SOURCE/netgen/out/install/x64-RelWithDebInfo/include")
set(NGSOLVE_TCL_LIBRARY "D:/SOURCE/netgen/out/install/x64-RelWithDebInfo/lib/tclstub86.lib")
set(NGSOLVE_TK_DND_LIBRARY "")
set(NGSOLVE_TK_INCLUDE_PATH "D:/SOURCE/netgen/out/install/x64-RelWithDebInfo/include")
set(NGSOLVE_TK_LIBRARY "D:/SOURCE/netgen/out/install/x64-RelWithDebInfo/lib/tkstub86.lib")
set(NGSOLVE_X11_X11_LIB "")
set(NGSOLVE_X11_Xmu_LIB "")
set(NGSOLVE_ZLIB_INCLUDE_DIRS "D:/SOURCE/netgen/out/install/x64-RelWithDebInfo/include")
set(NGSOLVE_ZLIB_LIBRARIES "D:/SOURCE/netgen/out/install/x64-RelWithDebInfo/lib/zlib.lib")

set(NGSOLVE_INTEL_MIC       OFF)
set(NGSOLVE_USE_CCACHE OFF)
set(NGSOLVE_USE_CUDA        OFF)
set(NGSOLVE_USE_GUI ON)
set(NGSOLVE_USE_LAPACK      ON)
set(NGSOLVE_USE_MKL         OFF)
set(NGSOLVE_USE_MPI OFF)
set(NGSOLVE_USE_MUMPS       False)
set(NGSOLVE_USE_NUMA        )
set(NGSOLVE_USE_PARDISO     OFF)
set(NGSOLVE_USE_PYTHON ON)
set(NGSOLVE_USE_UMFPACK     ON)
set(NGSOLVE_USE_VT          )
set(NGSOLVE_USE_VTUNE       OFF)
set(NGSOLVE_MAX_SYS_DIM       3)

set(NGSOLVE_COMPILE_FLAGS " /DHAVE_NETGEN_SOURCES /DUSE_TIMEOFDAY /DTCL /DLAPACK /DNGS_PYTHON /DUSE_UMFPACK /DNETGEN_PYTHON /DNG_PYTHON /D_WIN32_WINNT=0x1000 /DWNT /DWNT_WINDOW /DNOMINMAX /DMSVC_EXPRESS /D_CRT_SECURE_NO_WARNINGS /DHAVE_STRUCT_TIMESPEC /DWIN32" CACHE STRING "Preprocessor definitions of ngscxx")
set(NGSOLVE_LINK_FLAGS " /LIBPATH:\"%NGSCXX_DIR%/../lib\" nglib.lib ngcore.lib libngsolve.lib /LIBPATH:\"%PYTHON_LIBDIR%\"" CACHE STRING "Link flags set in ngsld")
set(NGSOLVE_INCLUDE_DIRS C:/Users/User/AppData/Local/Programs/Python/Python310/include CACHE STRING "Include dirs set in ngscxx")

set(NGSOLVE_INSTALL_DIR_PYTHON  Lib/site-packages)
set(NGSOLVE_INSTALL_DIR_BIN     bin)
set(NGSOLVE_INSTALL_DIR_LIB     lib)
set(NGSOLVE_INSTALL_DIR_INCLUDE include)
set(NGSOLVE_INSTALL_DIR_CMAKE   cmake)
set(NGSOLVE_INSTALL_DIR_RES     share)

include(${CMAKE_CURRENT_LIST_DIR}/ngsolve-targets.cmake)

if(WIN32)
	# Libraries like ngstd, ngbla etc. are only dummy libs on Windows (there is only one library libngsolve.dll)
	# make sure that all those dummy libs link ngsolve when used with CMake
	target_link_libraries(ngstd INTERFACE ngsolve)
endif(WIN32)

if(NGSOLVE_USE_PYTHON)
  function(add_ngsolve_python_module target)
    if(NOT CMAKE_BUILD_TYPE)
      message(STATUS "Setting build type to NGSolve build type: ${NGSOLVE_CMAKE_BUILD_TYPE}")
      set(CMAKE_BUILD_TYPE ${NGSOLVE_CMAKE_BUILD_TYPE} PARENT_SCOPE)
    endif()
    add_library(${target} SHARED ${ARGN})

    find_package(PythonInterp 3 REQUIRED)
    find_package(PythonLibs 3 REQUIRED)
    target_include_directories(${target} PRIVATE ${PYTHON_INCLUDE_DIR})

    if(NETGEN_BUILD_FOR_CONDA)
        if(APPLE)
            target_link_options(${target} PUBLIC -undefined dynamic_lookup)
        endif(APPLE)
    else(NETGEN_BUILD_FOR_CONDA)
        target_link_libraries(${target} PUBLIC ${PYTHON_LIBRARY})
    endif(NETGEN_BUILD_FOR_CONDA)

    set_target_properties(${target} PROPERTIES PREFIX "" CXX_STANDARD 17)

    if(NETGEN_USE_GUI AND WIN32)
      target_link_libraries(${target} PUBLIC ngsolve)
    else(NETGEN_USE_GUI AND WIN32)
      target_link_libraries(${target} PUBLIC solve)
    endif(NETGEN_USE_GUI AND WIN32)

    if(WIN32)
      set_target_properties( ${target} PROPERTIES SUFFIX ".pyd" )
    else(WIN32)
      set_target_properties(${target} PROPERTIES SUFFIX ".so")
    endif(WIN32)

    set_target_properties(${target} PROPERTIES INSTALL_RPATH "${NGSOLVE_LIBRARY_DIR}")
endfunction()
endif(NGSOLVE_USE_PYTHON)