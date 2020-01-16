/*
** EPITECH PROJECT, 2019
** asm
** File description:
** main.c
*/

#include <stdlib.h>
#include <stdio.h>

extern size_t strlen(const char *s);
extern int strcmp(const char *s1, const char *s2);
extern int strncmp(const char *s1, const char *s2, size_t n);
extern void *memcpy(void *dest, const void *src, size_t n);
extern void *memset(void *s, int c, size_t n);
extern char *rindex(const char *s, int c);
extern char *strchr(const char *s, int c);
extern int strcasecmp(const char *s1, const char *s2);

int main(void)
{
    //char *test = malloc(sizeof(char) * 100);
    //printf("%d", strlen("test1234"));
    //printf("%d", strcmp("testzez", "test"));
    
    /* printf("%d\n", strncmp("abc", "acb", 0)); */
    /* printf("%d\n", strncmp("abc", "acb", 1)); */
    /* printf("%d\n", strncmp("abc", "acb", 2)); */
    /* printf("%d\n", strncmp("abc", "acb", 3)); */

    //printf("%d\n", strcasecmp("HEL", "HEOIZAOI"));

    //memcpy()
    //free(test);

    const char s[] = "hello";
    char *p = strchr(s, 'l');
    *p = 'L';
    printf("s = \"%s\"\n", s);
    
    return 0;
}
