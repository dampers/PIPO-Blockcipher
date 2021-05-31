 #include <avr/io.h>

 typedef uint16_t u16;

 extern void PIPO_ENC(u16 *pt, u16 *mk);

 u16 mk[8] = {0x2297, 0x2e15, 0x20ad, 0x7e1d, 0x28d2, 0x7794, 0x16dd, 0x6dc4};
 u16 pt[4] = {0x0026, 0x1e27, 0x52f6, 0x0985};

 int main(void)
 {
	 PIPO_ENC(pt, mk);
 }