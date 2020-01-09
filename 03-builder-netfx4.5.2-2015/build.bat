@echo "RELEASE : %RELEASE%"
@echo "FLAGS   : %FLAGS%"
@echo "SRCDIR  : %SRCDIR%"
@echo "C-API   : %C_API_REPO%"

@rem git clone https://github.com/mvkvl/dxfeed-net-api.git && ^
@rem cd %SRCDIR% && ^
@rem git clone %C_API_REPO% && ^
@rem cd dxfeed-c-api && ^
@rem git checkout tags/%RELEASE% -b %RELEASE% && ^
@rem cd .. && ^
@rem echo "--------------------------------------------" && ^
@rem dir && ^
@cd %SRCDIR%
@.\make_package.bat %RELEASE% %FLAGS%


