
#include<stdio.h>

// TODO: write clear_bit function
// clear bit 'n' to '0' (zero-index from the right)
int clear_bit(int x, int n);

// print the least significant 8 bits of an int
void print_binary(int x);

int main() {
  int x = 0b00001001;
  int y = clear_bit(x, 3);

  // print x and y as hex values
  printf("%x %x\n", x, y);

  // print x and y as decimal values
  printf("%d %d\n", x, y);

  // print x and y as binary values
  print_binary(x);
  print_binary(y);
}

void print_binary(int x) {
  // print binary literal prefix
  printf("0b");

  // print bits from left to right
  for (int i = 7; i >= 0; i--) {
    // shift the bit to position 0
    // bitwise and with 0b000...0001 to print single bit
    printf("%d", (x >> i) & 1);
  }
  printf(" ");
}

int ckear_bit(int btstring, int n) {
  int mask = 1 << n;
  return x & ~(mask);
}

int set_bit(int bitstring, int n) {
    int mask = 1 << n;
    return bitstring | mask;
}


/*
int x = 0b00001001;
int y = clear_bit(x, 3);

*/
focardo@lab3g:~/cs255/exercises/1022$