package org.spongycastle.crypto.engines;

import java.security.SecureRandom;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;

public class RFC3211WrapEngine
  implements Wrapper
{
  private CBCBlockCipher aJV;
  private boolean aJY;
  private ParametersWithIV aLe;
  private SecureRandom aLf;
  
  public RFC3211WrapEngine(BlockCipher paramBlockCipher)
  {
    this.aJV = new CBCBlockCipher(paramBlockCipher);
  }
  
  public String iG()
  {
    return this.aJV.iH().iG() + "/RFC3211Wrap";
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aJY = paramBoolean;
    if ((paramCipherParameters instanceof ParametersWithRandom))
    {
      paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
      this.aLf = paramCipherParameters.iN();
      this.aLe = ((ParametersWithIV)paramCipherParameters.lh());
      return;
    }
    if (paramBoolean) {
      this.aLf = new SecureRandom();
    }
    this.aLe = ((ParametersWithIV)paramCipherParameters);
  }
  
  public byte[] ᐨ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.aJY) {
      throw new IllegalStateException("not set for wrapping");
    }
    this.aJV.ˊ(true, this.aLe);
    int j = this.aJV.getBlockSize();
    byte[] arrayOfByte;
    if (paramInt2 + 4 < j * 2)
    {
      arrayOfByte = new byte[j * 2];
    }
    else
    {
      int i;
      if ((paramInt2 + 4) % j == 0) {
        i = paramInt2 + 4;
      } else {
        i = ((paramInt2 + 4) / j + 1) * j;
      }
      arrayOfByte = new byte[i];
    }
    arrayOfByte[0] = ((byte)paramInt2);
    arrayOfByte[1] = ((byte)(paramArrayOfByte[paramInt1] ^ 0xFFFFFFFF));
    arrayOfByte[2] = ((byte)(paramArrayOfByte[(paramInt1 + 1)] ^ 0xFFFFFFFF));
    arrayOfByte[3] = ((byte)(paramArrayOfByte[(paramInt1 + 2)] ^ 0xFFFFFFFF));
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 4, paramInt2);
    paramInt1 = paramInt2 + 4;
    while (paramInt1 < arrayOfByte.length)
    {
      arrayOfByte[paramInt1] = ((byte)this.aLf.nextInt());
      paramInt1 += 1;
    }
    paramInt1 = 0;
    while (paramInt1 < arrayOfByte.length)
    {
      this.aJV.ˊ(arrayOfByte, paramInt1, arrayOfByte, paramInt1);
      paramInt1 += j;
    }
    paramInt1 = 0;
    while (paramInt1 < arrayOfByte.length)
    {
      this.aJV.ˊ(arrayOfByte, paramInt1, arrayOfByte, paramInt1);
      paramInt1 += j;
    }
    return arrayOfByte;
  }
  
  public byte[] ﹳ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aJY) {
      throw new IllegalStateException("not set for unwrapping");
    }
    int i = this.aJV.getBlockSize();
    if (paramInt2 < i * 2) {
      throw new InvalidCipherTextException("input too short");
    }
    byte[] arrayOfByte1 = new byte[paramInt2];
    byte[] arrayOfByte2 = new byte[i];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte1, 0, paramInt2);
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte2, 0, arrayOfByte2.length);
    this.aJV.ˊ(false, new ParametersWithIV(this.aLe.lh(), arrayOfByte2));
    paramInt1 = i;
    while (paramInt1 < arrayOfByte1.length)
    {
      this.aJV.ˊ(arrayOfByte1, paramInt1, arrayOfByte1, paramInt1);
      paramInt1 += i;
    }
    System.arraycopy(arrayOfByte1, arrayOfByte1.length - arrayOfByte2.length, arrayOfByte2, 0, arrayOfByte2.length);
    this.aJV.ˊ(false, new ParametersWithIV(this.aLe.lh(), arrayOfByte2));
    this.aJV.ˊ(arrayOfByte1, 0, arrayOfByte1, 0);
    this.aJV.ˊ(false, this.aLe);
    paramInt1 = 0;
    while (paramInt1 < arrayOfByte1.length)
    {
      this.aJV.ˊ(arrayOfByte1, paramInt1, arrayOfByte1, paramInt1);
      paramInt1 += i;
    }
    if ((arrayOfByte1[0] & 0xFF) > arrayOfByte1.length - 4) {
      throw new InvalidCipherTextException("wrapped key corrupted");
    }
    paramArrayOfByte = new byte[arrayOfByte1[0] & 0xFF];
    System.arraycopy(arrayOfByte1, 4, paramArrayOfByte, 0, arrayOfByte1[0]);
    paramInt2 = 0;
    paramInt1 = 0;
    while (paramInt1 != 3)
    {
      i = (byte)(arrayOfByte1[(paramInt1 + 1)] ^ 0xFFFFFFFF);
      paramInt2 |= paramArrayOfByte[paramInt1] ^ i;
      paramInt1 += 1;
    }
    if (paramInt2 != 0) {
      throw new InvalidCipherTextException("wrapped key fails checksum");
    }
    return paramArrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RFC3211WrapEngine
 * JD-Core Version:    0.7.0.1
 */