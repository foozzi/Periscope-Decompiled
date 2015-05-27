package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;

public class Poly1305KeyGenerator
  extends CipherKeyGenerator
{
  private static void ˋ(byte paramByte1, byte paramByte2)
  {
    if (((paramByte2 ^ 0xFFFFFFFF) & paramByte1) != 0) {
      throw new IllegalArgumentException("Invalid format for r portion of Poly1305 key.");
    }
  }
  
  public static void ᐟ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 32) {
      throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
    }
    ˋ(paramArrayOfByte[19], (byte)15);
    ˋ(paramArrayOfByte[23], (byte)15);
    ˋ(paramArrayOfByte[27], (byte)15);
    ˋ(paramArrayOfByte[31], (byte)15);
    ˋ(paramArrayOfByte[20], (byte)-4);
    ˋ(paramArrayOfByte[24], (byte)-4);
    ˋ(paramArrayOfByte[28], (byte)-4);
  }
  
  public static void יּ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 32) {
      throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
    }
    paramArrayOfByte[19] = ((byte)(paramArrayOfByte[19] & 0xF));
    paramArrayOfByte[23] = ((byte)(paramArrayOfByte[23] & 0xF));
    paramArrayOfByte[27] = ((byte)(paramArrayOfByte[27] & 0xF));
    paramArrayOfByte[31] = ((byte)(paramArrayOfByte[31] & 0xF));
    paramArrayOfByte[20] = ((byte)(paramArrayOfByte[20] & 0xFFFFFFFC));
    paramArrayOfByte[24] = ((byte)(paramArrayOfByte[24] & 0xFFFFFFFC));
    paramArrayOfByte[28] = ((byte)(paramArrayOfByte[28] & 0xFFFFFFFC));
  }
  
  public byte[] iI()
  {
    byte[] arrayOfByte = super.iI();
    יּ(arrayOfByte);
    return arrayOfByte;
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    super.ˊ(new KeyGenerationParameters(paramKeyGenerationParameters.iN(), 256));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.Poly1305KeyGenerator
 * JD-Core Version:    0.7.0.1
 */