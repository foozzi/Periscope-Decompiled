package o;

import java.io.OutputStream;

class ﬧ
{
  int gA;
  int gB = 0;
  int gC = 0;
  int[] gD = { 0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535 };
  int gE;
  byte[] gF = new byte[256];
  private int gj;
  private int gk;
  private byte[] gl;
  private int gm;
  private int gn;
  private int go;
  int gp;
  int gq = 12;
  int gr;
  int gs = 4096;
  int[] gt = new int[5003];
  int[] gu = new int[5003];
  int gv = 5003;
  int gw = 0;
  boolean gx = false;
  int gy;
  int gz;
  
  ﬧ(int paramInt1, int paramInt2, byte[] paramArrayOfByte, int paramInt3)
  {
    this.gj = paramInt1;
    this.gk = paramInt2;
    this.gl = paramArrayOfByte;
    this.gm = Math.max(2, paramInt3);
  }
  
  private int ʌ()
  {
    if (this.gn == 0) {
      return -1;
    }
    this.gn -= 1;
    byte[] arrayOfByte = this.gl;
    int i = this.go;
    this.go = (i + 1);
    return arrayOfByte[i] & 0xFF;
  }
  
  void encode(OutputStream paramOutputStream)
  {
    paramOutputStream.write(this.gm);
    this.gn = (this.gj * this.gk);
    this.go = 0;
    ˊ(this.gm + 1, paramOutputStream);
    paramOutputStream.write(0);
  }
  
  void ˊ(byte paramByte, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = this.gF;
    int i = this.gE;
    this.gE = (i + 1);
    arrayOfByte[i] = paramByte;
    if (this.gE >= 254) {
      ˎ(paramOutputStream);
    }
  }
  
  void ˊ(int paramInt, OutputStream paramOutputStream)
  {
    this.gy = paramInt;
    this.gx = false;
    this.gp = this.gy;
    this.gr = ײ(this.gp);
    this.gz = (1 << paramInt - 1);
    this.gA = (this.gz + 1);
    this.gw = (this.gz + 2);
    this.gE = 0;
    int i = ʌ();
    int j = 0;
    paramInt = this.gv;
    while (paramInt < 65536)
    {
      j += 1;
      paramInt *= 2;
    }
    int i2 = this.gv;
    Ӏ(i2);
    ˋ(this.gz, paramOutputStream);
    paramInt = i;
    for (;;)
    {
      int n = ʌ();
      if (n == -1) {
        break;
      }
      int i3 = (n << this.gq) + paramInt;
      i = n << 8 - j ^ paramInt;
      if (this.gt[i] == i3)
      {
        paramInt = this.gu[i];
      }
      else
      {
        int k = i;
        if (this.gt[i] >= 0)
        {
          k = i2 - i;
          int m = i;
          if (i == 0)
          {
            k = 1;
            m = i;
          }
          do
          {
            int i1 = m - k;
            m = i1;
            i = m;
            if (i1 < 0) {
              i = m + i2;
            }
            if (this.gt[i] == i3)
            {
              paramInt = this.gu[i];
              break;
            }
            m = i;
          } while (this.gt[i] >= 0);
          k = i;
        }
        ˋ(paramInt, paramOutputStream);
        paramInt = n;
        if (this.gw < this.gs)
        {
          int[] arrayOfInt = this.gu;
          i = this.gw;
          this.gw = (i + 1);
          arrayOfInt[k] = i;
          this.gt[k] = i3;
        }
        else
        {
          ˋ(paramOutputStream);
        }
      }
    }
    ˋ(paramInt, paramOutputStream);
    ˋ(this.gA, paramOutputStream);
  }
  
  void ˋ(int paramInt, OutputStream paramOutputStream)
  {
    this.gB &= this.gD[this.gC];
    if (this.gC > 0) {
      this.gB |= paramInt << this.gC;
    } else {
      this.gB = paramInt;
    }
    for (this.gC += this.gp; this.gC >= 8; this.gC -= 8)
    {
      ˊ((byte)(this.gB & 0xFF), paramOutputStream);
      this.gB >>= 8;
    }
    if ((this.gw > this.gr) || (this.gx)) {
      if (this.gx)
      {
        int i = this.gy;
        this.gp = i;
        this.gr = ײ(i);
        this.gx = false;
      }
      else
      {
        this.gp += 1;
        if (this.gp == this.gq) {
          this.gr = this.gs;
        } else {
          this.gr = ײ(this.gp);
        }
      }
    }
    if (paramInt == this.gA)
    {
      while (this.gC > 0)
      {
        ˊ((byte)(this.gB & 0xFF), paramOutputStream);
        this.gB >>= 8;
        this.gC -= 8;
      }
      ˎ(paramOutputStream);
    }
  }
  
  void ˋ(OutputStream paramOutputStream)
  {
    Ӏ(this.gv);
    this.gw = (this.gz + 2);
    this.gx = true;
    ˋ(this.gz, paramOutputStream);
  }
  
  void ˎ(OutputStream paramOutputStream)
  {
    if (this.gE > 0)
    {
      paramOutputStream.write(this.gE);
      paramOutputStream.write(this.gF, 0, this.gE);
      this.gE = 0;
    }
  }
  
  void Ӏ(int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      this.gt[i] = -1;
      i += 1;
    }
  }
  
  final int ײ(int paramInt)
  {
    return (1 << paramInt) - 1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬§
 * JD-Core Version:    0.7.0.1
 */