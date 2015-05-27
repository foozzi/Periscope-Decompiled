package org.spongycastle.util.encoders;

import java.io.ByteArrayOutputStream;

public class Hex
{
  private static final Encoder bkd = new HexEncoder();
  
  public static byte[] ײ(byte[] paramArrayOfByte)
  {
    return ᑊ(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static byte[] ᑊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      bkd.ˊ(paramArrayOfByte, paramInt1, paramInt2, localByteArrayOutputStream);
    }
    catch (Exception paramArrayOfByte)
    {
      throw new EncoderException("exception encoding Hex string: " + paramArrayOfByte.getMessage(), paramArrayOfByte);
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static byte[] ᵥ(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      bkd.ˊ(paramString, localByteArrayOutputStream);
    }
    catch (Exception paramString)
    {
      throw new DecoderException("exception decoding Hex string: " + paramString.getMessage(), paramString);
    }
    return localByteArrayOutputStream.toByteArray();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.encoders.Hex
 * JD-Core Version:    0.7.0.1
 */