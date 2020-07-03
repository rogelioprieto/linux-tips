## Problem:
Compile a `.cpp`file and get this error:


Trying to compile a file:
```cpp
#include <iostream>
using namespace std;
int main()
{
    cout << "Hola, mundo.\n";
}
```

You compile the file using gcc:
```bash
gcc myfile.cpp  -o myfile
```

then you get this error:
```bash
myfile.cpp:(.text+0x39): undefined reference to `std::cout'
```

## Solution:
```bash
gcc myfile.cpp -lstdc++ -o myfile
```
or 
```bash
gcc myfile.cpp -lm -lstdc++ -o myfile
```

## Source:
https://stackoverflow.com/questions/28236870/undefined-reference-to-stdcout



