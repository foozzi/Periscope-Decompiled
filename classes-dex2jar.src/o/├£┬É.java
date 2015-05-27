package o;

import android.util.Pair;

public final class ܐ
{
  private static final byte[] AY = { 0, 0, 0, 1 };
  private static final int[] AZ = { 96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350 };
  private static final int[] Ba = { 0, 1, 2, 3, 4, 5, 6, 8 };
  
  public static byte[] ʿ(int paramInt1, int paramInt2, int paramInt3)
  {
    return new byte[] { (byte)(paramInt1 << 3 & 0xF8 | paramInt2 >> 1 & 0x7), (byte)(paramInt2 << 7 & 0x80 | paramInt3 << 3 & 0x78) };
  }
  
  public static byte[] ͺ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[AY.length + paramInt2];
    System.arraycopy(AY, 0, arrayOfByte, 0, AY.length);
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, AY.length, paramInt2);
    return arrayOfByte;
  }
  
  public static Pair<Integer, Integer> ι(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte[0] >> 3 & 0x1F;
    if ((i == 5) || (i == 29)) {
      i = 1;
    } else {
      i = 0;
    }
    int j = (paramArrayOfByte[i] & 0x7) << 1 | paramArrayOfByte[(i + 1)] >> 7 & 0x1;
    boolean bool;
    if (j < 13) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    return Pair.create(Integer.valueOf(AZ[j]), Integer.valueOf(paramArrayOfByte[(i + 1)] >> 3 & 0xF));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ü
 * JD-Core Version:    0.7.0.1
 */