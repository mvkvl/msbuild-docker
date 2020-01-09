#FROM mcr.microsoft.com/windows/servercore:1809
FROM mvkvl/dotnet:1809-4.5.2

SHELL ["powershell", "-ExecutionPolicy", "Bypass"]

ADD files/vs_community_2015u3_x64.exe           vs_community_2015u3_x64.exe
ADD files/VS_2015_INSTALL.xml                   VS_2015_INSTALL.xml
ADD files/MSBuild.Extension.Pack.4.0.13.0       MSBuild.Extension.Pack.4.0.13.0

RUN echo "msvsInstall"                                                                              ; \
    ".\vs_community_2015u3_x64.exe /AdminFile c:\VS_2015_INSTALL.xml /norestart /silent /CustomInstallPath c:\msvs2015 /Log c:\install_log\msvs_install.log | out-null" ; \
    rm VS_2015_INSTALL.xml                                                                          ; \
    rm vs_community_2015u3_x64.exe                                                                  ; \
    Install-Package -Force ".\MSBuild.Extension.Pack.4.0.13.0\x86\MSBuild_Extension_Pack_4_x86.msi" ; \
    Install-Package -Force ".\MSBuild.Extension.Pack.4.0.13.0\x64\MSBuild_Extension_Pack_4_x64.msi" ; \
    Remove-Item -recurse -path C:\MSBuild.Extension.Pack.4.0.13.0                                   ; \
    echo "done!"

CMD ["cmd"]
