package o;

public class akv
{
  private final int bJY;
  private int bKh = -1;
  private long bKk = 0L;
  private long bKl = 0L;
  private int bKn;
  private int bKo = 0;
  private int bKp = 0;
  
  public akv(int paramInt1, int paramInt2)
  {
    this.bJY = paramInt1;
    this.bKn = paramInt2;
  }
  
  private byte[] ˈ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = (byte)(this.bJY | 0xC0);
    byte[] arrayOfByte = new byte[paramInt1 + 1];
    arrayOfByte[0] = i;
    System.arraycopy(paramArrayOfByte, paramInt2, arrayOfByte, 1, paramInt1);
    return arrayOfByte;
  }
  
  private byte[] ˊ(alc paramalc, int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[18];
    int i = 3;
    if (this.bKh != paramalc.Bq()) {
      i = 0;
    } else if ((paramInt1 != this.bKp) || (this.bKo != paramalc.getType())) {
      i = 1;
    } else if (paramalc.getTime() - this.bKk != this.bKl) {
      i = 2;
    }
    if (this.bJY < 64)
    {
      j = 0 + 1;
      arrayOfByte[0] = ((byte)(i << 6 | this.bJY));
    }
    else if (this.bJY < 320)
    {
      arrayOfByte[0] = ((byte)(i << 6 | 0x0));
      j = 0 + 1 + 1;
      arrayOfByte[1] = ((byte)(this.bJY - 64));
    }
    else
    {
      arrayOfByte[0] = ((byte)(i << 6 | 0x1));
      k = this.bJY - 64;
      arrayOfByte[1] = ((byte)(k >> 8));
      j = 0 + 1 + 1 + 1;
      arrayOfByte[2] = ((byte)k);
    }
    long l2 = paramalc.getTime();
    long l1 = l2;
    if (i != 0) {
      l1 = l2 - this.bKk;
    }
    this.bKp = paramInt1;
    this.bKh = paramalc.Bq();
    this.bKo = paramalc.getType();
    this.bKk = paramalc.getTime();
    this.bKl = l1;
    int n = 0;
    int k = j;
    int m = n;
    if (i < 3) {
      if (l1 > 16777215L)
      {
        m = 1;
        k = j + 1;
        arrayOfByte[j] = -1;
        j = k + 1;
        arrayOfByte[k] = -1;
        k = j + 1;
        arrayOfByte[j] = -1;
      }
      else
      {
        k = j + 1;
        arrayOfByte[j] = ((byte)(int)(l1 >> 16));
        j = k + 1;
        arrayOfByte[k] = ((byte)(int)(l1 >> 8));
        k = j + 1;
        arrayOfByte[j] = ((byte)(int)l1);
        m = n;
      }
    }
    int j = k;
    if (i < 2)
    {
      j = k + 1;
      arrayOfByte[k] = ((byte)(paramInt1 >> 16));
      k = j + 1;
      arrayOfByte[j] = ((byte)(paramInt1 >> 8));
      n = k + 1;
      arrayOfByte[k] = ((byte)paramInt1);
      j = n + 1;
      arrayOfByte[n] = ((byte)paramalc.getType());
    }
    paramInt1 = j;
    if (i == 0)
    {
      paramInt1 = j + 1;
      arrayOfByte[j] = ((byte)this.bKh);
      i = paramInt1 + 1;
      arrayOfByte[paramInt1] = ((byte)(this.bKh >> 8));
      j = i + 1;
      arrayOfByte[i] = ((byte)(this.bKh >> 16));
      paramInt1 = j + 1;
      arrayOfByte[j] = ((byte)(this.bKh >> 24));
    }
    i = paramInt1;
    if (m != 0)
    {
      akw.ͺ(l1, arrayOfByte, paramInt1);
      i = paramInt1 + 4;
    }
    paramalc = new byte[i + paramInt2];
    System.arraycopy(arrayOfByte, 0, paramalc, 0, i);
    System.arraycopy(paramArrayOfByte, paramInt3, paramalc, i, paramInt2);
    return paramalc;
  }
  
  public boolean ˊ(alc paramalc, ala paramala)
  {
    byte[] arrayOfByte2 = paramalc.Br().buffer;
    int i = 0;
    int m = paramalc.Br().length;
    while (i < m)
    {
      int k = m - i;
      int j = k;
      if (k > this.bKn) {
        j = this.bKn;
      }
      byte[] arrayOfByte1;
      if (i == 0) {
        arrayOfByte1 = ˊ(paramalc, m, j, i, arrayOfByte2);
      } else {
        arrayOfByte1 = ˈ(j, arrayOfByte2, i);
      }
      paramala.יִ(arrayOfByte1, 0, arrayOfByte1.length);
      i += j;
    }
    return false;
  }
  
  public void ᓷ(int paramInt)
  {
    this.bKn = paramInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akv
 * JD-Core Version:    0.7.0.1
 */