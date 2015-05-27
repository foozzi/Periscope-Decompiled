package org.spongycastle.crypto.prng;

import java.security.SecureRandom;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.prng.drbg.CTRSP800DRBG;
import org.spongycastle.crypto.prng.drbg.DualECPoints;
import org.spongycastle.crypto.prng.drbg.DualECSP800DRBG;
import org.spongycastle.crypto.prng.drbg.HMacSP800DRBG;
import org.spongycastle.crypto.prng.drbg.HashSP800DRBG;
import org.spongycastle.crypto.prng.drbg.SP80090DRBG;

public class SP800SecureRandomBuilder
{
  private final SecureRandom aFa;
  private final EntropySourceProvider aRe;
  private int aRf = 256;
  private int aRg = 256;
  
  public SP800SecureRandomBuilder()
  {
    this(new SecureRandom(), false);
  }
  
  public SP800SecureRandomBuilder(SecureRandom paramSecureRandom, boolean paramBoolean)
  {
    this.aFa = paramSecureRandom;
    this.aRe = new BasicEntropySourceProvider(this.aFa, paramBoolean);
  }
  
  static class CTRDRBGProvider
    implements DRBGProvider
  {
    private final int aRf;
    private final BlockCipher aRh;
    private final int aRi;
    private final byte[] aRj;
    private final byte[] aeu;
    
    public SP80090DRBG ˊ(EntropySource paramEntropySource)
    {
      return new CTRSP800DRBG(this.aRh, this.aRi, this.aRf, paramEntropySource, this.aRj, this.aeu);
    }
  }
  
  static class ConfigurableDualECDRBGProvider
    implements DRBGProvider
  {
    private final Digest aFH;
    private final int aRf;
    private final byte[] aRj;
    private final DualECPoints[] aRk;
    private final byte[] aeu;
    
    public SP80090DRBG ˊ(EntropySource paramEntropySource)
    {
      return new DualECSP800DRBG(this.aRk, this.aFH, this.aRf, paramEntropySource, this.aRj, this.aeu);
    }
  }
  
  static class DualECDRBGProvider
    implements DRBGProvider
  {
    private final Digest aFH;
    private final int aRf;
    private final byte[] aRj;
    private final byte[] aeu;
    
    public SP80090DRBG ˊ(EntropySource paramEntropySource)
    {
      return new DualECSP800DRBG(this.aFH, this.aRf, paramEntropySource, this.aRj, this.aeu);
    }
  }
  
  static class HMacDRBGProvider
    implements DRBGProvider
  {
    private final Mac aNl;
    private final int aRf;
    private final byte[] aRj;
    private final byte[] aeu;
    
    public SP80090DRBG ˊ(EntropySource paramEntropySource)
    {
      return new HMacSP800DRBG(this.aNl, this.aRf, paramEntropySource, this.aRj, this.aeu);
    }
  }
  
  static class HashDRBGProvider
    implements DRBGProvider
  {
    private final Digest aFH;
    private final int aRf;
    private final byte[] aRj;
    private final byte[] aeu;
    
    public SP80090DRBG ˊ(EntropySource paramEntropySource)
    {
      return new HashSP800DRBG(this.aFH, this.aRf, paramEntropySource, this.aRj, this.aeu);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.SP800SecureRandomBuilder
 * JD-Core Version:    0.7.0.1
 */