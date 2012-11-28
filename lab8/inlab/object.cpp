class obj {
    public:
        int i;
        int *ip;
        float f;
        float *fp;
        char c;
        char *cp;
        int doubleInt();
};

int obj::doubleInt()
{
    return 2*i;
}

int main()
{
   obj o;

   int d = 8;
   float e = 2.0f;
   char f = 'a';

   o.i = d;
   o.f = e;
   o.c = f;

   o.ip = &d;
   o.fp = &e;
   o.cp = &f;

    int g = o.i + 3;
//   int dbl = o.doubleInt();

}
