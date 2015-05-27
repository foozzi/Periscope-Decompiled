package org.spongycastle.pqc.jcajce.provider.mceliece;

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
import org.spongycastle.pqc.crypto.mceliece.McElieceKeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McEliecePKCSCipher;
import org.spongycastle.pqc.jcajce.provider.util.AsymmetricBlockCipher;

public class McEliecePKCSCipherSpi
  extends AsymmetricBlockCipher
  implements PKCSObjectIdentifiers, X509ObjectIdentifiers
{
  private Digest aFH;
  private McEliecePKCSCipher biD;
  
  public McEliecePKCSCipherSpi(Digest paramDigest, McEliecePKCSCipher paramMcEliecePKCSCipher)
  {
    this.aFH = paramDigest;
    this.biD = paramMcEliecePKCSCipher;
  }
  
  protected void ˊ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    paramKey = McElieceKeysToParams.ˊ((PrivateKey)paramKey);
    this.aFH.reset();
    this.biD.ˊ(false, paramKey);
    this.bgh = this.biD.bgh;
    this.bgi = this.biD.bgi;
  }
  
  protected void ˊ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    paramKey = new ParametersWithRandom(McElieceKeysToParams.ˊ((PublicKey)paramKey), paramSecureRandom);
    this.aFH.reset();
    this.biD.ˊ(true, paramKey);
    this.bgh = this.biD.bgh;
    this.bgi = this.biD.bgi;
  }
  
  public int ˋ(Key paramKey)
  {
    if ((paramKey instanceof PublicKey)) {
      paramKey = (McElieceKeyParameters)McElieceKeysToParams.ˊ((PublicKey)paramKey);
    } else {
      paramKey = (McElieceKeyParameters)McElieceKeysToParams.ˊ((PrivateKey)paramKey);
    }
    return this.biD.ˊ(paramKey);
  }
  
  protected byte[] וֹ(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = this.biD.וֹ(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
  
  protected byte[] ﹲ(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = this.biD.ﹲ(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
  
  public static class McEliecePKCS
    extends McEliecePKCSCipherSpi
  {
    public McEliecePKCS()
    {
      super(new McEliecePKCSCipher());
    }
  }
  
  public static class McEliecePKCS224
    extends McEliecePKCSCipherSpi
  {
    public McEliecePKCS224()
    {
      super(new McEliecePKCSCipher());
    }
  }
  
  public static class McEliecePKCS256
    extends McEliecePKCSCipherSpi
  {
    public McEliecePKCS256()
    {
      super(new McEliecePKCSCipher());
    }
  }
  
  public static class McEliecePKCS384
    extends McEliecePKCSCipherSpi
  {
    public McEliecePKCS384()
    {
      super(new McEliecePKCSCipher());
    }
  }
  
  public static class McEliecePKCS512
    extends McEliecePKCSCipherSpi
  {
    public McEliecePKCS512()
    {
      super(new McEliecePKCSCipher());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePKCSCipherSpi
 * JD-Core Version:    0.7.0.1
 */