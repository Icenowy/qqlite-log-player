#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
	if(argc < 2) return 1;
	int pos = 0;
	char ch;
	int len = strlen(argv[1]);
	while((ch = getchar()) != EOF) {
		if(ch == '\n') {
			pos = 0;
			putchar('\n');
		} else {
			putchar(ch ^ argv[1][pos % len]);
			pos++;
		}
	}
	return 0;
}
