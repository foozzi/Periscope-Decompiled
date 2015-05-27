package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2KeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceFujisakiCipher;
import org.spongycastle.pqc.jcajce.provider.util.AsymmetricHybridCipher;

public class McElieceFujisakiCipherSpi
  extends AsymmetricHybridCipher
  implements PKCSObjectIdentifiers, X509ObjectIdentifiers
{
  private Digest aFH;
  private McElieceFujisakiCipher biy;
  private ByteArrayOutputStream biz;
  
  protected McElieceFujisakiCipherSpi(Digest paramDigest, McElieceFujisakiCipher paramMcElieceFujisakiCipher)
  {
    this.aFH = paramDigest;
    this.biy = paramMcElieceFujisakiCipher;
    this.biz = new ByteArrayOutputStream();
  }
  
  public byte[] doFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    update(paramArrayOfByte, paramInt1, paramInt2);
    paramArrayOfByte = this.biz.toByteArray();
    this.biz.reset();
    if (this.biI == 1) {
      try
      {
        paramArrayOfByte = this.biy.וֹ(paramArrayOfByte);
        return paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    } else if (this.biI == 2) {
      try
      {
        paramArrayOfByte = this.biy.ﹲ(paramArrayOfByte);
        return paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public byte[] update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.biz.write(paramArrayOfByte, paramInt1, paramInt2);
    return new byte[0];
  }
  
  protected void ˊ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    paramKey = McElieceCCA2KeysToParams.ˊ((PrivateKey)paramKey);
    this.aFH.reset();
    this.biy.ˊ(false, paramKey);
  }
  
  protected void ˊ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    paramKey = new ParametersWithRandom(McElieceCCA2KeysToParams.ˊ((PublicKey)paramKey), paramSecureRandom);
    this.aFH.reset();
    this.biy.ˊ(true, paramKey);
  }
  
  public int ˋ(Key paramKey)
  {
    if ((paramKey instanceof PublicKey)) {
      paramKey = (McElieceCCA2KeyParameters)McElieceCCA2KeysToParams.ˊ((PublicKey)paramKey);
    } else {
      paramKey = (McElieceCCA2KeyParameters)McElieceCCA2KeysToParams.ˊ((PrivateKey)paramKey);
    }
    return this.biy.ˊ(paramKey);
  }
  
  protected int ϛ(int paramInt)
  {
    return 0;
  }
  
  protected int ч(int paramInt)
  {
    return 0;
  }
  
  public static class McElieceFujisaki
    extends McElieceFujisakiCipherSpi
  {
    public McElieceFujisaki()
    {
      super(new McElieceFujisakiCipher());
    }
  }
  
  public static class McElieceFujisaki224
    extends McElieceFujisakiCipherSpi
  {
    public McElieceFujisaki224()
    {
      super(new McElieceFujisakiCipher());
    }
  }
  
  public static class McElieceFujisaki256
    extends McElieceFujisakiCipherSpi
  {
    public McElieceFujisaki256()
    {
      super(new McElieceFujisakiCipher());
    }
  }
  
  public static class McElieceFujisaki384
    extends McElieceFujisakiCipherSpi
  {
    public McElieceFujisaki384()
    {
      super(new McElieceFujisakiCipher());
    }
  }
  
  public static class McElieceFujisaki512
    extends McElieceFujisakiCipherSpi
  {
    public McElieceFujisaki512()
    {
      super(new McElieceFujisakiCipher());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.mceliece.McElieceFujisakiCipherSpi
 * JD-Core Version:    0.7.0.1
 */