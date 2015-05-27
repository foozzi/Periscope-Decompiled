package org.spongycastle.crypto.params;

public class DESParameters
  extends KeyParameter
{
  private static byte[] aPV = { 1, 1, 1, 1, 1, 1, 1, 1, 31, 31, 31, 31, 14, 14, 14, 14, -32, -32, -32, -32, -15, -15, -15, -15, -2, -2, -2, -2, -2, -2, -2, -2, 1, -2, 1, -2, 1, -2, 1, -2, 31, -32, 31, -32, 14, -15, 14, -15, 1, -32, 1, -32, 1, -15, 1, -15, 31, -2, 31, -2, 14, -2, 14, -2, 1, 31, 1, 31, 1, 14, 1, 14, -32, -2, -32, -2, -15, -2, -15, -2, -2, 1, -2, 1, -2, 1, -2, 1, -32, 31, -32, 31, -15, 14, -15, 14, -32, 1, -32, 1, -15, 1, -15, 1, -2, 31, -2, 31, -2, 14, -2, 14, 31, 1, 31, 1, 14, 1, 14, 1, -2, -32, -2, -32, -2, -15, -2, -15 };
  
  public static void ı(byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i];
      paramArrayOfByte[i] = ((byte)(j & 0xFE | (j >> 1 ^ j >> 2 ^ j >> 3 ^ j >> 4 ^ j >> 5 ^ j >> 6 ^ j >> 7 ^ 0x1) & 0x1));
      i += 1;
    }
  }
  
  public static boolean ⁱ(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length - paramInt < 8) {
      throw new IllegalArgumentException("key material too short.");
    }
    int i = 0;
    while (i < 16)
    {
      int j = 0;
      while (j < 8)
      {
        if (paramArrayOfByte[(j + paramInt)] != aPV[(i * 8 + j)]) {
          break label65;
        }
        j += 1;
      }
      return true;
      label65:
      i += 1;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DESParameters
 * JD-Core Version:    0.7.0.1
 */