echo off

rem CASDEB comes as third argument

if /I "%VCVER%" == "vc14" (
  if "%ARCH%" == "64" (
    rem set environment variables used by OCCT
    set CSF_FPE=0

    set "TCL_DIR=%THIRDPARTY_DIR%/tcl8.6.11/build/bin"
    set "TK_DIR=%THIRDPARTY_DIR%/tcl8.6.11/build/bin"
    set "FREETYPE_DIR=%THIRDPARTY_DIR%/freetype-2.10.4/bin"
    set "FREEIMAGE_DIR="
    set "EGL_DIR="
    set "GLES2_DIR="
    set "TBB_DIR="
    set "VTK_DIR=%THIRDPARTY_DIR%/vtk-8.2.0/out/install/x64-Release/bin"
    set "FFMPEG_DIR="
    set "OPENVR_DIR="

    if not "" == "" (
      set "QTDIR="
    )
    set "TCL_VERSION_WITH_DOT=8.6"
    set "TK_VERSION_WITH_DOT=8.6"

    set "CSF_OCCTBinPath=%CASROOT%/win64/vc14/bin%3"
    set "CSF_OCCTLibPath=%CASROOT%/win64/vc14/lib%3"

    set "CSF_OCCTIncludePath=%CASROOT%/inc"
    set "CSF_OCCTResourcePath=%CASROOT%/src"
    set "CSF_OCCTDataPath=%CASROOT%/data"
    set "CSF_OCCTSamplesPath=%CASROOT%/samples"
    set "CSF_OCCTTestsPath=%CASROOT%/tests"
    set "CSF_OCCTDocPath=%CASROOT%/doc"
  )
)

