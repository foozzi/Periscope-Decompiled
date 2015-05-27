package org.spongycastle.jcajce.provider.asymmetric.elgamal;

import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.interfaces.DHKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource.PSpecified;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.BufferedAsymmetricBlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.encodings.ISO9796d1Encoding;
import org.spongycastle.crypto.encodings.OAEPEncoding;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.ElGamalEngine;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.jcajce.provider.asymmetric.util.BaseCipherSpi;
import org.spongycastle.jcajce.provider.util.DigestFactory;
import org.spongycastle.jce.interfaces.ElGamalKey;
import org.spongycastle.jce.interfaces.ElGamalPrivateKey;
import org.spongycastle.jce.interfaces.ElGamalPublicKey;
import org.spongycastle.jce.spec.ElGamalParameterSpec;
import org.spongycastle.util.Strings;

public class CipherSpi
  extends BaseCipherSpi
{
  private BufferedAsymmetricBlockCipher aXc;
  private AlgorithmParameterSpec aXd;
  private AlgorithmParameters aXe;
  
  public CipherSpi(AsymmetricBlockCipher paramAsymmetricBlockCipher)
  {
    this.aXc = new BufferedAsymmetricBlockCipher(paramAsymmetricBlockCipher);
  }
  
  private void ˊ(OAEPParameterSpec paramOAEPParameterSpec)
  {
    MGF1ParameterSpec localMGF1ParameterSpec = (MGF1ParameterSpec)paramOAEPParameterSpec.getMGFParameters();
    Digest localDigest = DigestFactory.ﺛ(localMGF1ParameterSpec.getDigestAlgorithm());
    if (localDigest == null) {
      throw new NoSuchPaddingException("no match on OAEP constructor for digest algorithm: " + localMGF1ParameterSpec.getDigestAlgorithm());
    }
    this.aXc = new BufferedAsymmetricBlockCipher(new OAEPEncoding(new ElGamalEngine(), localDigest, ((PSource.PSpecified)paramOAEPParameterSpec.getPSource()).getValue()));
    this.aXd = paramOAEPParameterSpec;
  }
  
  protected int engineDoFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    this.aXc.ـ(paramArrayOfByte1, paramInt1, paramInt2);
    try
    {
      paramArrayOfByte1 = this.aXc.doFinal();
    }
    catch (InvalidCipherTextException paramArrayOfByte1)
    {
      throw new BadPaddingException(paramArrayOfByte1.getMessage());
    }
    paramInt1 = 0;
    while (paramInt1 != paramArrayOfByte1.length)
    {
      paramArrayOfByte2[(paramInt3 + paramInt1)] = paramArrayOfByte1[paramInt1];
      paramInt1 += 1;
    }
    return paramArrayOfByte1.length;
  }
  
  protected byte[] engineDoFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aXc.ـ(paramArrayOfByte, paramInt1, paramInt2);
    try
    {
      paramArrayOfByte = this.aXc.doFinal();
      return paramArrayOfByte;
    }
    catch (InvalidCipherTextException paramArrayOfByte)
    {
      throw new BadPaddingException(paramArrayOfByte.getMessage());
    }
  }
  
  protected int engineGetBlockSize()
  {
    return this.aXc.iB();
  }
  
  protected int engineGetKeySize(Key paramKey)
  {
    if ((paramKey instanceof ElGamalKey)) {
      return ((ElGamalKey)paramKey).nG().getP().bitLength();
    }
    if ((paramKey instanceof DHKey)) {
      return ((DHKey)paramKey).getParams().getP().bitLength();
    }
    throw new IllegalArgumentException("not an ElGamal key!");
  }
  
  protected int engineGetOutputSize(int paramInt)
  {
    return this.aXc.iC();
  }
  
  protected AlgorithmParameters engineGetParameters()
  {
    if ((this.aXe == null) && (this.aXd != null)) {
      try
      {
        this.aXe = AlgorithmParameters.getInstance("OAEP", "SC");
        this.aXe.init(this.aXd);
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException.toString());
      }
    }
    return this.aXe;
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameters paramAlgorithmParameters, SecureRandom paramSecureRandom)
  {
    throw new InvalidAlgorithmParameterException("can't handle parameters in ElGamal");
  }
  
  protected void engineInit(int paramInt, Key paramKey, SecureRandom paramSecureRandom)
  {
    engineInit(paramInt, paramKey, null, paramSecureRandom);
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (paramAlgorithmParameterSpec == null)
    {
      if ((paramKey instanceof ElGamalPublicKey)) {
        paramKey = ElGamalUtil.ˊ((PublicKey)paramKey);
      } else if ((paramKey instanceof ElGamalPrivateKey)) {
        paramKey = ElGamalUtil.ˊ((PrivateKey)paramKey);
      } else {
        throw new InvalidKeyException("unknown key type passed to ElGamal");
      }
    }
    else {
      throw new IllegalArgumentException("unknown parameter type.");
    }
    paramAlgorithmParameterSpec = paramKey;
    if (paramSecureRandom != null) {
      paramAlgorithmParameterSpec = new ParametersWithRandom(paramKey, paramSecureRandom);
    }
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
    case 3: 
      this.aXc.ˊ(true, paramAlgorithmParameterSpec);
      return;
    case 2: 
    case 4: 
      this.aXc.ˊ(false, paramAlgorithmParameterSpec);
      return;
    }
    throw new InvalidParameterException("unknown opmode " + paramInt + " passed to ElGamal");
  }
  
  protected void engineSetMode(String paramString)
  {
    String str = Strings.ʟ(paramString);
    if ((str.equals("NONE")) || (str.equals("ECB"))) {
      return;
    }
    throw new NoSuchAlgorithmException("can't support mode " + paramString);
  }
  
  protected void engineSetPadding(String paramString)
  {
    String str = Strings.ʟ(paramString);
    if (str.equals("NOPADDING"))
    {
      this.aXc = new BufferedAsymmetricBlockCipher(new ElGamalEngine());
      return;
    }
    if (str.equals("PKCS1PADDING"))
    {
      this.aXc = new BufferedAsymmetricBlockCipher(new PKCS1Encoding(new ElGamalEngine()));
      return;
    }
    if (str.equals("ISO9796-1PADDING"))
    {
      this.aXc = new BufferedAsymmetricBlockCipher(new ISO9796d1Encoding(new ElGamalEngine()));
      return;
    }
    if (str.equals("OAEPPADDING"))
    {
      ˊ(OAEPParameterSpec.DEFAULT);
      return;
    }
    if (str.equals("OAEPWITHMD5ANDMGF1PADDING"))
    {
      ˊ(new OAEPParameterSpec("MD5", "MGF1", new MGF1ParameterSpec("MD5"), PSource.PSpecified.DEFAULT));
      return;
    }
    if (str.equals("OAEPWITHSHA1ANDMGF1PADDING"))
    {
      ˊ(OAEPParameterSpec.DEFAULT);
      return;
    }
    if (str.equals("OAEPWITHSHA224ANDMGF1PADDING"))
    {
      ˊ(new OAEPParameterSpec("SHA-224", "MGF1", new MGF1ParameterSpec("SHA-224"), PSource.PSpecified.DEFAULT));
      return;
    }
    if (str.equals("OAEPWITHSHA256ANDMGF1PADDING"))
    {
      ˊ(new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT));
      return;
    }
    if (str.equals("OAEPWITHSHA384ANDMGF1PADDING"))
    {
      ˊ(new OAEPParameterSpec("SHA-384", "MGF1", MGF1ParameterSpec.SHA384, PSource.PSpecified.DEFAULT));
      return;
    }
    if (str.equals("OAEPWITHSHA512ANDMGF1PADDING"))
    {
      ˊ(new OAEPParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, PSource.PSpecified.DEFAULT));
      return;
    }
    throw new NoSuchPaddingException(paramString + " unavailable with ElGamal.");
  }
  
  protected int engineUpdate(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    this.aXc.ـ(paramArrayOfByte1, paramInt1, paramInt2);
    return 0;
  }
  
  protected byte[] engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aXc.ـ(paramArrayOfByte, paramInt1, paramInt2);
    return null;
  }
  
  public static class NoPadding
    extends CipherSpi
  {
    public NoPadding()
    {
      super();
    }
  }
  
  public static class PKCS1v1_5Padding
    extends CipherSpi
  {
    public PKCS1v1_5Padding()
    {
      super();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.elgamal.CipherSpi
 * JD-Core Version:    0.7.0.1
 */