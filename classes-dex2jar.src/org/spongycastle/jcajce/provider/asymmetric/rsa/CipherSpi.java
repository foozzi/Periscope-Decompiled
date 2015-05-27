package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource.PSpecified;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.encodings.ISO9796d1Encoding;
import org.spongycastle.crypto.encodings.OAEPEncoding;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.jcajce.provider.asymmetric.util.BaseCipherSpi;
import org.spongycastle.jcajce.provider.util.DigestFactory;
import org.spongycastle.util.Strings;

public class CipherSpi
  extends BaseCipherSpi
{
  private AsymmetricBlockCipher aEV;
  private ByteArrayOutputStream aGG = new ByteArrayOutputStream();
  private AlgorithmParameterSpec aXd;
  private AlgorithmParameters aXe;
  private boolean aXx = false;
  private boolean aXy = false;
  
  public CipherSpi(OAEPParameterSpec paramOAEPParameterSpec)
  {
    try
    {
      ˊ(paramOAEPParameterSpec);
      return;
    }
    catch (NoSuchPaddingException paramOAEPParameterSpec)
    {
      throw new IllegalArgumentException(paramOAEPParameterSpec.getMessage());
    }
  }
  
  public CipherSpi(AsymmetricBlockCipher paramAsymmetricBlockCipher)
  {
    this.aEV = paramAsymmetricBlockCipher;
  }
  
  public CipherSpi(boolean paramBoolean1, boolean paramBoolean2, AsymmetricBlockCipher paramAsymmetricBlockCipher)
  {
    this.aXx = paramBoolean1;
    this.aXy = paramBoolean2;
    this.aEV = paramAsymmetricBlockCipher;
  }
  
  private void ˊ(OAEPParameterSpec paramOAEPParameterSpec)
  {
    MGF1ParameterSpec localMGF1ParameterSpec = (MGF1ParameterSpec)paramOAEPParameterSpec.getMGFParameters();
    Digest localDigest = DigestFactory.ﺛ(localMGF1ParameterSpec.getDigestAlgorithm());
    if (localDigest == null) {
      throw new NoSuchPaddingException("no match on OAEP constructor for digest algorithm: " + localMGF1ParameterSpec.getDigestAlgorithm());
    }
    this.aEV = new OAEPEncoding(new RSABlindedEngine(), localDigest, ((PSource.PSpecified)paramOAEPParameterSpec.getPSource()).getValue());
    this.aXd = paramOAEPParameterSpec;
  }
  
  protected int engineDoFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramArrayOfByte1 != null) {
      this.aGG.write(paramArrayOfByte1, paramInt1, paramInt2);
    }
    if ((this.aEV instanceof RSABlindedEngine))
    {
      if (this.aGG.size() > this.aEV.iB() + 1) {
        throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
      }
    }
    else if (this.aGG.size() > this.aEV.iB()) {
      throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
    }
    try
    {
      paramArrayOfByte1 = this.aGG.toByteArray();
      paramArrayOfByte1 = this.aEV.ˑ(paramArrayOfByte1, 0, paramArrayOfByte1.length);
    }
    catch (InvalidCipherTextException paramArrayOfByte1)
    {
      throw new BadPaddingException(paramArrayOfByte1.getMessage());
    }
    finally
    {
      this.aGG.reset();
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
    if (paramArrayOfByte != null) {
      this.aGG.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    if ((this.aEV instanceof RSABlindedEngine))
    {
      if (this.aGG.size() > this.aEV.iB() + 1) {
        throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
      }
    }
    else if (this.aGG.size() > this.aEV.iB()) {
      throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
    }
    try
    {
      paramArrayOfByte = this.aGG.toByteArray();
      this.aGG.reset();
      paramArrayOfByte = this.aEV.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
      return paramArrayOfByte;
    }
    catch (InvalidCipherTextException paramArrayOfByte)
    {
      throw new BadPaddingException(paramArrayOfByte.getMessage());
    }
  }
  
  protected int engineGetBlockSize()
  {
    try
    {
      int i = this.aEV.iB();
      return i;
    }
    catch (NullPointerException localNullPointerException)
    {
      throw new IllegalStateException("RSA Cipher not initialised");
    }
  }
  
  protected int engineGetKeySize(Key paramKey)
  {
    if ((paramKey instanceof RSAPrivateKey)) {
      return ((RSAPrivateKey)paramKey).getModulus().bitLength();
    }
    if ((paramKey instanceof RSAPublicKey)) {
      return ((RSAPublicKey)paramKey).getModulus().bitLength();
    }
    throw new IllegalArgumentException("not an RSA key!");
  }
  
  protected int engineGetOutputSize(int paramInt)
  {
    try
    {
      paramInt = this.aEV.iC();
      return paramInt;
    }
    catch (NullPointerException localNullPointerException)
    {
      throw new IllegalStateException("RSA Cipher not initialised");
    }
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
    AlgorithmParameterSpec localAlgorithmParameterSpec = null;
    if (paramAlgorithmParameters != null) {
      try
      {
        localAlgorithmParameterSpec = paramAlgorithmParameters.getParameterSpec(OAEPParameterSpec.class);
      }
      catch (InvalidParameterSpecException paramKey)
      {
        throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + paramKey.toString(), paramKey);
      }
    }
    this.aXe = paramAlgorithmParameters;
    engineInit(paramInt, paramKey, localAlgorithmParameterSpec, paramSecureRandom);
  }
  
  protected void engineInit(int paramInt, Key paramKey, SecureRandom paramSecureRandom)
  {
    try
    {
      engineInit(paramInt, paramKey, null, paramSecureRandom);
      return;
    }
    catch (InvalidAlgorithmParameterException paramKey)
    {
      throw new InvalidKeyException("Eeeek! " + paramKey.toString(), paramKey);
    }
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if ((paramAlgorithmParameterSpec == null) || ((paramAlgorithmParameterSpec instanceof OAEPParameterSpec)))
    {
      if ((paramKey instanceof RSAPublicKey))
      {
        if ((this.aXy) && (paramInt == 1)) {
          throw new InvalidKeyException("mode 1 requires RSAPrivateKey");
        }
        paramKey = RSAUtil.ˊ((RSAPublicKey)paramKey);
      }
      else if ((paramKey instanceof RSAPrivateKey))
      {
        if ((this.aXx) && (paramInt == 1)) {
          throw new InvalidKeyException("mode 2 requires RSAPublicKey");
        }
        paramKey = RSAUtil.ˊ((RSAPrivateKey)paramKey);
      }
      else
      {
        throw new InvalidKeyException("unknown key type passed to RSA");
      }
      if (paramAlgorithmParameterSpec != null)
      {
        OAEPParameterSpec localOAEPParameterSpec = (OAEPParameterSpec)paramAlgorithmParameterSpec;
        this.aXd = paramAlgorithmParameterSpec;
        if ((!localOAEPParameterSpec.getMGFAlgorithm().equalsIgnoreCase("MGF1")) && (!localOAEPParameterSpec.getMGFAlgorithm().equals(PKCSObjectIdentifiers.aqw.getId()))) {
          throw new InvalidAlgorithmParameterException("unknown mask generation function specified");
        }
        if (!(localOAEPParameterSpec.getMGFParameters() instanceof MGF1ParameterSpec)) {
          throw new InvalidAlgorithmParameterException("unkown MGF parameters");
        }
        paramAlgorithmParameterSpec = DigestFactory.ﺛ(localOAEPParameterSpec.getDigestAlgorithm());
        if (paramAlgorithmParameterSpec == null) {
          throw new InvalidAlgorithmParameterException("no match on digest algorithm: " + localOAEPParameterSpec.getDigestAlgorithm());
        }
        MGF1ParameterSpec localMGF1ParameterSpec = (MGF1ParameterSpec)localOAEPParameterSpec.getMGFParameters();
        Digest localDigest = DigestFactory.ﺛ(localMGF1ParameterSpec.getDigestAlgorithm());
        if (localDigest == null) {
          throw new InvalidAlgorithmParameterException("no match on MGF digest algorithm: " + localMGF1ParameterSpec.getDigestAlgorithm());
        }
        this.aEV = new OAEPEncoding(new RSABlindedEngine(), paramAlgorithmParameterSpec, localDigest, ((PSource.PSpecified)localOAEPParameterSpec.getPSource()).getValue());
      }
    }
    else
    {
      throw new InvalidAlgorithmParameterException("unknown parameter type: " + paramAlgorithmParameterSpec.getClass().getName());
    }
    paramAlgorithmParameterSpec = paramKey;
    if (!(this.aEV instanceof RSABlindedEngine)) {
      if (paramSecureRandom != null) {
        paramAlgorithmParameterSpec = new ParametersWithRandom(paramKey, paramSecureRandom);
      } else {
        paramAlgorithmParameterSpec = new ParametersWithRandom(paramKey, new SecureRandom());
      }
    }
    this.aGG.reset();
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
    case 3: 
      this.aEV.ˊ(true, paramAlgorithmParameterSpec);
      return;
    case 2: 
    case 4: 
      this.aEV.ˊ(false, paramAlgorithmParameterSpec);
      return;
    }
    throw new InvalidParameterException("unknown opmode " + paramInt + " passed to RSA");
  }
  
  protected void engineSetMode(String paramString)
  {
    String str = Strings.ʟ(paramString);
    if ((str.equals("NONE")) || (str.equals("ECB"))) {
      return;
    }
    if (str.equals("1"))
    {
      this.aXy = true;
      this.aXx = false;
      return;
    }
    if (str.equals("2"))
    {
      this.aXy = false;
      this.aXx = true;
      return;
    }
    throw new NoSuchAlgorithmException("can't support mode " + paramString);
  }
  
  protected void engineSetPadding(String paramString)
  {
    String str = Strings.ʟ(paramString);
    if (str.equals("NOPADDING"))
    {
      this.aEV = new RSABlindedEngine();
      return;
    }
    if (str.equals("PKCS1PADDING"))
    {
      this.aEV = new PKCS1Encoding(new RSABlindedEngine());
      return;
    }
    if (str.equals("ISO9796-1PADDING"))
    {
      this.aEV = new ISO9796d1Encoding(new RSABlindedEngine());
      return;
    }
    if (str.equals("OAEPWITHMD5ANDMGF1PADDING"))
    {
      ˊ(new OAEPParameterSpec("MD5", "MGF1", new MGF1ParameterSpec("MD5"), PSource.PSpecified.DEFAULT));
      return;
    }
    if (str.equals("OAEPPADDING"))
    {
      ˊ(OAEPParameterSpec.DEFAULT);
      return;
    }
    if ((str.equals("OAEPWITHSHA1ANDMGF1PADDING")) || (str.equals("OAEPWITHSHA-1ANDMGF1PADDING")))
    {
      ˊ(OAEPParameterSpec.DEFAULT);
      return;
    }
    if ((str.equals("OAEPWITHSHA224ANDMGF1PADDING")) || (str.equals("OAEPWITHSHA-224ANDMGF1PADDING")))
    {
      ˊ(new OAEPParameterSpec("SHA-224", "MGF1", new MGF1ParameterSpec("SHA-224"), PSource.PSpecified.DEFAULT));
      return;
    }
    if ((str.equals("OAEPWITHSHA256ANDMGF1PADDING")) || (str.equals("OAEPWITHSHA-256ANDMGF1PADDING")))
    {
      ˊ(new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, PSource.PSpecified.DEFAULT));
      return;
    }
    if ((str.equals("OAEPWITHSHA384ANDMGF1PADDING")) || (str.equals("OAEPWITHSHA-384ANDMGF1PADDING")))
    {
      ˊ(new OAEPParameterSpec("SHA-384", "MGF1", MGF1ParameterSpec.SHA384, PSource.PSpecified.DEFAULT));
      return;
    }
    if ((str.equals("OAEPWITHSHA512ANDMGF1PADDING")) || (str.equals("OAEPWITHSHA-512ANDMGF1PADDING")))
    {
      ˊ(new OAEPParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, PSource.PSpecified.DEFAULT));
      return;
    }
    throw new NoSuchPaddingException(paramString + " unavailable with RSA.");
  }
  
  protected int engineUpdate(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    this.aGG.write(paramArrayOfByte1, paramInt1, paramInt2);
    if ((this.aEV instanceof RSABlindedEngine))
    {
      if (this.aGG.size() > this.aEV.iB() + 1) {
        throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
      }
    }
    else if (this.aGG.size() > this.aEV.iB()) {
      throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
    }
    return 0;
  }
  
  protected byte[] engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aGG.write(paramArrayOfByte, paramInt1, paramInt2);
    if ((this.aEV instanceof RSABlindedEngine))
    {
      if (this.aGG.size() > this.aEV.iB() + 1) {
        throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
      }
    }
    else if (this.aGG.size() > this.aEV.iB()) {
      throw new ArrayIndexOutOfBoundsException("too much data for RSA block");
    }
    return null;
  }
  
  public static class ISO9796d1Padding
    extends CipherSpi
  {
    public ISO9796d1Padding()
    {
      super();
    }
  }
  
  public static class NoPadding
    extends CipherSpi
  {
    public NoPadding()
    {
      super();
    }
  }
  
  public static class OAEPPadding
    extends CipherSpi
  {
    public OAEPPadding()
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
  
  public static class PKCS1v1_5Padding_PrivateOnly
    extends CipherSpi
  {
    public PKCS1v1_5Padding_PrivateOnly()
    {
      super(true, new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
  
  public static class PKCS1v1_5Padding_PublicOnly
    extends CipherSpi
  {
    public PKCS1v1_5Padding_PublicOnly()
    {
      super(false, new PKCS1Encoding(new RSABlindedEngine()));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi
 * JD-Core Version:    0.7.0.1
 */