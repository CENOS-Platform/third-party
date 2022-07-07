#-----------------------------------------------------------------------------
#
# OpenCASCADECompileDefinitionsAndFlags-debug.cmake - OpenCASCADE CMake file 
# with compile definitions and C/C++ flags for Debug configuration.
#
# This file is configured by OpenCASCADE.
#

# The C and C++ flags added by OpenCASCADE to the cmake-configured flags.
set (OpenCASCADE_C_FLAGS_DEBUG      "/MDd /Zi /Ob0 /Od /RTC1")
set (OpenCASCADE_CXX_FLAGS_DEBUG    "/MDd /Zi /Ob0 /Od /RTC1")

# The compile definitions used by OpenCASCADE.
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:UNICODE>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:_UNICODE>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:_CRT_SECURE_NO_WARNINGS>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:_CRT_NONSTDC_NO_DEPRECATE>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:HAVE_TK>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:HAVE_FREETYPE>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:HAVE_VTK>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:vtkDomainsChemistry_AUTOINIT=1\(vtkDomainsChemistryOpenGL2\)>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:vtkIOExport_AUTOINIT=2\(vtkIOExportOpenGL2,vtkIOExportPDF\)>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:vtkRenderingContext2D_AUTOINIT=1\(vtkRenderingContextOpenGL2\)>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:vtkRenderingCore_AUTOINIT=3\(vtkInteractionStyle,vtkRenderingFreeType,vtkRenderingOpenGL2\)>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:vtkRenderingOpenGL2_AUTOINIT=1\(vtkRenderingGL2PSOpenGL2\)>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:vtkRenderingVolume_AUTOINIT=1\(vtkRenderingVolumeOpenGL2\)>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:HAVE_OPENGL_EXT>)
set_property(DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS $<$<CONFIG:Debug>:VTK_OPENGL2_BACKEND>)

