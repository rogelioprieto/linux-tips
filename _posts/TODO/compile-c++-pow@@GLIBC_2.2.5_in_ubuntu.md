## Problem:


## Problem:
Compile a `.cpp` file and get this error:

NOTE!!!! CHANGE THIS CODEEEEE EXAMPLEEEEEE!!!!!!!!!!!!!!
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
undefined reference to symbol 'pow@@GLIBC_2.2.5'
```

## Solution:
```bash
gcc myfile.cpp -lm -o myfile
```

