package o;

class דּ
{
  protected int gG;
  protected byte[] gH;
  protected int gI;
  protected int gJ;
  protected int[][] gK;
  protected int[] gL = new int[256];
  protected int[] gM = new int[256];
  protected int[] gN = new int[256];
  protected int[] gO = new int[32];
  
  public דּ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.gH = paramArrayOfByte;
    this.gI = paramInt1;
    this.gJ = paramInt2;
    this.gK = new int[256][];
    paramInt1 = 0;
    while (paramInt1 < 256)
    {
      this.gK[paramInt1] = new int[4];
      paramArrayOfByte = this.gK[paramInt1];
      paramInt2 = (paramInt1 << 12) / 256;
      paramArrayOfByte[2] = paramInt2;
      paramArrayOfByte[1] = paramInt2;
      paramArrayOfByte[0] = paramInt2;
      this.gN[paramInt1] = 256;
      this.gM[paramInt1] = 0;
      paramInt1 += 1;
    }
  }
  
  protected void ˏ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int j = paramInt2 - paramInt1;
    int i = j;
    if (j < -1) {
      i = -1;
    }
    paramInt1 = paramInt2 + paramInt1;
    j = paramInt1;
    if (paramInt1 > 256) {
      j = 256;
    }
    int k = paramInt2 + 1;
    paramInt1 = paramInt2 - 1;
    paramInt2 = 1;
    for (;;)
    {
      int n = paramInt1;
      if ((k >= j) && (n <= i)) {
        break;
      }
      Object localObject1 = this.gO;
      int i1 = paramInt2 + 1;
      int i2 = localObject1[paramInt2];
      int m = k;
      if (k < j)
      {
        localObject1 = this.gK;
        m = k + 1;
        localObject1 = localObject1[k];
        try
        {
          localObject1[0] -= (localObject1[0] - paramInt3) * i2 / 262144;
          localObject1[1] -= (localObject1[1] - paramInt4) * i2 / 262144;
          localObject1[2] -= (localObject1[2] - paramInt5) * i2 / 262144;
        }
        catch (Exception localException1) {}
      }
      k = m;
      paramInt1 = n;
      paramInt2 = i1;
      if (n > i)
      {
        Object localObject2 = this.gK;
        paramInt1 = n - 1;
        localObject2 = localObject2[n];
        try
        {
          localObject2[0] -= (localObject2[0] - paramInt3) * i2 / 262144;
          localObject2[1] -= (localObject2[1] - paramInt4) * i2 / 262144;
          localObject2[2] -= (localObject2[2] - paramInt5) * i2 / 262144;
          k = m;
          paramInt2 = i1;
        }
        catch (Exception localException2)
        {
          k = m;
          paramInt2 = i1;
        }
      }
    }
  }
  
  public int ͺ(int paramInt1, int paramInt2, int paramInt3)
  {
    int j = 1000;
    int k = -1;
    int i2 = this.gL[paramInt2];
    int i = i2 - 1;
    while ((i2 < 256) || (i >= 0))
    {
      int m = i2;
      int i1 = j;
      int n = k;
      int[] arrayOfInt;
      int i3;
      if (i2 < 256)
      {
        arrayOfInt = this.gK[i2];
        n = arrayOfInt[1] - paramInt2;
        if (n >= j)
        {
          m = 256;
          i1 = j;
          n = k;
        }
        else
        {
          i2 += 1;
          m = n;
          if (n < 0) {
            m = -n;
          }
          i1 = arrayOfInt[0] - paramInt1;
          n = i1;
          if (i1 < 0) {
            n = -i1;
          }
          i3 = m + n;
          m = i2;
          i1 = j;
          n = k;
          if (i3 < j)
          {
            n = arrayOfInt[2] - paramInt3;
            m = n;
            if (n < 0) {
              m = -n;
            }
            i3 += m;
            m = i2;
            i1 = j;
            n = k;
            if (i3 < j)
            {
              i1 = i3;
              n = arrayOfInt[3];
              m = i2;
            }
          }
        }
      }
      i2 = m;
      j = i1;
      k = n;
      if (i >= 0)
      {
        arrayOfInt = this.gK[i];
        j = paramInt2 - arrayOfInt[1];
        if (j >= i1)
        {
          i = -1;
          i2 = m;
          j = i1;
          k = n;
        }
        else
        {
          i3 = i - 1;
          i = j;
          if (j < 0) {
            i = -j;
          }
          k = arrayOfInt[0] - paramInt1;
          j = k;
          if (k < 0) {
            j = -k;
          }
          int i4 = i + j;
          i2 = m;
          i = i3;
          j = i1;
          k = n;
          if (i4 < i1)
          {
            j = arrayOfInt[2] - paramInt3;
            i = j;
            if (j < 0) {
              i = -j;
            }
            i4 += i;
            i2 = m;
            i = i3;
            j = i1;
            k = n;
            if (i4 < i1)
            {
              j = i4;
              k = arrayOfInt[3];
              i2 = m;
              i = i3;
            }
          }
        }
      }
    }
    return k;
  }
  
  public byte[] Ξ()
  {
    byte[] arrayOfByte = new byte[768];
    int[] arrayOfInt = new int[256];
    int i = 0;
    while (i < 256)
    {
      arrayOfInt[this.gK[i][3]] = i;
      i += 1;
    }
    int j = 0;
    i = 0;
    while (i < 256)
    {
      int k = arrayOfInt[i];
      int m = j + 1;
      arrayOfByte[j] = ((byte)this.gK[k][0]);
      int n = m + 1;
      arrayOfByte[m] = ((byte)this.gK[k][1]);
      j = n + 1;
      arrayOfByte[n] = ((byte)this.gK[k][2]);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public void ς()
  {
    int n = 0;
    int m = 0;
    int i = 0;
    while (i < 256)
    {
      int[] arrayOfInt1 = this.gK[i];
      int i2 = i;
      int j = arrayOfInt1[1];
      int k = i + 1;
      while (k < 256)
      {
        arrayOfInt2 = this.gK[k];
        i1 = j;
        if (arrayOfInt2[1] < j)
        {
          i2 = k;
          i1 = arrayOfInt2[1];
        }
        k += 1;
        j = i1;
      }
      int[] arrayOfInt2 = this.gK[i2];
      if (i != i2)
      {
        k = arrayOfInt2[0];
        arrayOfInt2[0] = arrayOfInt1[0];
        arrayOfInt1[0] = k;
        k = arrayOfInt2[1];
        arrayOfInt2[1] = arrayOfInt1[1];
        arrayOfInt1[1] = k;
        k = arrayOfInt2[2];
        arrayOfInt2[2] = arrayOfInt1[2];
        arrayOfInt1[2] = k;
        k = arrayOfInt2[3];
        arrayOfInt2[3] = arrayOfInt1[3];
        arrayOfInt1[3] = k;
      }
      int i1 = n;
      k = m;
      if (j != n)
      {
        this.gL[n] = (m + i >> 1);
        k = n + 1;
        while (k < j)
        {
          this.gL[k] = i;
          k += 1;
        }
        k = i;
        i1 = j;
      }
      i += 1;
      n = i1;
      m = k;
    }
    this.gL[n] = (m + 255 >> 1);
    i = n + 1;
    while (i < 256)
    {
      this.gL[i] = 255;
      i += 1;
    }
  }
  
  public void ϛ()
  {
    if (this.gI < 1509) {
      this.gJ = 1;
    }
    this.gG = ((this.gJ - 1) / 3 + 30);
    byte[] arrayOfByte = this.gH;
    int i2 = 0;
    int i10 = this.gI;
    int i11 = this.gI / (this.gJ * 3);
    int n = i11 / 100;
    int m = 1024;
    int i3 = 2048;
    int i1 = 32;
    int i = 0;
    while (i < 32)
    {
      this.gO[i] = ((1024 - i * i) * 256 / 1024 * 1024);
      i += 1;
    }
    if (this.gI < 1509) {
      i = 3;
    } else if (this.gI % 499 != 0) {
      i = 1497;
    } else if (this.gI % 491 != 0) {
      i = 1473;
    } else if (this.gI % 487 != 0) {
      i = 1461;
    } else {
      i = 1509;
    }
    int i4 = 0;
    while (i4 < i11)
    {
      int j = (arrayOfByte[(i2 + 0)] & 0xFF) << 4;
      int k = (arrayOfByte[(i2 + 1)] & 0xFF) << 4;
      int i5 = (arrayOfByte[(i2 + 2)] & 0xFF) << 4;
      int i6 = ι(j, k, i5);
      ᐝ(m, i6, j, k, i5);
      if (i1 != 0) {
        ˏ(i1, i6, j, k, i5);
      }
      k = i2 + i;
      j = k;
      if (k >= i10) {
        j = k - this.gI;
      }
      int i7 = i4 + 1;
      i5 = n;
      if (n == 0) {
        i5 = 1;
      }
      i4 = i7;
      n = i5;
      i2 = j;
      if (i7 % i5 == 0)
      {
        int i8 = m - m / this.gG;
        int i9 = i3 - i3 / 30;
        m = i9 >> 6;
        k = m;
        if (m <= 1) {
          k = 0;
        }
        i6 = 0;
        for (;;)
        {
          i4 = i7;
          i3 = i9;
          i1 = k;
          m = i8;
          n = i5;
          i2 = j;
          if (i6 >= k) {
            break;
          }
          this.gO[i6] = ((k * k - i6 * i6) * 256 / (k * k) * i8);
          i6 += 1;
        }
      }
    }
  }
  
  public byte[] ч()
  {
    ϛ();
    ѓ();
    ς();
    return Ξ();
  }
  
  public void ѓ()
  {
    int i = 0;
    while (i < 256)
    {
      int[] arrayOfInt = this.gK[i];
      arrayOfInt[0] >>= 4;
      arrayOfInt = this.gK[i];
      arrayOfInt[1] >>= 4;
      arrayOfInt = this.gK[i];
      arrayOfInt[2] >>= 4;
      this.gK[i][3] = i;
      i += 1;
    }
  }
  
  protected void ᐝ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int[] arrayOfInt = this.gK[paramInt2];
    arrayOfInt[0] -= (arrayOfInt[0] - paramInt3) * paramInt1 / 1024;
    arrayOfInt[1] -= (arrayOfInt[1] - paramInt4) * paramInt1 / 1024;
    arrayOfInt[2] -= (arrayOfInt[2] - paramInt5) * paramInt1 / 1024;
  }
  
  protected int ι(int paramInt1, int paramInt2, int paramInt3)
  {
    int m = 2147483647;
    int j = 2147483647;
    int n = -1;
    int k = -1;
    int i = 0;
    while (i < 256)
    {
      arrayOfInt = this.gK[i];
      int i2 = arrayOfInt[0] - paramInt1;
      int i1 = i2;
      if (i2 < 0) {
        i1 = -i2;
      }
      int i3 = arrayOfInt[1] - paramInt2;
      i2 = i3;
      if (i3 < 0) {
        i2 = -i3;
      }
      int i4 = arrayOfInt[2] - paramInt3;
      i3 = i4;
      if (i4 < 0) {
        i3 = -i4;
      }
      i2 = i1 + i2 + i3;
      i1 = m;
      if (i2 < m)
      {
        i1 = i2;
        n = i;
      }
      m = i2 - (this.gM[i] >> 12);
      i2 = j;
      if (m < j)
      {
        i2 = m;
        k = i;
      }
      j = this.gN[i] >> 10;
      arrayOfInt = this.gN;
      arrayOfInt[i] -= j;
      arrayOfInt = this.gM;
      arrayOfInt[i] += (j << 10);
      i += 1;
      m = i1;
      j = i2;
    }
    int[] arrayOfInt = this.gN;
    arrayOfInt[n] += 64;
    arrayOfInt = this.gM;
    arrayOfInt[n] -= 65536;
    return k;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬³
 * JD-Core Version:    0.7.0.1
 */