@echo off
echo Starting pipeline...

:: Step 1: Compile Assembly
nasm -f win64 hello.asm -o hello.obj
if %errorlevel% neq 0 (
    echo ERROR: Assembly compilation failed!
    exit /b 1
)

:: Step 2: Link with GCC
gcc -o hello.exe hello.obj -nostdlib -lkernel32
if %errorlevel% neq 0 (
    echo ERROR: Linking failed!
    exit /b 1
)

:: Step 3: Run and Capture Output
for /f "tokens=* delims=" %%A in ('hello.exe') do set output=%%A
set expected=Hello, World!

:: Step 4: Test Output
echo Output: %output%
if "%output%"=="%expected%" (
    echo Test passed!
    exit /b 0
) else (
    echo Test failed. Output was: %output%
    exit /b 1
)
