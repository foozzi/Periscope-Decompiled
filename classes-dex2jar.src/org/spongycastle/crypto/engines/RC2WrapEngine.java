package org.spongycastle.crypto.engines;

import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;

public class RC2WrapEngine
  implements Wrapper
{
  private static final byte[] aJZ = { 74, -35, -94, 44, 121, -24, 33, 5 };
  private CBCBlockCipher aJV;
  private ParametersWithIV aJX;
  private boolean aJY;
  private CipherParameters aKY;
  private SecureRandom aKZ;
  Digest aKa = new SHA1Digest();
  byte[] ayB = new byte[20];
  private byte[] iv;
  
  private byte[] ˮ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[8];
    this.aKa.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    this.aKa.doFinal(this.ayB, 0);
    System.arraycopy(this.ayB, 0, arrayOfByte, 0, 8);
    return arrayOfByte;
  }
  
  private boolean ᐝ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return Arrays.ｰ(ˮ(paramArrayOfByte1), paramArrayOfByte2);
  }
  
  public String iG()
  {
    return "RC2";
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aJY = paramBoolean;
    this.aJV = new CBCBlockCipher(new RC2Engine());
    if ((paramCipherParameters instanceof ParametersWithRandom))
    {
      paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
      this.aKZ = paramCipherParameters.iN();
      paramCipherParameters = paramCipherParameters.lh();
    }
    else
    {
      this.aKZ = new SecureRandom();
    }
    if ((paramCipherParameters instanceof ParametersWithIV))
    {
      this.aJX = ((ParametersWithIV)paramCipherParameters);
      this.iv = this.aJX.getIV();
      this.aKY = this.aJX.lh();
      if (this.aJY)
      {
        if ((this.iv == null) || (this.iv.length != 8)) {
          throw new IllegalArgumentException("IV is not 8 octets");
        }
      }
      else {
        throw new IllegalArgumentException("You should not supply an IV for unwrapping");
      }
    }
    else
    {
      this.aKY = paramCipherParameters;
      if (this.aJY)
      {
        this.iv = new byte[8];
        this.aKZ.nextBytes(this.iv);
        this.aJX = new ParametersWithIV(this.aKY, this.iv);
      }
    }
  }
  
  public byte[] ᐨ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.aJY) {
      throw new IllegalStateException("Not initialized for wrapping");
    }
    int j = paramInt2 + 1;
    int i = j;
    if (j % 8 != 0) {
      i = j + (8 - j % 8);
    }
    byte[] arrayOfByte1 = new byte[i];
    arrayOfByte1[0] = ((byte)paramInt2);
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte1, 1, paramInt2);
    paramArrayOfByte = new byte[arrayOfByte1.length - paramInt2 - 1];
    if (paramArrayOfByte.length > 0)
    {
      this.aKZ.nextBytes(paramArrayOfByte);
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, paramInt2 + 1, paramArrayOfByte.length);
    }
    byte[] arrayOfByte2 = ˮ(arrayOfByte1);
    paramArrayOfByte = new byte[arrayOfByte1.length + arrayOfByte2.length];
    System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, 0, arrayOfByte1.length);
    System.arraycopy(arrayOfByte2, 0, paramArrayOfByte, arrayOfByte1.length, arrayOfByte2.length);
    arrayOfByte1 = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 0, paramArrayOfByte.length);
    paramInt2 = paramArrayOfByte.length / this.aJV.getBlockSize();
    if (paramArrayOfByte.length % this.aJV.getBlockSize() != 0) {
      throw new IllegalStateException("Not multiple of block length");
    }
    this.aJV.ˊ(true, this.aJX);
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      i = paramInt1 * this.aJV.getBlockSize();
      this.aJV.ˊ(arrayOfByte1, i, arrayOfByte1, i);
      paramInt1 += 1;
    }
    paramArrayOfByte = new byte[this.iv.length + arrayOfByte1.length];
    System.arraycopy(this.iv, 0, paramArrayOfByte, 0, this.iv.length);
    System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, this.iv.length, arrayOfByte1.length);
    arrayOfByte1 = new byte[paramArrayOfByte.length];
    paramInt1 = 0;
    while (paramInt1 < paramArrayOfByte.length)
    {
      arrayOfByte1[paramInt1] = paramArrayOfByte[(paramArrayOfByte.length - (paramInt1 + 1))];
      paramInt1 += 1;
    }
    paramArrayOfByte = new ParametersWithIV(this.aKY, aJZ);
    this.aJV.ˊ(true, paramArrayOfByte);
    paramInt1 = 0;
    while (paramInt1 < paramInt2 + 1)
    {
      i = paramInt1 * this.aJV.getBlockSize();
      this.aJV.ˊ(arrayOfByte1, i, arrayOfByte1, i);
      paramInt1 += 1;
    }
    return arrayOfByte1;
  }
  
  public byte[] ﹳ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aJY) {
      throw new IllegalStateException("Not set for unwrapping");
    }
    if (paramArrayOfByte == null) {
      throw new InvalidCipherTextException("Null pointer as ciphertext");
    }
    if (paramInt2 % this.aJV.getBlockSize() != 0) {
      throw new InvalidCipherTextException("Ciphertext not multiple of " + this.aJV.getBlockSize());
    }
    Object localObject = new ParametersWithIV(this.aKY, aJZ);
    this.aJV.ˊ(false, (CipherParameters)localObject);
    localObject = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, localObject, 0, paramInt2);
    paramInt1 = 0;
    while (paramInt1 < localObject.length / this.aJV.getBlockSize())
    {
      paramInt2 = paramInt1 * this.aJV.getBlockSize();
      this.aJV.ˊ((byte[])localObject, paramInt2, (byte[])localObject, paramInt2);
      paramInt1 += 1;
    }
    paramArrayOfByte = new byte[localObject.length];
    paramInt1 = 0;
    while (paramInt1 < localObject.length)
    {
      paramArrayOfByte[paramInt1] = localObject[(localObject.length - (paramInt1 + 1))];
      paramInt1 += 1;
    }
    this.iv = new byte[8];
    localObject = new byte[paramArrayOfByte.length - 8];
    System.arraycopy(paramArrayOfByte, 0, this.iv, 0, 8);
    System.arraycopy(paramArrayOfByte, 8, localObject, 0, paramArrayOfByte.length - 8);
    this.aJX = new ParametersWithIV(this.aKY, this.iv);
    this.aJV.ˊ(false, this.aJX);
    paramArrayOfByte = new byte[localObject.length];
    System.arraycopy(localObject, 0, paramArrayOfByte, 0, localObject.length);
    paramInt1 = 0;
    while (paramInt1 < paramArrayOfByte.length / this.aJV.getBlockSize())
    {
      paramInt2 = paramInt1 * this.aJV.getBlockSize();
      this.aJV.ˊ(paramArrayOfByte, paramInt2, paramArrayOfByte, paramInt2);
      paramInt1 += 1;
    }
    localObject = new byte[paramArrayOfByte.length - 8];
    byte[] arrayOfByte = new byte[8];
    System.arraycopy(paramArrayOfByte, 0, localObject, 0, paramArrayOfByte.length - 8);
    System.arraycopy(paramArrayOfByte, paramArrayOfByte.length - 8, arrayOfByte, 0, 8);
    if (!ᐝ((byte[])localObject, arrayOfByte)) {
      throw new InvalidCipherTextException("Checksum inside ciphertext is corrupted");
    }
    if (localObject.length - ((localObject[0] & 0xFF) + 1) > 7) {
      throw new InvalidCipherTextException("too many pad bytes (" + (localObject.length - ((localObject[0] & 0xFF) + 1)) + ")");
    }
    paramArrayOfByte = new byte[localObject[0]];
    System.arraycopy(localObject, 1, paramArrayOfByte, 0, paramArrayOfByte.length);
    return paramArrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RC2WrapEngine
 * JD-Core Version:    0.7.0.1
 */