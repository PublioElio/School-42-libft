<div id="header" align="center">
  <img src="https://media.giphy.com/media/ztl9x7JlhSlU4MWD6h/giphy.gif" width="200"/>
</div>

# libft
> School 42 cursus project

This repository contains all archives for the project __libft__ in the __School 42 core cursus__. It's a custom-made library of useful functions in __C language__. The repository includes the `Makefile` and the `libft.h` library.

## About the project 

This project is a __C library__ of useful functions that are allowed to be used in future __School 42 cursus__ projects. With access to this library, the coding proccess in incoming projects will be more effective. The aim of rewrite this functions is to get a better understanding of them, and get a whide range of utilities for the next projects. [You can find more information in the subject](https://github.com/PublioElio/School-42-libft/blob/main/libft_subject.pdf). As it's specified in the subjet, all the archives are in the same folder.

The code in this repository follows [the rules of the Norminette](https://github.com/PublioElio/School42-Piscina-agosto-2022/blob/main/norme.es.pdf).

## Function list:

### Functions from `<ctype.h>` library
* [`ft_isascii`](https://github.com/PublioElio/School-42-libft/blob/main/ft_isascii.c) - Test a character to see if it's a 7-bit ASCII character.
* [`ft_isalpha`](https://github.com/PublioElio/School-42-libft/blob/main/ft_isalpha.c) - Test a character to see if it's alphabetic.
* [`ft_isdigit`](https://github.com/PublioElio/School-42-libft/blob/main/ft_isdigit.c) - Test a character to see if it's a decimal digit.
* [`ft_isalnum`](https://github.com/PublioElio/School-42-libft/blob/main/ft_isalnum.c) - Test a character to see if it's alphanumeric.
* [`ft_isprint`](https://github.com/PublioElio/School-42-libft/blob/main/ft_isprint.c) - Test a character to see if it's any printable character, including a space.
* [`ft_tolower`](https://github.com/PublioElio/School-42-libft/blob/main/ft_tolower.c) - Convert a character to lowercase.
* [`ft_toupper`](https://github.com/PublioElio/School-42-libft/blob/main/ft_toupper.c) - Convert a character to uppercase.

### Functions from `<stdlib.h>` library
* [`ft_atoi`](https://github.com/PublioElio/School-42-libft/blob/main/ft_atoi.c) - Convert ASCII string to integer.
* [`ft_calloc`](https://github.com/PublioElio/School-42-libft/blob/main/ft_calloc.c) - Allocate space for an array.

### Functions from `<strings.h>` library
* [`ft_bzero`](https://github.com/PublioElio/School-42-libft/blob/main/ft_bzero.c) - Set the first part of an object to null bytes (filling it with zeroes).
* [`ft_memset`](https://github.com/PublioElio/School-42-libft/blob/main/ft_memset.c) - Set memory to a given value.
* [`ft_memchr`](https://github.com/PublioElio/School-42-libft/blob/main/ft_memchr.c) - Find the first occurrence of a character in a buffer (locate byte in byte string).
* [`ft_memcmp`](https://github.com/PublioElio/School-42-libft/blob/main/ft_memcmp.c) - Compare the bytes in two buffers.
* [`ft_memmove`](https://github.com/PublioElio/School-42-libft/blob/main/ft_memmove.c) - Copy bytes from one buffer to another, handling overlapping memory correctly.
* [`ft_memcpy`](https://github.com/PublioElio/School-42-libft/blob/main/ft_memcpy.c) - Copy bytes from one buffer to another.

### Functions from `<string.h>` library
* `ft_strlen` - find length of string.
* `ft_strchr` - locate character in string (first occurrence).
* `ft_strrchr` - locate character in string (last occurence).
* `ft_strnstr` - locate a substring in a string (size-bounded).
* `ft_strncmp` - compare strings (size-bounded).
* `ft_strdup` - save a copy of a string (with malloc).
* `ft_strlcpy` - size-bounded string copying.
* `ft_strlcat` - size-bounded string concatenation.

### Non-standard functions
* `ft_itoa` - convert integer to ASCII string.
* `ft_substr` - extract substring from string.
* `ft_strtrim` - trim beginning and end of string with the specified characters.
* `ft_strjoin` - concatenate two strings into a new string (with malloc).
* `ft_split` - split string, with specified character as delimiter, into an array of strings.
* `ft_strmapi` - create new string from modifying string with specified function.
* `ft_striteri` -
* `ft_putchar_fd` - output a character to given file.
* `ft_putstr_fd` - output string to given file.
* `ft_putendl_fd` - output string to given file with newline.
* `ft_putnbr_fd` - output integer to given file.

### Linked list functions *(bonus)*
* `ft_lstnew` - create new list.
* `ft_lstsize` - count elements of a list.
* `ft_lstlast` - find last element of list.
* `ft_lstadd_back` - add new element at end of list.
* `ft_lstadd_front` - add new element at beginning of list.
* `ft_lstdelone` - delete element from list.
* `ft_lstclear` - delete sequence of elements of list from a starting point.
* `ft_lstiter` - apply function to content of all list's elements.
* `ft_lstmap` - apply function to content of all list's elements into new list.

