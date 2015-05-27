package org.spongycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;

public class Base64Encoder
  implements Encoder
{
  protected final byte[] bke = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  protected byte bkf = 61;
  protected final byte[] bkg = new byte[''];
  
  public Base64Encoder()
  {
    td();
  }
  
  private int ˊ(OutputStream paramOutputStream, char paramChar1, char paramChar2, char paramChar3, char paramChar4)
  {
    if (paramChar3 == this.bkf)
    {
      paramChar1 = this.bkg[paramChar1];
      paramChar2 = this.bkg[paramChar2];
      if ((paramChar1 | paramChar2) < 0) {
        throw new IOException("invalid characters encountered at end of base64 data");
      }
      paramOutputStream.write(paramChar1 << '\002' | paramChar2 >> '\004');
      return 1;
    }
    if (paramChar4 == this.bkf)
    {
      paramChar1 = this.bkg[paramChar1];
      paramChar2 = this.bkg[paramChar2];
      paramChar3 = this.bkg[paramChar3];
      if ((paramChar1 | paramChar2 | paramChar3) < 0) {
        throw new IOException("invalid characters encountered at end of base64 data");
      }
      paramOutputStream.write(paramChar1 << '\002' | paramChar2 >> '\004');
      paramOutputStream.write(paramChar2 << '\004' | paramChar3 >> '\002');
      return 2;
    }
    paramChar1 = this.bkg[paramChar1];
    paramChar2 = this.bkg[paramChar2];
    paramChar3 = this.bkg[paramChar3];
    paramChar4 = this.bkg[paramChar4];
    if ((paramChar1 | paramChar2 | paramChar3 | paramChar4) < 0) {
      throw new IOException("invalid characters encountered at end of base64 data");
    }
    paramOutputStream.write(paramChar1 << '\002' | paramChar2 >> '\004');
    paramOutputStream.write(paramChar2 << '\004' | paramChar3 >> '\002');
    paramOutputStream.write(paramChar3 << '\006' | paramChar4);
    return 3;
  }
  
  private int ˎ(String paramString, int paramInt1, int paramInt2)
  {
    while ((paramInt1 < paramInt2) && (ᐝ(paramString.charAt(paramInt1)))) {
      paramInt1 += 1;
    }
    return paramInt1;
  }
  
  private boolean ᐝ(char paramChar)
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
  }
  
  public int ˊ(String paramString, OutputStream paramOutputStream)
  {
    int j = 0;
    int i = paramString.length();
    while ((i > 0) && (ᐝ(paramString.charAt(i - 1)))) {
      i -= 1;
    }
    int m = i - 4;
    int i2;
    for (int k = ˎ(paramString, 0, m); k < m; k = ˎ(paramString, i2 + 1, m))
    {
      int n = this.bkg[paramString.charAt(k)];
      int i1 = ˎ(paramString, k + 1, m);
      k = this.bkg[paramString.charAt(i1)];
      i2 = ˎ(paramString, i1 + 1, m);
      i1 = this.bkg[paramString.charAt(i2)];
      i2 = ˎ(paramString, i2 + 1, m);
      int i3 = this.bkg[paramString.charAt(i2)];
      if ((n | k | i1 | i3) < 0) {
        throw new IOException("invalid characters encountered in base64 data");
      }
      paramOutputStream.write(n << 2 | k >> 4);
      paramOutputStream.write(k << 4 | i1 >> 2);
      paramOutputStream.write(i1 << 6 | i3);
      j += 3;
    }
    return j + ˊ(paramOutputStream, paramString.charAt(i - 4), paramString.charAt(i - 3), paramString.charAt(i - 2), paramString.charAt(i - 1));
  }
  
  public int ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, OutputStream paramOutputStream)
  {
    int i = paramInt2 % 3;
    int j = paramInt2 - i;
    paramInt2 = paramInt1;
    while (paramInt2 < paramInt1 + j)
    {
      int k = paramArrayOfByte[paramInt2] & 0xFF;
      int m = paramArrayOfByte[(paramInt2 + 1)] & 0xFF;
      int n = paramArrayOfByte[(paramInt2 + 2)] & 0xFF;
      paramOutputStream.write(this.bke[(k >>> 2 & 0x3F)]);
      paramOutputStream.write(this.bke[((k << 4 | m >>> 4) & 0x3F)]);
      paramOutputStream.write(this.bke[((m << 2 | n >>> 6) & 0x3F)]);
      paramOutputStream.write(this.bke[(n & 0x3F)]);
      paramInt2 += 3;
    }
    switch (i)
    {
    default: 
      break;
    case 0: 
      break;
    case 1: 
      paramInt1 = paramArrayOfByte[(paramInt1 + j)] & 0xFF;
      paramOutputStream.write(this.bke[(paramInt1 >>> 2 & 0x3F)]);
      paramOutputStream.write(this.bke[(paramInt1 << 4 & 0x3F)]);
      paramOutputStream.write(this.bkf);
      paramOutputStream.write(this.bkf);
      break;
    case 2: 
      paramInt2 = paramArrayOfByte[(paramInt1 + j)] & 0xFF;
      paramInt1 = paramArrayOfByte[(paramInt1 + j + 1)] & 0xFF;
      paramOutputStream.write(this.bke[(paramInt2 >>> 2 & 0x3F)]);
      paramOutputStream.write(this.bke[((paramInt2 << 4 | paramInt1 >>> 4) & 0x3F)]);
      paramOutputStream.write(this.bke[(paramInt1 << 2 & 0x3F)]);
      paramOutputStream.write(this.bkf);
    }
    paramInt2 = j / 3;
    if (i == 0) {
      paramInt1 = 0;
    } else {
      paramInt1 = 4;
    }
    return paramInt2 * 4 + paramInt1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.encoders.Base64Encoder
 * JD-Core Version:    0.7.0.1
 */