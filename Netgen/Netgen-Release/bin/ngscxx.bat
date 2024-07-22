set NGSCXX_DIR=%~dp0
call "C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Auxiliary/Build/vcvarsall.bat" amd64

 cl /c /O2 /Ob2 /DNDEBUG "/bigobj"  /DHAVE_NETGEN_SOURCES /DUSE_TIMEOFDAY /DTCL /DLAPACK /DUSE_PARDISO /DNGS_PYTHON /DUSE_UMFPACK /DNETGEN_PYTHON /DNG_PYTHON /DPYBIND11_SIMPLE_GIL_MANAGEMENT /D_WIN32_WINNT=0x1000 /DWNT /DWNT_WINDOW /DNOMINMAX /DMSVC_EXPRESS /D_CRT_SECURE_NO_WARNINGS /DHAVE_STRUCT_TIMESPEC /DWIN32 /std:c++17 -DMAX_SYS_DIM=3  /I"D:/source/cenos/backend/third-party/python/Library/include" /I"D:/source/cenos/backend/third-party/python/include" /I"%NGSCXX_DIR%/../include" /I"%NGSCXX_DIR%/../include/include" %*
