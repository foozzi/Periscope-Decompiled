package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.ByteArrayOutputStream;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
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
import org.spongycastle.pqc.crypto.mceliece.McElieceKobaraImaiCipher;
import org.spongycastle.pqc.jcajce.provider.util.AsymmetricHybridCipher;

public class McElieceKobaraImaiCipherSpi
  extends AsymmetricHybridCipher
  implements PKCSObjectIdentifiers, X509ObjectIdentifiers
{
  private Digest aFH;
  private McElieceKobaraImaiCipher biC;
  private ByteArrayOutputStream biz = new ByteArrayOutputStream();
  
  public McElieceKobaraImaiCipherSpi()
  {
    this.biz = new ByteArrayOutputStream();
  }
  
  protected McElieceKobaraImaiCipherSpi(Digest paramDigest, McElieceKobaraImaiCipher paramMcElieceKobaraImaiCipher)
  {
    this.aFH = paramDigest;
    this.biC = paramMcElieceKobaraImaiCipher;
    this.biz = new ByteArrayOutputStream();
  }
  
  private byte[] sa()
  {
    this.biz.write(1);
    byte[] arrayOfByte = this.biz.toByteArray();
    this.biz.reset();
    return arrayOfByte;
  }
  
  private byte[] ʺ(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length - 1;
    while ((i >= 0) && (paramArrayOfByte[i] == 0)) {
      i -= 1;
    }
    if (paramArrayOfByte[i] != 1) {
      throw new BadPaddingException("invalid ciphertext");
    }
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  public byte[] doFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    update(paramArrayOfByte, paramInt1, paramInt2);
    if (this.biI == 1)
    {
      try
      {
        paramArrayOfByte = this.biC.וֹ(sa());
        return paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    else if (this.biI == 2)
    {
      paramArrayOfByte = this.biz.toByteArray();
      this.biz.reset();
      try
      {
        paramArrayOfByte = ʺ(this.biC.ﹲ(paramArrayOfByte));
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
    this.biz.reset();
    paramKey = McElieceCCA2KeysToParams.ˊ((PrivateKey)paramKey);
    this.aFH.reset();
    this.biC.ˊ(false, paramKey);
  }
  
  protected void ˊ(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    this.biz.reset();
    paramKey = new ParametersWithRandom(McElieceCCA2KeysToParams.ˊ((PublicKey)paramKey), paramSecureRandom);
    this.aFH.reset();
    this.biC.ˊ(true, paramKey);
  }
  
  public int ˋ(Key paramKey)
  {
    if ((paramKey instanceof PublicKey))
    {
      paramKey = (McElieceCCA2KeyParameters)McElieceCCA2KeysToParams.ˊ((PublicKey)paramKey);
      return this.biC.ˊ(paramKey);
    }
    if ((paramKey instanceof PrivateKey))
    {
      paramKey = (McElieceCCA2KeyParameters)McElieceCCA2KeysToParams.ˊ((PrivateKey)paramKey);
      return this.biC.ˊ(paramKey);
    }
    throw new InvalidKeyException();
  }
  
  protected int ϛ(int paramInt)
  {
    return 0;
  }
  
  protected int ч(int paramInt)
  {
    return 0;
  }
  
  public static class McElieceKobaraImai
    extends McElieceKobaraImaiCipherSpi
  {
    public McElieceKobaraImai()
    {
      super(new McElieceKobaraImaiCipher());
    }
  }
  
  public static class McElieceKobaraImai224
    extends McElieceKobaraImaiCipherSpi
  {
    public McElieceKobaraImai224()
    {
      super(new McElieceKobaraImaiCipher());
    }
  }
  
  public static class McElieceKobaraImai256
    extends McElieceKobaraImaiCipherSpi
  {
    public McElieceKobaraImai256()
    {
      super(new McElieceKobaraImaiCipher());
    }
  }
  
  public static class McElieceKobaraImai384
    extends McElieceKobaraImaiCipherSpi
  {
    public McElieceKobaraImai384()
    {
      super(new McElieceKobaraImaiCipher());
    }
  }
  
  public static class McElieceKobaraImai512
    extends McElieceKobaraImaiCipherSpi
  {
    public McElieceKobaraImai512()
    {
      super(new McElieceKobaraImaiCipher());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKobaraImaiCipherSpi
 * JD-Core Version:    0.7.0.1
 */