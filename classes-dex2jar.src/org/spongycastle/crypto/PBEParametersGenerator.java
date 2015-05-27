package org.spongycastle.crypto;

import org.spongycastle.util.Strings;

public abstract class PBEParametersGenerator
{
  public byte[] aFe;
  public int aFf;
  public byte[] aqg;
  
  public static byte[] ˋ(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar != null)
    {
      byte[] arrayOfByte = new byte[paramArrayOfChar.length];
      int i = 0;
      while (i != arrayOfByte.length)
      {
        arrayOfByte[i] = ((byte)paramArrayOfChar[i]);
        i += 1;
      }
      return arrayOfByte;
    }
    return new byte[0];
  }
  
  public static byte[] ˎ(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar != null) {
      return Strings.ʻ(paramArrayOfChar);
    }
    return new byte[0];
  }
  
  public static byte[] ˏ(char[] paramArrayOfChar)
  {
    if ((paramArrayOfChar != null) && (paramArrayOfChar.length > 0))
    {
      byte[] arrayOfByte = new byte[(paramArrayOfChar.length + 1) * 2];
      int i = 0;
      while (i != paramArrayOfChar.length)
      {
        arrayOfByte[(i * 2)] = ((byte)(paramArrayOfChar[i] >>> '\b'));
        arrayOfByte[(i * 2 + 1)] = ((byte)paramArrayOfChar[i]);
        i += 1;
      }
      return arrayOfByte;
    }
    return new byte[0];
  }
  
  public void ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    this.aFe = paramArrayOfByte1;
    this.aqg = paramArrayOfByte2;
    this.aFf = paramInt;
  }
  
  public abstract CipherParameters ر(int paramInt);
  
  public abstract CipherParameters ڎ(int paramInt);
  
  public abstract CipherParameters ᵙ(int paramInt1, int paramInt2);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.PBEParametersGenerator
 * JD-Core Version:    0.7.0.1
 */