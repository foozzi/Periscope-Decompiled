package org.spongycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;

public class HexEncoder
  implements Encoder
{
  protected final byte[] bke = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  protected final byte[] bkg = new byte[''];
  
  public HexEncoder()
  {
    td();
  }
  
  private static boolean ᐝ(char paramChar)
  {
    return (paramChar == '\n') || (paramChar == '\r') || (paramChar == '\t') || (paramChar == ' ');
  }
  
  protected void td()
  {
    int i = 0;
    while (i < this.bkg.length)
    {
      this.bkg[i] = -1;
      i += 1;
    }
    i = 0;
    while (i < this.bke.length)
    {
      this.bkg[this.bke[i]] = ((byte)i);
      i += 1;
    }
    this.bkg[65] = this.bkg[97];
    this.bkg[66] = this.bkg[98];
    this.bkg[67] = this.bkg[99];
    this.bkg[68] = this.bkg[100];
    this.bkg[69] = this.bkg[101];
    this.bkg[70] = this.bkg[102];
  }
  
  public int ˊ(String paramString, OutputStream paramOutputStream)
  {
    int k = 0;
    int j = paramString.length();
    while ((j > 0) && (ᐝ(paramString.charAt(j - 1)))) {
      j -= 1;
    }
    int m;
    for (int i = 0; i < j; i = m)
    {
      while ((i < j) && (ᐝ(paramString.charAt(i)))) {
        i += 1;
      }
      byte[] arrayOfByte = this.bkg;
      m = i + 1;
      int n = arrayOfByte[paramString.charAt(i)];
      i = m;
      while ((i < j) && (ᐝ(paramString.charAt(i)))) {
        i += 1;
      }
      arrayOfByte = this.bkg;
      m = i + 1;
      i = arrayOfByte[paramString.charAt(i)];
      if ((n | i) < 0) {
        throw new IOException("invalid characters encountered in Hex string");
      }
      paramOutputStream.write(n << 4 | i);
      k += 1;
    }
    return k;
  }
  
  public int ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, OutputStream paramOutputStream)
  {
    int i = paramInt1;
    while (i < paramInt1 + paramInt2)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      paramOutputStream.write(this.bke[(j >>> 4)]);
      paramOutputStream.write(this.bke[(j & 0xF)]);
      i += 1;
    }
    return paramInt2 * 2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.encoders.HexEncoder
 * JD-Core Version:    0.7.0.1
 */