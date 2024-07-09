set NGSCXX_DIR=%~dp0
call "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Auxiliary/Build/vcvarsall.bat" amd64

 cl /c /O2 /Ob2 /DNDEBUG /DWIN32 /D_WINDOWS /GR /EHsc  /DHAVE_NETGEN_SOURCES /DUSE_TIMEOFDAY /DLAPACK /DUSE_PARDISO /DNGS_PYTHON /DNETGEN_PYTHON /DNG_PYTHON /DPYBIND11_SIMPLE_GIL_MANAGEMENT /D_WIN32_WINNT=0x1000 /DWNT /DWNT_WINDOW /DNOMINMAX /DMSVC_EXPRESS /D_CRT_SECURE_NO_WARNINGS /DHAVE_STRUCT_TIMESPEC /DWIN32 /DNETGEN_ENABLE_CHECK_RANGE /std:c++17 /bigobj /wd4068 -DMAX_SYS_DIM=3 /bigobj  /I"D:/source/cenos/backend/third-party/python/Library/include" /I"D:/source/cenos/backend/third-party/python/include" /I"%NGSCXX_DIR%/../include" /I"%NGSCXX_DIR%/../include/include" %*
