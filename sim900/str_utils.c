char *strstr(const char *s1, const char *s2)
{
        register const char *s = s1;
        register const char *p = s2;

        do {
                if (!*p) {
                        return (char *) s1;
                }
                if (*p == *s) {
                        ++p;
                        ++s;
                } else {
                        p = s2;
                        if (!*s) {
                                return 0;
                        }
                        s = ++s1;
                }
        } while (1);
}

int strncmp(const char *s1, const char *s2, int n)
{
	int r = 0;

	while ( n-- && ((r = ((int)(*((char *)s1))) - *((char *)s2++))== 0) && *s1++ );

	return r;
}

int strlen(const char *s)
{
        register const char *p;

        for (p=s ; *p ; p++);

        return (p - s);
}

int atoi(const char *s)
{
	int sign = 0, val = 0; 
	
	if(s) while( ((*s == ' ')||(*s == '\t')) && *(++s) ); else return 0;
	sign = ((*s == '-') && *s++)?-1:(((*s == '+') && (*s++)),1);
	while((*s >= '0') && (*s <= '9')) {	val *= 10; val += *s++ - '0';}
	return sign*val;
}
