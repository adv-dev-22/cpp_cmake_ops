#include <iostream>
#include "utils.h"

int main(int arc, char *argv[])
{
    const int a = 1;
    const int b = 2;
    const int sum_ab_1 = a + b;
    const int sum_ab_f = sum(a, b);

    std::cout << " a + b  = " << sum_ab_1 << std::endl;
    std::cout << " sum ab = " << sum_ab_f << std::endl;

    return 0;
}