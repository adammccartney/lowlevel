int main() {
void uremdiv(unsigned long x, unsigned log y,
             unsigned long *qp, unsigned long *rp) {
        unsigned long q = x/y;
        unsigned long r = x%y;
        *qp = q;
        *rp = r;
        }
return 0;
}
