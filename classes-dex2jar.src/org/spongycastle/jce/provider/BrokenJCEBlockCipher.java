package org.spongycastle.jce.provider;

import java.security.AlgorithmParameters;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.engines.DESEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.TwofishEngine;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher;

public class BrokenJCEBlockCipher
  implements BrokenPBE
{
  private BufferedBlockCipher aKy;
  private int aWR = 0;
  private AlgorithmParameters aXe = null;
  private Class[] aXo = { IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class };
  private int aZu = 2;
  private int aZv = 1;
  private int baU;
  private int baV;
  
  protected BrokenJCEBlockCipher(BlockCipher paramBlockCipher, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.aKy = new PaddedBufferedBlockCipher(paramBlockCipher);
    this.aZu = paramInt1;
    this.aZv = paramInt2;
    this.baU = paramInt3;
    this.baV = paramInt4;
  }
  
  public static class BrokePBEWithMD5AndDES
    extends BrokenJCEBlockCipher
  {
    public BrokePBEWithMD5AndDES()
    {
      super(0, 0, 64, 64);
    }
  }
  
  public static class BrokePBEWithSHA1AndDES
    extends BrokenJCEBlockCipher
  {
    public BrokePBEWithSHA1AndDES()
    {
      super(0, 1, 64, 64);
    }
  }
  
  public static class BrokePBEWithSHAAndDES2Key
    extends BrokenJCEBlockCipher
  {
    public BrokePBEWithSHAAndDES2Key()
    {
      super(2, 1, 128, 64);
    }
  }
  
  public static class BrokePBEWithSHAAndDES3Key
    extends BrokenJCEBlockCipher
  {
    public BrokePBEWithSHAAndDES3Key()
    {
      super(2, 1, 192, 64);
    }
  }
  
  public static class OldPBEWithSHAAndDES3Key
    extends BrokenJCEBlockCipher
  {
    public OldPBEWithSHAAndDES3Key()
    {
      super(3, 1, 192, 64);
    }
  }
  
  public static class OldPBEWithSHAAndTwofish
    extends BrokenJCEBlockCipher
  {
    public OldPBEWithSHAAndTwofish()
    {
      super(3, 1, 256, 128);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.BrokenJCEBlockCipher
 * JD-Core Version:    0.7.0.1
 */