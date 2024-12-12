# Hello-World-Pipeline

1. **NASM** (Netwide Assembler) - pentru compilarea fișierului Assembly în obiectul binar.
   - Descarcă de la: [https://www.nasm.us](https://www.nasm.us)
   - Asigură-te că adaugi NASM în variabila de mediu PATH.
    nasm -f win64 hello.asm

2. **GCC** (GNU Compiler Collection) - pentru legarea fișierelor obiect într-un executabil.
   - Poți instala MinGW sau TDM-GCC pentru a obține `gcc` pe Windows.
   - Asigură-te că adaugi GCC în variabila de mediu PATH.
    gcc -o  hello.exe hello.obj -nostdlib -lkernel32


.\hello.exe  ; testare script asm


Fișierul pipeline.bat este un script batch care automatizează procesul de compilare, legare și testare a programului Assembly. Acesta include patru pași principali:

    Compilarea fișierului Assembly cu NASM într-un fișier obiect.
    Legarea fișierului obiect cu GCC pentru a crea executabilul hello.exe.
    Rularea executabilului și capturarea output-ului.
    Testarea output-ului pentru a verifica dacă este corect (așteptând mesajul "Hello, World!").
    
.\pipeline.bat  ; testare intreg proces local

Acest repository este configurat să folosească un self-hosted runner pentru execuția workflow-urilor GitHub Actions. Un runner self-hosted permite rularea workflow-urilor pe mașina sau serverul nostru, oferind mai mult control asupra mediului de execuție.
Această comandă pornește runner-ul ca un serviciu de fundal. Odată pornit, runner-ul va prelua automat job-urile asignate de GitHub.
.\svc.sh start

deschis ca si terminal:
./run.cmd