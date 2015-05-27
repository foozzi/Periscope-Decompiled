package org.spongycastle.util.encoders;

import java.io.ByteArrayOutputStream;

public class Base64
{
  private static final Encoder bkd = new Base64Encoder();
  
  public static byte[] ײ(byte[] paramArrayOfByte)
  {
    return ᑊ(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static byte[] ᑊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream((paramInt2 + 2) / 3 * 4);
    try
    {
      bkd.ˊ(paramArrayOfByte, paramInt1, paramInt2, localByteArrayOutputStream);
    }
    catch (Exception paramArrayOfByte)
    {
      throw new EncoderException("exception encoding base64 string: " + paramArrayOfByte.getMessage(), paramArrayOfByte);
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static byte[] ᵥ(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramString.length() / 4 * 3);
    try
    {
      bkd.ˊ(paramString, localByteArrayOutputStream);
    }
    catch (Exception paramString)
    {
      throw new DecoderException("unable to decode base64 string: " + paramString.getMessage(), paramString);
    }
    return localByteArrayOutputStream.toByteArray();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.encoders.Base64
 * JD-Core Version:    0.7.0.1
 */