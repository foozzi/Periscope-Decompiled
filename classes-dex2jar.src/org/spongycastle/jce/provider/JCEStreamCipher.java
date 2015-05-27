package org.spongycastle.jce.provider;

import java.io.PrintStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.engines.BlowfishEngine;
import org.spongycastle.crypto.engines.DESEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.SkipjackEngine;
import org.spongycastle.crypto.engines.TwofishEngine;
import org.spongycastle.crypto.modes.CFBBlockCipher;
import org.spongycastle.crypto.modes.OFBBlockCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.jcajce.provider.symmetric.util.BCPBEKey;
import org.spongycastle.jcajce.provider.symmetric.util.PBE;
import org.spongycastle.jcajce.provider.symmetric.util.PBE.Util;

public class JCEStreamCipher
  extends CipherSpi
  implements PBE
{
  private int aWR = 0;
  private AlgorithmParameters aXe;
  private Class[] aXo = { RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class };
  private ParametersWithIV aZh;
  private PBEParameterSpec aZk = null;
  private String aZl = null;
  private StreamCipher aZx;
  
  protected JCEStreamCipher(StreamCipher paramStreamCipher, int paramInt)
  {
    this.aZx = paramStreamCipher;
    this.aWR = paramInt;
  }
  
  protected int engineDoFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramInt2 != 0) {
      this.aZx.ˋ(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
    }
    this.aZx.reset();
    return paramInt2;
  }
  
  protected byte[] engineDoFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 0)
    {
      paramArrayOfByte = engineUpdate(paramArrayOfByte, paramInt1, paramInt2);
      this.aZx.reset();
      return paramArrayOfByte;
    }
    this.aZx.reset();
    return new byte[0];
  }
  
  protected int engineGetBlockSize()
  {
    return 0;
  }
  
  protected byte[] engineGetIV()
  {
    if (this.aZh != null) {
      return this.aZh.getIV();
    }
    return null;
  }
  
  protected int engineGetKeySize(Key paramKey)
  {
    return paramKey.getEncoded().length * 8;
  }
  
  protected int engineGetOutputSize(int paramInt)
  {
    return paramInt;
  }
  
  protected AlgorithmParameters engineGetParameters()
  {
    if ((this.aXe == null) && (this.aZk != null)) {
      try
      {
        AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance(this.aZl, "SC");
        localAlgorithmParameters.init(this.aZk);
        return localAlgorithmParameters;
      }
      catch (Exception localException)
      {
        return null;
      }
    }
    return this.aXe;
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameters paramAlgorithmParameters, SecureRandom paramSecureRandom)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramAlgorithmParameters != null)
    {
      int i = 0;
      for (;;)
      {
        Object localObject1 = localObject3;
        if (i == this.aXo.length) {
          break;
        }
        try
        {
          localObject1 = paramAlgorithmParameters.getParameterSpec(this.aXo[i]);
        }
        catch (Exception localException)
        {
          i += 1;
        }
      }
      localObject2 = localException;
      if (localException == null) {
        throw new InvalidAlgorithmParameterException("can't handle parameter " + paramAlgorithmParameters.toString());
      }
    }
    engineInit(paramInt, paramKey, localObject2, paramSecureRandom);
    this.aXe = paramAlgorithmParameters;
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
      throw new InvalidKeyException(paramKey.getMessage());
    }
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    this.aZk = null;
    this.aZl = null;
    this.aXe = null;
    if (!(paramKey instanceof SecretKey)) {
      throw new InvalidKeyException("Key for algorithm " + paramKey.getAlgorithm() + " not suitable for symmetric enryption.");
    }
    if ((paramKey instanceof BCPBEKey))
    {
      BCPBEKey localBCPBEKey = (BCPBEKey)paramKey;
      if (localBCPBEKey.nV() != null) {
        this.aZl = localBCPBEKey.nV().getId();
      } else {
        this.aZl = localBCPBEKey.getAlgorithm();
      }
      if (localBCPBEKey.nU() != null)
      {
        paramKey = localBCPBEKey.nU();
        this.aZk = new PBEParameterSpec(localBCPBEKey.getSalt(), localBCPBEKey.getIterationCount());
      }
      else if ((paramAlgorithmParameterSpec instanceof PBEParameterSpec))
      {
        paramKey = PBE.Util.ˊ(localBCPBEKey, paramAlgorithmParameterSpec, this.aZx.iG());
        this.aZk = ((PBEParameterSpec)paramAlgorithmParameterSpec);
      }
      else
      {
        throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
      }
      if (localBCPBEKey.nT() != 0) {
        this.aZh = ((ParametersWithIV)paramKey);
      }
    }
    else if (paramAlgorithmParameterSpec == null)
    {
      paramKey = new KeyParameter(paramKey.getEncoded());
    }
    else if ((paramAlgorithmParameterSpec instanceof IvParameterSpec))
    {
      paramKey = new ParametersWithIV(new KeyParameter(paramKey.getEncoded()), ((IvParameterSpec)paramAlgorithmParameterSpec).getIV());
      this.aZh = ((ParametersWithIV)paramKey);
    }
    else
    {
      throw new IllegalArgumentException("unknown parameter type.");
    }
    paramAlgorithmParameterSpec = paramKey;
    if (this.aWR != 0)
    {
      paramAlgorithmParameterSpec = paramKey;
      if (!(paramKey instanceof ParametersWithIV))
      {
        paramAlgorithmParameterSpec = paramSecureRandom;
        if (paramSecureRandom == null) {
          paramAlgorithmParameterSpec = new SecureRandom();
        }
        if ((paramInt == 1) || (paramInt == 3))
        {
          paramSecureRandom = new byte[this.aWR];
          paramAlgorithmParameterSpec.nextBytes(paramSecureRandom);
          paramAlgorithmParameterSpec = new ParametersWithIV(paramKey, paramSecureRandom);
          this.aZh = ((ParametersWithIV)paramAlgorithmParameterSpec);
        }
        else
        {
          throw new InvalidAlgorithmParameterException("no IV set when one expected");
        }
      }
    }
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
    case 3: 
      this.aZx.ˊ(true, paramAlgorithmParameterSpec);
      return;
    case 2: 
    case 4: 
      this.aZx.ˊ(false, paramAlgorithmParameterSpec);
      return;
    }
    System.out.println("eeek!");
  }
  
  protected void engineSetMode(String paramString)
  {
    if (!paramString.equalsIgnoreCase("ECB")) {
      throw new IllegalArgumentException("can't support mode " + paramString);
    }
  }
  
  protected void engineSetPadding(String paramString)
  {
    if (!paramString.equalsIgnoreCase("NoPadding")) {
      throw new NoSuchPaddingException("Padding " + paramString + " unknown.");
    }
  }
  
  protected Key engineUnwrap(byte[] paramArrayOfByte, String paramString, int paramInt)
  {
    try
    {
      paramArrayOfByte = engineDoFinal(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    catch (BadPaddingException paramArrayOfByte)
    {
      throw new InvalidKeyException(paramArrayOfByte.getMessage());
    }
    catch (IllegalBlockSizeException paramArrayOfByte)
    {
      throw new InvalidKeyException(paramArrayOfByte.getMessage());
    }
    if (paramInt == 3) {
      return new SecretKeySpec(paramArrayOfByte, paramString);
    }
    if ((paramString.equals("")) && (paramInt == 2)) {
      try
      {
        paramArrayOfByte = PrivateKeyInfo.ﹷ(paramArrayOfByte);
        paramString = BouncyCastleProvider.ˏ(paramArrayOfByte);
        if (paramString != null) {
          return paramString;
        }
        throw new InvalidKeyException("algorithm " + paramArrayOfByte.fW().fK() + " not supported");
      }
      catch (Exception paramArrayOfByte)
      {
        throw new InvalidKeyException("Invalid key encoding.");
      }
    }
    try
    {
      paramString = KeyFactory.getInstance(paramString, "SC");
      if (paramInt == 1)
      {
        paramArrayOfByte = paramString.generatePublic(new X509EncodedKeySpec(paramArrayOfByte));
        return paramArrayOfByte;
      }
      if (paramInt == 2)
      {
        paramArrayOfByte = paramString.generatePrivate(new PKCS8EncodedKeySpec(paramArrayOfByte));
        return paramArrayOfByte;
      }
    }
    catch (NoSuchProviderException paramArrayOfByte)
    {
      throw new InvalidKeyException("Unknown key type " + paramArrayOfByte.getMessage());
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      throw new InvalidKeyException("Unknown key type " + paramArrayOfByte.getMessage());
    }
    catch (InvalidKeySpecException paramArrayOfByte)
    {
      throw new InvalidKeyException("Unknown key type " + paramArrayOfByte.getMessage());
    }
    throw new InvalidKeyException("Unknown key type " + paramInt);
  }
  
  protected int engineUpdate(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    try
    {
      this.aZx.ˋ(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
      return paramInt2;
    }
    catch (DataLengthException paramArrayOfByte1)
    {
      throw new ShortBufferException(paramArrayOfByte1.getMessage());
    }
  }
  
  protected byte[] engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    this.aZx.ˋ(paramArrayOfByte, paramInt1, paramInt2, arrayOfByte, 0);
    return arrayOfByte;
  }
  
  protected byte[] engineWrap(Key paramKey)
  {
    paramKey = paramKey.getEncoded();
    if (paramKey == null) {
      throw new InvalidKeyException("Cannot wrap key, null encoding.");
    }
    try
    {
      paramKey = engineDoFinal(paramKey, 0, paramKey.length);
      return paramKey;
    }
    catch (BadPaddingException paramKey)
    {
      throw new IllegalBlockSizeException(paramKey.getMessage());
    }
  }
  
  public static class Blowfish_CFB8
    extends JCEStreamCipher
  {
    public Blowfish_CFB8()
    {
      super(64);
    }
  }
  
  public static class Blowfish_OFB8
    extends JCEStreamCipher
  {
    public Blowfish_OFB8()
    {
      super(64);
    }
  }
  
  public static class DES_CFB8
    extends JCEStreamCipher
  {
    public DES_CFB8()
    {
      super(64);
    }
  }
  
  public static class DES_OFB8
    extends JCEStreamCipher
  {
    public DES_OFB8()
    {
      super(64);
    }
  }
  
  public static class DESede_CFB8
    extends JCEStreamCipher
  {
    public DESede_CFB8()
    {
      super(64);
    }
  }
  
  public static class DESede_OFB8
    extends JCEStreamCipher
  {
    public DESede_OFB8()
    {
      super(64);
    }
  }
  
  public static class Skipjack_CFB8
    extends JCEStreamCipher
  {
    public Skipjack_CFB8()
    {
      super(64);
    }
  }
  
  public static class Skipjack_OFB8
    extends JCEStreamCipher
  {
    public Skipjack_OFB8()
    {
      super(64);
    }
  }
  
  public static class Twofish_CFB8
    extends JCEStreamCipher
  {
    public Twofish_CFB8()
    {
      super(128);
    }
  }
  
  public static class Twofish_OFB8
    extends JCEStreamCipher
  {
    public Twofish_OFB8()
    {
      super(128);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.JCEStreamCipher
 * JD-Core Version:    0.7.0.1
 */