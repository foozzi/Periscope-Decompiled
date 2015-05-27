package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.DataLengthException;

public class CTSBlockCipher
  extends BufferedBlockCipher
{
  private int fU;
  
  public CTSBlockCipher(BlockCipher paramBlockCipher)
  {
    if (((paramBlockCipher instanceof OFBBlockCipher)) || ((paramBlockCipher instanceof CFBBlockCipher)) || ((paramBlockCipher instanceof SICBlockCipher))) {
      throw new IllegalArgumentException("CTSBlockCipher can only accept ECB, or CBC ciphers");
    }
    this.aEX = paramBlockCipher;
    this.fU = paramBlockCipher.getBlockSize();
    this.buf = new byte[this.fU * 2];
    this.aEU = 0;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    if (this.aEU + paramInt > paramArrayOfByte.length) {
      throw new DataLengthException("output buffer to small in doFinal");
    }
    int i = this.aEX.getBlockSize();
    int k = this.aEU - i;
    byte[] arrayOfByte1 = new byte[i];
    int j;
    byte[] arrayOfByte2;
    if (this.aEW)
    {
      if (this.aEU < i) {
        throw new DataLengthException("need at least one block of input for CTS");
      }
      this.aEX.ˊ(this.buf, 0, arrayOfByte1, 0);
      if (this.aEU > i)
      {
        j = this.aEU;
        while (j != this.buf.length)
        {
          this.buf[j] = arrayOfByte1[(j - i)];
          j += 1;
        }
        j = i;
        while (j != this.aEU)
        {
          arrayOfByte2 = this.buf;
          arrayOfByte2[j] = ((byte)(arrayOfByte2[j] ^ arrayOfByte1[(j - i)]));
          j += 1;
        }
        if ((this.aEX instanceof CBCBlockCipher)) {
          ((CBCBlockCipher)this.aEX).iH().ˊ(this.buf, i, paramArrayOfByte, paramInt);
        } else {
          this.aEX.ˊ(this.buf, i, paramArrayOfByte, paramInt);
        }
        System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, paramInt + i, k);
      }
      else
      {
        System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, paramInt, i);
      }
    }
    else
    {
      if (this.aEU < i) {
        throw new DataLengthException("need at least one block of input for CTS");
      }
      arrayOfByte2 = new byte[i];
      if (this.aEU > i)
      {
        if ((this.aEX instanceof CBCBlockCipher)) {
          ((CBCBlockCipher)this.aEX).iH().ˊ(this.buf, 0, arrayOfByte1, 0);
        } else {
          this.aEX.ˊ(this.buf, 0, arrayOfByte1, 0);
        }
        j = i;
        while (j != this.aEU)
        {
          arrayOfByte2[(j - i)] = ((byte)(arrayOfByte1[(j - i)] ^ this.buf[j]));
          j += 1;
        }
        System.arraycopy(this.buf, i, arrayOfByte1, 0, k);
        this.aEX.ˊ(arrayOfByte1, 0, paramArrayOfByte, paramInt);
        System.arraycopy(arrayOfByte2, 0, paramArrayOfByte, paramInt + i, k);
      }
      else
      {
        this.aEX.ˊ(this.buf, 0, arrayOfByte1, 0);
        System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, paramInt, i);
      }
    }
    paramInt = this.aEU;
    reset();
    return paramInt;
  }
  
  public int getOutputSize(int paramInt)
  {
    return this.aEU + paramInt;
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("Can't have a negative input length!");
    }
    int n = getBlockSize();
    int i = ء(paramInt2);
    if ((i > 0) && (paramInt3 + i > paramArrayOfByte2.length)) {
      throw new DataLengthException("output buffer too short");
    }
    int j = 0;
    int i1 = this.buf.length - this.aEU;
    int k = paramInt1;
    int m = paramInt2;
    if (paramInt2 > i1)
    {
      System.arraycopy(paramArrayOfByte1, paramInt1, this.buf, this.aEU, i1);
      i = this.aEX.ˊ(this.buf, 0, paramArrayOfByte2, paramInt3) + 0;
      System.arraycopy(this.buf, n, this.buf, 0, n);
      this.aEU = n;
      paramInt2 -= i1;
      paramInt1 += i1;
      for (;;)
      {
        j = i;
        k = paramInt1;
        m = paramInt2;
        if (paramInt2 <= n) {
          break;
        }
        System.arraycopy(paramArrayOfByte1, paramInt1, this.buf, this.aEU, n);
        i += this.aEX.ˊ(this.buf, 0, paramArrayOfByte2, paramInt3 + i);
        System.arraycopy(this.buf, n, this.buf, 0, n);
        paramInt2 -= n;
        paramInt1 += n;
      }
    }
    System.arraycopy(paramArrayOfByte1, k, this.buf, this.aEU, m);
    this.aEU += m;
    return j;
  }
  
  public int ء(int paramInt)
  {
    paramInt += this.aEU;
    int i = paramInt % this.buf.length;
    if (i == 0) {
      return paramInt - this.buf.length;
    }
    return paramInt - i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.CTSBlockCipher
 * JD-Core Version:    0.7.0.1
 */