package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.ParametersWithSBox;

public class GCFBBlockCipher
  extends StreamBlockCipher
{
  private static final byte[] aGy = { 105, 0, 114, 34, 100, -55, 4, 35, -115, 58, -37, -106, 70, -23, 42, -60, 24, -2, -84, -108, 0, -19, 7, 18, -64, -122, -36, -62, -17, 76, -87, 43 };
  private boolean aEW;
  private final CFBBlockCipher aOR;
  private KeyParameter aOS;
  private long aOT = 0L;
  
  public GCFBBlockCipher(BlockCipher paramBlockCipher)
  {
    super(paramBlockCipher);
    this.aOR = new CFBBlockCipher(paramBlockCipher, paramBlockCipher.getBlockSize() * 8);
  }
  
  public int getBlockSize()
  {
    return this.aOR.getBlockSize();
  }
  
  public String iG()
  {
    String str = this.aOR.iG();
    return str.substring(0, str.indexOf('/') - 1) + "/G" + str.substring(str.indexOf('/') + 1);
  }
  
  public void reset()
  {
    this.aOT = 0L;
    this.aOR.reset();
  }
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    ˋ(paramArrayOfByte1, paramInt1, this.aOR.getBlockSize(), paramArrayOfByte2, paramInt2);
    return this.aOR.getBlockSize();
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aOT = 0L;
    this.aOR.ˊ(paramBoolean, paramCipherParameters);
    this.aEW = paramBoolean;
    CipherParameters localCipherParameters = paramCipherParameters;
    if ((paramCipherParameters instanceof ParametersWithIV)) {
      localCipherParameters = ((ParametersWithIV)paramCipherParameters).lh();
    }
    paramCipherParameters = localCipherParameters;
    if ((localCipherParameters instanceof ParametersWithRandom)) {
      paramCipherParameters = ((ParametersWithRandom)localCipherParameters).lh();
    }
    localCipherParameters = paramCipherParameters;
    if ((paramCipherParameters instanceof ParametersWithSBox)) {
      localCipherParameters = ((ParametersWithSBox)paramCipherParameters).lh();
    }
    this.aOS = ((KeyParameter)localCipherParameters);
  }
  
  protected byte ͺ(byte paramByte)
  {
    if ((this.aOT > 0L) && (this.aOT % 1024L == 0L))
    {
      BlockCipher localBlockCipher = this.aOR.iH();
      localBlockCipher.ˊ(false, this.aOS);
      byte[] arrayOfByte = new byte[32];
      localBlockCipher.ˊ(aGy, 0, arrayOfByte, 0);
      localBlockCipher.ˊ(aGy, 8, arrayOfByte, 8);
      localBlockCipher.ˊ(aGy, 16, arrayOfByte, 16);
      localBlockCipher.ˊ(aGy, 24, arrayOfByte, 24);
      this.aOS = new KeyParameter(arrayOfByte);
      localBlockCipher.ˊ(true, this.aOS);
      arrayOfByte = this.aOR.kf();
      localBlockCipher.ˊ(arrayOfByte, 0, arrayOfByte, 0);
      this.aOR.ˊ(this.aEW, new ParametersWithIV(this.aOS, arrayOfByte));
    }
    this.aOT += 1L;
    return this.aOR.ͺ(paramByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.GCFBBlockCipher
 * JD-Core Version:    0.7.0.1
 */