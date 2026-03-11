# libft

A custom C library developed as part of the 42 curriculum.
This project consists of rebuilding a selected part of the standard C library, adding a few utility functions, and packaging everything into a reusable static library.

`libft` was designed to become a base toolkit for later 42 projects, with a focus on low-level programming, pointer manipulation, memory handling, and clean function design.

## Features
- Reimplementation of common libc-style functions
- Additional string and memory utilities
- Bonus singly linked list helpers
- Static library build with `make`

## Project structure
- `libft.h` — header file with prototypes and `t_list` definition
- `ft_*.c` — function implementations
- `Makefile` — builds the `libft.a` static library

## Mandatory part

### Character checks and conversions
- `ft_isalpha` — checks whether a character is alphabetic
- `ft_isdigit` — checks whether a character is a digit
- `ft_isalnum` — checks whether a character is alphanumeric
- `ft_isascii` — checks whether a character belongs to the ASCII table
- `ft_isprint` — checks whether a character is printable
- `ft_toupper` — converts a lowercase letter to uppercase
- `ft_tolower` — converts an uppercase letter to lowercase

### Memory functions
- `ft_memset` — fills a memory area with a byte value
- `ft_bzero` — sets a memory area to zero
- `ft_memcpy` — copies memory from one buffer to another
- `ft_memmove` — copies memory safely, including overlapping regions
- `ft_memchr` — finds the first occurrence of a byte in memory
- `ft_memcmp` — compares two memory areas
- `ft_calloc` — allocates zero-initialized memory

### String functions
- `ft_strlen` — returns the length of a string
- `ft_strlcpy` — copies a string into a sized buffer
- `ft_strlcat` — concatenates a string into a sized buffer
- `ft_strchr` — finds the first occurrence of a character in a string
- `ft_strrchr` — finds the last occurrence of a character in a string
- `ft_strncmp` — compares two strings up to `n` characters
- `ft_strnstr` — finds a substring within a limited length
- `ft_strdup` — duplicates a string using dynamic allocation

### Conversion and output
- `ft_atoi` — converts a string to an integer
- `ft_putchar_fd` — writes a character to a file descriptor
- `ft_putstr_fd` — writes a string to a file descriptor
- `ft_putendl_fd` — writes a string followed by a newline
- `ft_putnbr_fd` — writes an integer to a file descriptor

### Additional utility functions
- `ft_substr` — extracts a substring from a string
- `ft_strjoin` — joins two strings into a new one
- `ft_strtrim` — trims a set of characters from both ends of a string
- `ft_split` — splits a string into an array using a delimiter
- `ft_itoa` — converts an integer to a string
- `ft_strmapi` — creates a new string by applying a function to each character
- `ft_striteri` — applies a function to each character of a string in place

## Bonus part
The bonus section adds a small linked list API based on the following structure:

```c
typedef struct s_list
{
	void			*content;
	struct s_list	*next;
} t_list;
```

### Linked list functions
- `ft_lstnew` — creates a new list node
- `ft_lstadd_front` — adds a node at the beginning of a list
- `ft_lstsize` — counts the number of nodes in a list
- `ft_lstlast` — returns the last node of a list
- `ft_lstadd_back` — adds a node at the end of a list
- `ft_lstdelone` — deletes one node using a given function
- `ft_lstclear` — clears an entire list
- `ft_lstiter` — applies a function to each node content
- `ft_lstmap` — creates a new list by applying a function to each node

## Build
Build the library:
```bash
make
```

Build the bonus part:
```bash
make bonus
```

Clean object files:
```bash
make clean
```

Remove object files and library:
```bash
make fclean
```

Rebuild everything:
```bash
make re
```

## Output
The project builds a static library:

```bash
libft.a
```

This library can then be linked into other C projects.

## Learning outcomes
This project was an introduction to writing reusable low-level C code.
It helped build solid foundations in:
- pointer manipulation
- memory allocation and deallocation
- string processing
- modular code organization
- static library compilation
