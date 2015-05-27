package org.spongycastle.crypto.engines;

import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;

public class DESedeWrapEngine
  implements Wrapper
{
  private static final byte[] aJZ = { 74, -35, -94, 44, 121, -24, 33, 5 };
  private CBCBlockCipher aJV;
  private KeyParameter aJW;
  private ParametersWithIV aJX;
  private boolean aJY;
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
  
  private static byte[] ۥ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      arrayOfByte[i] = paramArrayOfByte[(paramArrayOfByte.length - (i + 1))];
      i += 1;
    }
    return arrayOfByte;
  }
  
  private boolean ᐝ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return Arrays.ｰ(ˮ(paramArrayOfByte1), paramArrayOfByte2);
  }
  
  public String iG()
  {
    return "DESede";
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aJY = paramBoolean;
    this.aJV = new CBCBlockCipher(new DESedeEngine());
    CipherParameters localCipherParameters;
    if ((paramCipherParameters instanceof ParametersWithRandom))
    {
      paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
      localCipherParameters = paramCipherParameters.lh();
      paramCipherParameters = paramCipherParameters.iN();
    }
    else
    {
      SecureRandom localSecureRandom = new SecureRandom();
      localCipherParameters = paramCipherParameters;
      paramCipherParameters = localSecureRandom;
    }
    if ((localCipherParameters instanceof KeyParameter))
    {
      this.aJW = ((KeyParameter)localCipherParameters);
      if (this.aJY)
      {
        this.iv = new byte[8];
        paramCipherParameters.nextBytes(this.iv);
        this.aJX = new ParametersWithIV(this.aJW, this.iv);
      }
    }
    else if ((localCipherParameters instanceof ParametersWithIV))
    {
      this.aJX = ((ParametersWithIV)localCipherParameters);
      this.iv = this.aJX.getIV();
      this.aJW = ((KeyParameter)this.aJX.lh());
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
  }
  
  public byte[] ᐨ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.aJY) {
      throw new IllegalStateException("Not initialized for wrapping");
    }
    Object localObject = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, localObject, 0, paramInt2);
    byte[] arrayOfByte = ˮ((byte[])localObject);
    paramArrayOfByte = new byte[localObject.length + arrayOfByte.length];
    System.arraycopy(localObject, 0, paramArrayOfByte, 0, localObject.length);
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, localObject.length, arrayOfByte.length);
    paramInt2 = this.aJV.getBlockSize();
    if (paramArrayOfByte.length % paramInt2 != 0) {
      throw new IllegalStateException("Not multiple of block length");
    }
    this.aJV.ˊ(true, this.aJX);
    localObject = new byte[paramArrayOfByte.length];
    paramInt1 = 0;
    while (paramInt1 != paramArrayOfByte.length)
    {
      this.aJV.ˊ(paramArrayOfByte, paramInt1, (byte[])localObject, paramInt1);
      paramInt1 += paramInt2;
    }
    paramArrayOfByte = new byte[this.iv.length + localObject.length];
    System.arraycopy(this.iv, 0, paramArrayOfByte, 0, this.iv.length);
    System.arraycopy(localObject, 0, paramArrayOfByte, this.iv.length, localObject.length);
    paramArrayOfByte = ۥ(paramArrayOfByte);
    localObject = new ParametersWithIV(this.aJW, aJZ);
    this.aJV.ˊ(true, (CipherParameters)localObject);
    paramInt1 = 0;
    while (paramInt1 != paramArrayOfByte.length)
    {
      this.aJV.ˊ(paramArrayOfByte, paramInt1, paramArrayOfByte, paramInt1);
      paramInt1 += paramInt2;
    }
    return paramArrayOfByte;
  }
  
  public byte[] ﹳ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aJY) {
      throw new IllegalStateException("Not set for unwrapping");
    }
    if (paramArrayOfByte == null) {
      throw new InvalidCipherTextException("Null pointer as ciphertext");
    }
    int j = this.aJV.getBlockSize();
    if (paramInt2 % j != 0) {
      throw new InvalidCipherTextException("Ciphertext not multiple of " + j);
    }
    Object localObject = new ParametersWithIV(this.aJW, aJZ);
    this.aJV.ˊ(false, (CipherParameters)localObject);
    localObject = new byte[paramInt2];
    int i = 0;
    while (i != paramInt2)
    {
      this.aJV.ˊ(paramArrayOfByte, paramInt1 + i, (byte[])localObject, i);
      i += j;
    }
    paramArrayOfByte = ۥ((byte[])localObject);
    this.iv = new byte[8];
    localObject = new byte[paramArrayOfByte.length - 8];
    System.arraycopy(paramArrayOfByte, 0, this.iv, 0, 8);
    System.arraycopy(paramArrayOfByte, 8, localObject, 0, paramArrayOfByte.length - 8);
    this.aJX = new ParametersWithIV(this.aJW, this.iv);
    this.aJV.ˊ(false, this.aJX);
    paramArrayOfByte = new byte[localObject.length];
    paramInt1 = 0;
    while (paramInt1 != paramArrayOfByte.length)
    {
      this.aJV.ˊ((byte[])localObject, paramInt1, paramArrayOfByte, paramInt1);
      paramInt1 += j;
    }
    localObject = new byte[paramArrayOfByte.length - 8];
    byte[] arrayOfByte = new byte[8];
    System.arraycopy(paramArrayOfByte, 0, localObject, 0, paramArrayOfByte.length - 8);
    System.arraycopy(paramArrayOfByte, paramArrayOfByte.length - 8, arrayOfByte, 0, 8);
    if (!ᐝ((byte[])localObject, arrayOfByte)) {
      throw new InvalidCipherTextException("Checksum inside ciphertext is corrupted");
    }
    return localObject;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.DESedeWrapEngine
 * JD-Core Version:    0.7.0.1
 */