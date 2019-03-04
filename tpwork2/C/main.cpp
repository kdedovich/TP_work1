#include "main.h"

int main() {
   int a, b;
   std::cin >> a >> b;
   std::cout << "sum = " << sum(a, b) << "\n";
   std::cout << "min = " << min(a, b) << "\n";
   std::cout << "max = " << max(a, b) << "\n";
   return 0;
}
