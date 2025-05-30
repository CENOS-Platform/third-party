set(NETGEN_VERSION "6.2.2501-45-g421c10b1")
set(NETGEN_VERSION_MAJOR "6")
set(NETGEN_VERSION_MINOR "2")
set(NETGEN_VERSION_PATCH "2501")
set(NETGEN_VERSION_TWEAK "45")

get_filename_component(NETGEN_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

get_filename_component(NETGEN_DIR "${NETGEN_CMAKE_DIR}/../" ABSOLUTE)

set(NETGEN_COMPILE_DEFINITIONS "$<$<CONFIG:Release>:UNICODE>;$<$<CONFIG:Release>:_UNICODE>;$<$<CONFIG:Release>:_CRT_SECURE_NO_WARNINGS>;$<$<CONFIG:Release>:_CRT_NONSTDC_NO_DEPRECATE>;$<$<CONFIG:Release>:HAVE_VTK>;$<$<CONFIG:Release>:VTK_OPENGL2_BACKEND>;OCCGEOMETRY")

get_filename_component(NETGEN_INCLUDE_DIR "${NETGEN_CMAKE_DIR}/../include" ABSOLUTE)
get_filename_component(NETGEN_BINARY_DIR "${NETGEN_CMAKE_DIR}/../bin" ABSOLUTE)
get_filename_component(NETGEN_LIBRARY_DIR "${NETGEN_CMAKE_DIR}/../lib" ABSOLUTE)
get_filename_component(NETGEN_PYTHON_DIR "${NETGEN_CMAKE_DIR}/../lib/site-packages" ABSOLUTE)
get_filename_component(NETGEN_RESOURCE_DIR "${NETGEN_CMAKE_DIR}/../share" ABSOLUTE)

set(NETGEN_SOURCE_DIR "D:/source/ngsolve/external_dependencies/netgen")

set(NETGEN_BUILD_FOR_CONDA "OFF")
set(NETGEN_CHECK_RANGE "ON")
set(NETGEN_INCLUDE_DIRS "${NETGEN_INCLUDE_DIR}/include;${NETGEN_INCLUDE_DIR}")
set(NETGEN_CMAKE_THREAD_LIBS_INIT "")
set(NETGEN_FFMPEG_LIBRARIES "")
set(NETGEN_JPEG_INCLUDE_DIR "")
set(NETGEN_JPEG_LIBRARIES "")
set(NETGEN_LIBTOGL "")
set(NETGEN_METIS_INCLUDE_DIR "")
set(NETGEN_METIS_LIBRARY "")
set(NETGEN_MKL_LIBRARIES "")
set(NETGEN_MPI_CXX_INCLUDE_PATH "")
set(NETGEN_MPI_CXX_LIBRARIES "")
set(NETGEN_NUMA_LIBRARY "")
set(NETGEN_OCC_DIR "")
set(NETGEN_OCC_INCLUDE_DIR "D:/source/cenos/backend/third-party/OpenCASCADE/OpenCASCADE-Release/inc")
set(NETGEN_OCC_LIBRARIES_BIN "D:/source/cenos/backend/third-party/OpenCASCADE/OpenCASCADE-Release/win64/vc14/bin")
set(NETGEN_OCC_LIBRARIES "TKBO;TKBRep;TKBool;TKCAF;TKCDF;TKFillet;TKG2d;TKG3d;TKGeomAlgo;TKGeomBase;TKHLR;TKLCAF;TKMath;TKMesh;TKOffset;TKPrim;TKService;TKShHealing;TKTopAlgo;TKV3d;TKVCAF;TKXCAF;TKXSBase;TKernel;TKIGES;TKSTEP;TKSTL;TKXDEIGES;TKXDESTEP;TKSTEP209;TKSTEPAttr;TKSTEPBase")
set(NETGEN_OCC_LIBRARY_DIR "D:/source/cenos/backend/third-party/OpenCASCADE/OpenCASCADE-Release/win64/vc14/lib")
set(NETGEN_OPENGL_LIBRARIES "opengl32;glu32")
set(NETGEN_PYTHON_EXECUTABLE "D:/source/cenos/backend/third-party/python/python.exe")
set(NETGEN_PYTHON_INCLUDE_DIRS "D:/source/cenos/backend/third-party/python/include")
set(NETGEN_PYTHON_LIBRARIES "D:/source/cenos/backend/third-party/python/libs/python310.lib")
set(NETGEN_TCL_INCLUDE_PATH "D:/source/cenos/backend/temp/netgen/include")
set(NETGEN_TCL_LIBRARY "D:/source/cenos/backend/temp/netgen/lib/tclstub86.lib")
set(NETGEN_TK_DND_LIBRARY "")
set(NETGEN_TK_INCLUDE_PATH "D:/source/cenos/backend/temp/netgen/include")
set(NETGEN_TK_LIBRARY "D:/source/cenos/backend/temp/netgen/lib/tkstub86.lib")
set(NETGEN_X11_X11_LIB "")
set(NETGEN_X11_Xmu_LIB "")
set(NETGEN_ZLIB_INCLUDE_DIRS "D:/source/cenos/backend/temp/netgen/include")
set(NETGEN_ZLIB_LIBRARIES "D:/source/cenos/backend/temp/netgen/lib/zlib.lib")

set(NETGEN_USE_GUI ON)
set(NETGEN_USE_PYTHON ON)
set(NETGEN_USE_MPI OFF)
set(NETGEN_USE_OCC ON)
set(NETGEN_USE_JPEG OFF)
set(NETGEN_USE_MPEG OFF)
set(NETGEN_USE_CGNS OFF)
set(NETGEN_INTEL_MIC OFF)
set(NETGEN_INSTALL_PROFILES OFF)
set(NETGEN_USE_CCACHE OFF)
set(NETGEN_USE_NATIVE_ARCH OFF)
set(NETGEN_USE_NUMA OFF)

set(NETGEN_PYTHON_RPATH "../../bin")
set(NETGEN_RPATH_TOKEN "$ORIGIN")

set(NETGEN_INSTALL_DIR_PYTHON Lib/site-packages)
set(NETGEN_INSTALL_DIR_BIN bin)
set(NETGEN_INSTALL_DIR_LIB lib)
set(NETGEN_INSTALL_DIR_INCLUDE include)
set(NETGEN_INSTALL_DIR_CMAKE cmake)
set(NETGEN_INSTALL_DIR_RES share)

include(${CMAKE_CURRENT_LIST_DIR}/netgen-targets.cmake)
message(STATUS "Found Netgen: ${CMAKE_CURRENT_LIST_DIR}")
