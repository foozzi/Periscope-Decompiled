package org.spongycastle.pqc.crypto.gmss.util;

public class GMSSUtil
{
  public byte[] ʌ(int paramInt)
  {
    return new byte[] { (byte)(paramInt & 0xFF), (byte)(paramInt >> 8 & 0xFF), (byte)(paramInt >> 16 & 0xFF), (byte)(paramInt >> 24 & 0xFF) };
  }
  
  public byte[] ˋ(byte[][] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte.length * paramArrayOfByte[0].length];
    int j = 0;
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      System.arraycopy(paramArrayOfByte[i], 0, arrayOfByte, j, paramArrayOfByte[i].length);
      j += paramArrayOfByte[i].length;
      i += 1;
    }
    return arrayOfByte;
  }
  
  public int ᐠ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramInt = paramArrayOfByte[paramInt];
    int j = i + 1;
    return paramInt & 0xFF | (paramArrayOfByte[i] & 0xFF) << 8 | (paramArrayOfByte[j] & 0xFF) << 16 | (paramArrayOfByte[(j + 1)] & 0xFF) << 24;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.util.GMSSUtil
 * JD-Core Version:    0.7.0.1
 */