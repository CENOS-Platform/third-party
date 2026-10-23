set NGSCXX_DIR=%~dp0
call "VCVARSALL-NOTFOUND" amd64

 for /f  %%a in ('python -c "import sys,os; print(os.path.join(sys.base_prefix, 'libs'))"') do set PYTHON_LIBDIR="%%a"

link /DLL %*  -LD:/source/cenos/backend/third-party/python/Library/lib -l_rt /LIBPATH:"%NGSCXX_DIR%/../lib" nglib.lib ngcore.lib libngsolve.lib /LIBPATH:"%PYTHON_LIBDIR%"
