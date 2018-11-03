#include <iostream>

#include "version.h"

int main(int argc, char *argv[])
{
    std::cout << APP_PRODUCT << std::endl;
    std::cout << APP_VERSION << std::endl;
    std::cout << VER_REV << std::endl;

    return 0;
}
