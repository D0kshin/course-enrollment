@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  course-enrollment startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and COURSE_ENROLLMENT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\course-enrollment-1.0-SNAPSHOT.jar;%APP_HOME%\lib\mariadb-java-client-3.1.4.jar;%APP_HOME%\lib\activejdbc-3.4-j11.jar;%APP_HOME%\lib\mysql-connector-java-5.1.34.jar;%APP_HOME%\lib\waffle-jna-3.2.0.jar;%APP_HOME%\lib\app-config-3.4-j11.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.36.jar;%APP_HOME%\lib\javalite-common-3.4-j11.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\jna-platform-5.12.1.jar;%APP_HOME%\lib\jna-5.12.1.jar;%APP_HOME%\lib\caffeine-2.9.3.jar;%APP_HOME%\lib\checker-qual-3.23.0.jar;%APP_HOME%\lib\dom4j-2.1.3.jar;%APP_HOME%\lib\jackson-databind-2.11.3.jar;%APP_HOME%\lib\log4j-core-2.19.0.jar;%APP_HOME%\lib\log4j-api-2.19.0.jar;%APP_HOME%\lib\error_prone_annotations-2.10.0.jar;%APP_HOME%\lib\stax-api-1.0-2.jar;%APP_HOME%\lib\xsdlib-2013.6.1.jar;%APP_HOME%\lib\jaxb-api-2.2.12.jar;%APP_HOME%\lib\pull-parser-2.jar;%APP_HOME%\lib\xpp3-1.1.4c.jar;%APP_HOME%\lib\jackson-annotations-2.11.3.jar;%APP_HOME%\lib\jackson-core-2.11.3.jar;%APP_HOME%\lib\jaxen-1.2.0.jar;%APP_HOME%\lib\relaxngDatatype-20020414.jar


@rem Execute course-enrollment
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %COURSE_ENROLLMENT_OPTS%  -classpath "%CLASSPATH%" ru.ac.uniyar.testingcourse.Main %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable COURSE_ENROLLMENT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%COURSE_ENROLLMENT_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
