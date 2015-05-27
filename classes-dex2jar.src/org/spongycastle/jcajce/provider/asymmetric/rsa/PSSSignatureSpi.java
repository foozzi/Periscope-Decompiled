package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.PSSSigner;
import org.spongycastle.jcajce.provider.util.DigestFactory;

public class PSSSignatureSpi
  extends SignatureSpi
{
  private int aSm;
  private Digest aSt;
  private Digest aSu;
  private byte aSz;
  private PSSParameterSpec aXC;
  private PSSParameterSpec aXD;
  private AsymmetricBlockCipher aXE;
  private boolean aXF;
  private PSSSigner aXG;
  private AlgorithmParameters aXe;
  
  protected PSSSignatureSpi(AsymmetricBlockCipher paramAsymmetricBlockCipher, PSSParameterSpec paramPSSParameterSpec)
  {
    this(paramAsymmetricBlockCipher, paramPSSParameterSpec, false);
  }
  
  protected PSSSignatureSpi(AsymmetricBlockCipher paramAsymmetricBlockCipher, PSSParameterSpec paramPSSParameterSpec, boolean paramBoolean)
  {
    this.aXE = paramAsymmetricBlockCipher;
    this.aXD = paramPSSParameterSpec;
    if (paramPSSParameterSpec == null) {
      this.aXC = PSSParameterSpec.DEFAULT;
    } else {
      this.aXC = paramPSSParameterSpec;
    }
    this.aSu = DigestFactory.ﺛ(this.aXC.getDigestAlgorithm());
    this.aSm = this.aXC.getSaltLength();
    this.aSz = ィ(this.aXC.getTrailerField());
    this.aXF = paramBoolean;
    nI();
  }
  
  private void nI()
  {
    if (this.aXF)
    {
      this.aSt = new NullPssDigest(this.aSu);
      return;
    }
    this.aSt = this.aSu;
  }
  
  private byte ィ(int paramInt)
  {
    if (paramInt == 1) {
      return -68;
    }
    throw new IllegalArgumentException("unknown trailer field");
  }
  
  protected Object engineGetParameter(String paramString)
  {
    throw new UnsupportedOperationException("engineGetParameter unsupported");
  }
  
  protected AlgorithmParameters engineGetParameters()
  {
    if ((this.aXe == null) && (this.aXC != null)) {
      try
      {
        this.aXe = AlgorithmParameters.getInstance("PSS", "SC");
        this.aXe.init(this.aXC);
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException.toString());
      }
    }
    return this.aXe;
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey)
  {
    if (!(paramPrivateKey instanceof RSAPrivateKey)) {
      throw new InvalidKeyException("Supplied key is not a RSAPrivateKey instance");
    }
    this.aXG = new PSSSigner(this.aXE, this.aSt, this.aSu, this.aSm, this.aSz);
    this.aXG.ˊ(true, RSAUtil.ˊ((RSAPrivateKey)paramPrivateKey));
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey, SecureRandom paramSecureRandom)
  {
    if (!(paramPrivateKey instanceof RSAPrivateKey)) {
      throw new InvalidKeyException("Supplied key is not a RSAPrivateKey instance");
    }
    this.aXG = new PSSSigner(this.aXE, this.aSt, this.aSu, this.aSm, this.aSz);
    this.aXG.ˊ(true, new ParametersWithRandom(RSAUtil.ˊ((RSAPrivateKey)paramPrivateKey), paramSecureRandom));
  }
  
  protected void engineInitVerify(PublicKey paramPublicKey)
  {
    if (!(paramPublicKey instanceof RSAPublicKey)) {
      throw new InvalidKeyException("Supplied key is not a RSAPublicKey instance");
    }
    this.aXG = new PSSSigner(this.aXE, this.aSt, this.aSu, this.aSm, this.aSz);
    this.aXG.ˊ(false, RSAUtil.ˊ((RSAPublicKey)paramPublicKey));
  }
  
  protected void engineSetParameter(String paramString, Object paramObject)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineSetParameter(AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    if ((paramAlgorithmParameterSpec instanceof PSSParameterSpec))
    {
      paramAlgorithmParameterSpec = (PSSParameterSpec)paramAlgorithmParameterSpec;
      if ((this.aXD != null) && (!DigestFactory.ｰ(this.aXD.getDigestAlgorithm(), paramAlgorithmParameterSpec.getDigestAlgorithm()))) {
        throw new InvalidParameterException("parameter must be using " + this.aXD.getDigestAlgorithm());
      }
      if ((!paramAlgorithmParameterSpec.getMGFAlgorithm().equalsIgnoreCase("MGF1")) && (!paramAlgorithmParameterSpec.getMGFAlgorithm().equals(PKCSObjectIdentifiers.aqw.getId()))) {
        throw new InvalidParameterException("unknown mask generation function specified");
      }
      if (!(paramAlgorithmParameterSpec.getMGFParameters() instanceof MGF1ParameterSpec)) {
        throw new InvalidParameterException("unkown MGF parameters");
      }
      MGF1ParameterSpec localMGF1ParameterSpec = (MGF1ParameterSpec)paramAlgorithmParameterSpec.getMGFParameters();
      if (!DigestFactory.ｰ(localMGF1ParameterSpec.getDigestAlgorithm(), paramAlgorithmParameterSpec.getDigestAlgorithm())) {
        throw new InvalidParameterException("digest algorithm for MGF should be the same as for PSS parameters.");
      }
      Digest localDigest = DigestFactory.ﺛ(localMGF1ParameterSpec.getDigestAlgorithm());
      if (localDigest == null) {
        throw new InvalidParameterException("no match on MGF digest algorithm: " + localMGF1ParameterSpec.getDigestAlgorithm());
      }
      this.aXe = null;
      this.aXC = paramAlgorithmParameterSpec;
      this.aSu = localDigest;
      this.aSm = this.aXC.getSaltLength();
      this.aSz = ィ(this.aXC.getTrailerField());
      nI();
      return;
    }
    throw new InvalidParameterException("Only PSSParameterSpec supported");
  }
  
  protected byte[] engineSign()
  {
    try
    {
      byte[] arrayOfByte = this.aXG.iP();
      return arrayOfByte;
    }
    catch (CryptoException localCryptoException)
    {
      throw new SignatureException(localCryptoException.getMessage());
    }
  }
  
  protected void engineUpdate(byte paramByte)
  {
    this.aXG.update(paramByte);
  }
  
  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aXG.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  protected boolean engineVerify(byte[] paramArrayOfByte)
  {
    return this.aXG.ᵔ(paramArrayOfByte);
  }
  
  class NullPssDigest
    implements Digest
  {
    private ByteArrayOutputStream aGG = new ByteArrayOutputStream();
    private Digest aXH;
    private boolean aXI = true;
    
    public NullPssDigest(Digest paramDigest)
    {
      this.aXH = paramDigest;
    }
    
    public int doFinal(byte[] paramArrayOfByte, int paramInt)
    {
      byte[] arrayOfByte = this.aGG.toByteArray();
      if (this.aXI)
      {
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt, arrayOfByte.length);
      }
      else
      {
        this.aXH.update(arrayOfByte, 0, arrayOfByte.length);
        this.aXH.doFinal(paramArrayOfByte, paramInt);
      }
      reset();
      boolean bool;
      if (!this.aXI) {
        bool = true;
      } else {
        bool = false;
      }
      this.aXI = bool;
      return arrayOfByte.length;
    }
    
    public String iG()
    {
      return "NULL";
    }
    
    public int iJ()
    {
      return this.aXH.iJ();
    }
    
    public void reset()
    {
      this.aGG.reset();
      this.aXH.reset();
    }
    
    public void update(byte paramByte)
    {
      this.aGG.write(paramByte);
    }
    
    public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      this.aGG.write(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
  
  public static class PSSwithRSA
    extends PSSSignatureSpi
  {
    public PSSwithRSA()
    {
      super(null);
    }
  }
  
  public static class SHA1withRSA
    extends PSSSignatureSpi
  {
    public SHA1withRSA()
    {
      super(PSSParameterSpec.DEFAULT);
    }
  }
  
  public static class SHA224withRSA
    extends PSSSignatureSpi
  {
    public SHA224withRSA()
    {
      super(new PSSParameterSpec("SHA-224", "MGF1", new MGF1ParameterSpec("SHA-224"), 28, 1));
    }
  }
  
  public static class SHA256withRSA
    extends PSSSignatureSpi
  {
    public SHA256withRSA()
    {
      super(new PSSParameterSpec("SHA-256", "MGF1", new MGF1ParameterSpec("SHA-256"), 32, 1));
    }
  }
  
  public static class SHA384withRSA
    extends PSSSignatureSpi
  {
    public SHA384withRSA()
    {
      super(new PSSParameterSpec("SHA-384", "MGF1", new MGF1ParameterSpec("SHA-384"), 48, 1));
    }
  }
  
  public static class SHA512withRSA
    extends PSSSignatureSpi
  {
    public SHA512withRSA()
    {
      super(new PSSParameterSpec("SHA-512", "MGF1", new MGF1ParameterSpec("SHA-512"), 64, 1));
    }
  }
  
  public static class nonePSS
    extends PSSSignatureSpi
  {
    public nonePSS()
    {
      super(null, true);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi
 * JD-Core Version:    0.7.0.1
 */