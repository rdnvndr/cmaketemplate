#include <iostream>

#include <lib_shared/lib_shared.h>
#include <lib_static/lib_static.h>
#include <thirdpartyexample/thirdpartyexample.h>

int main(int argc, char *argv[])
{
    std::cout << APP_PRODUCT << std::endl;
    std::cout << APP_VERSION << std::endl;

    LibShared *libShared = new LibShared();
    libShared->print();
    delete libShared;

    LibStatic *libStatic = new LibStatic();
    libStatic->print();
    delete libStatic;

    ThirdPartyExample *thirdParty = new ThirdPartyExample();
    thirdParty->print();
    delete thirdParty;

    return 0;
}
