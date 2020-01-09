#FROM mcr.microsoft.com/windows/servercore:1809
FROM mvkvl/dotnet:1809-4.5.2

SHELL ["powershell", "-ExecutionPolicy", "Bypass"]

ADD files/MSBuild.Extension.Pack.4.0.13.0   MSBuild.Extension.Pack.4.0.13.0
ADD files/visualcppbuildtools_full.exe      visualcppbuildtools_full.exe

RUN echo "msbuildInstall"                                                                                          ; \
    ".\visualcppbuildtools_full.exe /InstallSelectableItems 'VisualCppBuildTools_ATLMFC_SDK;VisualCppBuildTools_NETFX_SDK' /NoRestart /Quiet /Log install_log\visualcppbuildtools.log | out-null" ; \
    rm visualcppbuildtools_full.exe                                                                                ; \
    Install-Package -Force ".\MSBuild.Extension.Pack.4.0.13.0\x86\MSBuild_Extension_Pack_4_x86.msi"                ; \
    Install-Package -Force ".\MSBuild.Extension.Pack.4.0.13.0\x64\MSBuild_Extension_Pack_4_x64.msi"                ; \
    Remove-Item -recurse -path C:\MSBuild.Extension.Pack.4.0.13.0                                                  ; \
    echo "done!"

CMD ["cmd"]





#ADD files/ms_build_tools_2015u3_x86_x64.exe ms_build_tools_2015u3_x86_x64.exe
#    ".\ms_build_tools_2015u3_x86_x64.exe /NoRestart /Silent /Full /Log install_log\BuildTools_Full.log | out-null" ; \
#    rm ms_build_tools_2015u3_x86_x64.exe                                                                           ; \
