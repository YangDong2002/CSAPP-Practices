#include <unistd.h>
int main() {
	write(1, "Hello world\n", 13);
	_exit(0);
}
