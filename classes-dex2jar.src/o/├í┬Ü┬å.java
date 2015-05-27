package o;

import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class ᚆ
  extends ᚁ
{
  private static final float[] xa = { 1.0F, 1.0F, 1.090909F, 0.9090909F, 1.454546F, 1.212121F, 2.181818F, 1.818182F, 2.909091F, 2.424243F, 1.636364F, 1.363636F, 1.939394F, 1.616162F, 1.333333F, 1.5F, 2.0F };
  private long uR;
  private boolean wY;
  private final ᴫ xb;
  private final boolean[] xc;
  private final ᚆ.if xd;
  private final ᚆ.if xe;
  private final ᚆ.if xf;
  private boolean xg;
  private boolean xh;
  private long xi;
  private long xj;
  private final প xk;
  private int[] xl;
  
  public ᚆ(ᒳ paramᒳ, ᴫ paramᴫ)
  {
    super(paramᒳ);
    this.xb = paramᴫ;
    this.xc = new boolean[3];
    this.xd = new ᚆ.if(7, 128);
    this.xe = new ᚆ.if(8, 128);
    this.xf = new ᚆ.if(6, 128);
    this.xk = new প();
    this.xl = new int[10];
  }
  
  private void ˊ(long paramLong, int paramInt)
  {
    this.xd.ᙆ(paramInt);
    this.xe.ᙆ(paramInt);
    if (this.xf.ᙆ(paramInt))
    {
      paramInt = ˋ(this.xf.xp, this.xf.xq);
      this.xk.ʻ(this.xf.xp, paramInt);
      this.xb.ˊ(this.xk, paramLong, true);
    }
  }
  
  private void ˊ(ন paramন, int paramInt)
  {
    int k = 8;
    int m = 8;
    int j = 0;
    while (j < paramInt)
    {
      int i = m;
      if (m != 0) {
        i = (k + paramন.ʭ() + 256) % 256;
      }
      if (i != 0) {
        k = i;
      }
      j += 1;
      m = i;
    }
  }
  
  private void ˊ(ᚆ.if paramif1, ᚆ.if paramif2)
  {
    byte[] arrayOfByte1 = new byte[paramif1.xq];
    byte[] arrayOfByte2 = new byte[paramif2.xq];
    System.arraycopy(paramif1.xp, 0, arrayOfByte1, 0, paramif1.xq);
    System.arraycopy(paramif2.xp, 0, arrayOfByte2, 0, paramif2.xq);
    paramif2 = new ArrayList();
    paramif2.add(arrayOfByte1);
    paramif2.add(arrayOfByte2);
    ˋ(paramif1.xp, paramif1.xq);
    paramif1 = new ন(paramif1.xp);
    paramif1.ɪ(32);
    int i = paramif1.ɾ(8);
    paramif1.ɪ(16);
    paramif1.ʝ();
    int j = 1;
    if ((i == 100) || (i == 110) || (i == 122) || (i == 244) || (i == 44) || (i == 83) || (i == 86) || (i == 118) || (i == 128) || (i == 138))
    {
      m = paramif1.ʝ();
      if (m == 3) {
        paramif1.ɪ(1);
      }
      paramif1.ʝ();
      paramif1.ʝ();
      paramif1.ɪ(1);
      j = m;
      if (paramif1.ʎ())
      {
        if (m != 3) {
          i = 8;
        } else {
          i = 12;
        }
        k = 0;
        for (;;)
        {
          j = m;
          if (k >= i) {
            break;
          }
          if (paramif1.ʎ())
          {
            if (k < 6) {
              j = 16;
            } else {
              j = 64;
            }
            ˊ(paramif1, j);
          }
          k += 1;
        }
      }
    }
    paramif1.ʝ();
    long l = paramif1.ʝ();
    if (l == 0L)
    {
      paramif1.ʝ();
    }
    else if (l == 1L)
    {
      paramif1.ɪ(1);
      paramif1.ʭ();
      paramif1.ʭ();
      l = paramif1.ʝ();
      i = 0;
      while (i < l)
      {
        paramif1.ʝ();
        i += 1;
      }
    }
    paramif1.ʝ();
    paramif1.ɪ(1);
    int m = paramif1.ʝ();
    int k = paramif1.ʝ();
    boolean bool = paramif1.ʎ();
    if (bool) {
      i = 1;
    } else {
      i = 0;
    }
    if (!bool) {
      paramif1.ɪ(1);
    }
    paramif1.ɪ(1);
    m = (m + 1) * 16;
    int n = (2 - i) * (k + 1) * 16;
    k = m;
    i = n;
    if (paramif1.ʎ())
    {
      int i3 = paramif1.ʝ();
      int i4 = paramif1.ʝ();
      int i1 = paramif1.ʝ();
      int i2 = paramif1.ʝ();
      if (j == 0)
      {
        j = 1;
        if (bool) {
          i = 1;
        } else {
          i = 0;
        }
        k = 2 - i;
        i = j;
        j = k;
      }
      else
      {
        if (j == 3) {
          i = 1;
        } else {
          i = 2;
        }
        if (j == 1) {
          j = 2;
        } else {
          j = 1;
        }
        if (bool) {
          k = 1;
        } else {
          k = 0;
        }
        j *= (2 - k);
      }
      k = m - (i3 + i4) * i;
      i = n - (i1 + i2) * j;
    }
    float f2 = 1.0F;
    float f1 = f2;
    if (paramif1.ʎ())
    {
      f1 = f2;
      if (paramif1.ʎ())
      {
        j = paramif1.ɾ(8);
        if (j == 255)
        {
          j = paramif1.ɾ(16);
          m = paramif1.ɾ(16);
          f1 = f2;
          if (j != 0)
          {
            f1 = f2;
            if (m != 0) {
              f1 = j / m;
            }
          }
        }
        else if (j < xa.length)
        {
          f1 = xa[j];
        }
        else
        {
          Log.w("H264Reader", "Unexpected aspect_ratio_idc value: " + j);
          f1 = f2;
        }
      }
    }
    this.wZ.ˊ(ب.ˊ("video/avc", -1, -1L, k, i, f1, paramif2));
    this.wY = true;
  }
  
  private int ˋ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    int j = 0;
    int k;
    for (;;)
    {
      k = j;
      if (i >= paramInt) {
        break;
      }
      m = ᐝ(paramArrayOfByte, i, paramInt);
      i = m;
      j = k;
      if (m < paramInt)
      {
        if (this.xl.length <= k) {
          this.xl = Arrays.copyOf(this.xl, this.xl.length * 2);
        }
        int[] arrayOfInt = this.xl;
        j = k + 1;
        arrayOfInt[k] = m;
        i = m + 3;
      }
    }
    int m = paramInt - k;
    j = 0;
    i = 0;
    paramInt = 0;
    while (paramInt < k)
    {
      int n = this.xl[paramInt] - j;
      System.arraycopy(paramArrayOfByte, j, paramArrayOfByte, i, n);
      j += n + 3;
      i += n + 2;
      paramInt += 1;
    }
    System.arraycopy(paramArrayOfByte, j, paramArrayOfByte, i, m - i);
    return m;
  }
  
  private void ˏ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.wY)
    {
      this.xd.ʻ(paramArrayOfByte, paramInt1, paramInt2);
      this.xe.ʻ(paramArrayOfByte, paramInt1, paramInt2);
    }
    this.xf.ʻ(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private int ᐝ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while (paramInt1 < paramInt2 - 2)
    {
      if ((paramArrayOfByte[paramInt1] == 0) && (paramArrayOfByte[(paramInt1 + 1)] == 0) && (paramArrayOfByte[(paramInt1 + 2)] == 3)) {
        return paramInt1;
      }
      paramInt1 += 1;
    }
    return paramInt2;
  }
  
  private void ᓒ(int paramInt)
  {
    if (!this.wY)
    {
      this.xd.ᕪ(paramInt);
      this.xe.ᕪ(paramInt);
    }
    this.xf.ᕪ(paramInt);
  }
  
  public void ˊ(প paramপ, long paramLong, boolean paramBoolean)
  {
    while (paramপ.ϋ() > 0)
    {
      int i = paramপ.getPosition();
      int j = paramপ.limit();
      byte[] arrayOfByte = paramপ.fw;
      this.uR += paramপ.ϋ();
      this.wZ.ˊ(paramপ, paramপ.ϋ());
      while (i < j)
      {
        int k = ܫ.ˊ(arrayOfByte, i, j, this.xc);
        if (k < j)
        {
          int n = k - i;
          if (n > 0) {
            ˏ(arrayOfByte, i, k);
          }
          int m = ܫ.ᐝ(arrayOfByte, k);
          int i1 = j - k;
          if (m == 9)
          {
            if (this.xg)
            {
              if ((this.xh) && (!this.wY) && (this.xd.isCompleted()) && (this.xe.isCompleted())) {
                ˊ(this.xd, this.xe);
              }
              if (this.xh) {
                i = 1;
              } else {
                i = 0;
              }
              int i2 = (int)(this.uR - this.xi);
              this.wZ.ˊ(this.xj, i, i2 - i1, i1, null);
              this.xg = false;
            }
            this.xg = true;
            this.xh = false;
            this.xj = paramLong;
            this.xi = (this.uR - i1);
          }
          else if (m == 5)
          {
            this.xh = true;
          }
          if (n < 0) {
            i = -n;
          } else {
            i = 0;
          }
          ˊ(paramLong, i);
          ᓒ(m);
          i = k + 4;
        }
        else
        {
          ˏ(arrayOfByte, i, j);
          i = j;
        }
      }
    }
  }
  
  public void ᒮ()
  {
    this.xb.ᒮ();
    ܫ.ˊ(this.xc);
    this.xd.reset();
    this.xe.reset();
    this.xf.reset();
    this.xg = false;
    this.uR = 0L;
  }
  
  public void ᴫ() {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */