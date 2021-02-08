#include <stdio.h>

int hello_there(void);

int main(void)
{
	hello_there();
	return 0;
}

int hello_there(void) {
	printf("hello world");
	return 0;
}
