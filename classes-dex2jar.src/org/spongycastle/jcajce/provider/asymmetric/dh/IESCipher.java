package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.agreement.DHBasicAgreement;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.engines.AESEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.IESEngine;
import org.spongycastle.crypto.generators.DHKeyPairGenerator;
import org.spongycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.spongycastle.crypto.generators.KDF2BytesGenerator;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHKeyGenerationParameters;
import org.spongycastle.crypto.params.DHKeyParameters;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.IESWithCipherParameters;
import org.spongycastle.crypto.parsers.DHIESPublicKeyParser;
import org.spongycastle.jcajce.provider.asymmetric.util.DHUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.IESUtil;
import org.spongycastle.jce.interfaces.IESKey;
import org.spongycastle.jce.spec.IESParameterSpec;
import org.spongycastle.util.Strings;

public class IESCipher
  extends CipherSpi
{
  private SecureRandom aFa;
  private ByteArrayOutputStream aUh = new ByteArrayOutputStream();
  private IESEngine aWs;
  private AlgorithmParameters aWt = null;
  private IESParameterSpec aWu = null;
  private AsymmetricKeyParameter aWv;
  private boolean aWw = false;
  private AsymmetricKeyParameter aWx = null;
  private int state = -1;
  
  public IESCipher(IESEngine paramIESEngine)
  {
    this.aWs = paramIESEngine;
  }
  
  public int engineDoFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    paramArrayOfByte1 = engineDoFinal(paramArrayOfByte1, paramInt1, paramInt2);
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, paramInt3, paramArrayOfByte1.length);
    return paramArrayOfByte1.length;
  }
  
  public byte[] engineDoFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 0) {
      this.aUh.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    paramArrayOfByte = this.aUh.toByteArray();
    this.aUh.reset();
    IESWithCipherParameters localIESWithCipherParameters = new IESWithCipherParameters(this.aWu.kN(), this.aWu.kO(), this.aWu.kP(), this.aWu.kQ());
    Object localObject = ((DHKeyParameters)this.aWv).kA();
    if (this.aWx != null) {
      try
      {
        if ((this.state == 1) || (this.state == 3)) {
          this.aWs.ˊ(true, this.aWx, this.aWv, localIESWithCipherParameters);
        } else {
          this.aWs.ˊ(false, this.aWv, this.aWx, localIESWithCipherParameters);
        }
        paramArrayOfByte = this.aWs.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
        return paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        throw new BadPaddingException(paramArrayOfByte.getMessage());
      }
    }
    if ((this.state == 1) || (this.state == 3))
    {
      DHKeyPairGenerator localDHKeyPairGenerator = new DHKeyPairGenerator();
      localDHKeyPairGenerator.ˊ(new DHKeyGenerationParameters(this.aFa, (DHParameters)localObject));
      localObject = new EphemeralKeyPairGenerator(localDHKeyPairGenerator, new IESCipher.1(this));
      try
      {
        this.aWs.ˊ(this.aWv, localIESWithCipherParameters, (EphemeralKeyPairGenerator)localObject);
        paramArrayOfByte = this.aWs.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
        return paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        throw new BadPaddingException(paramArrayOfByte.getMessage());
      }
    }
    if ((this.state == 2) || (this.state == 4)) {
      try
      {
        this.aWs.ˊ(this.aWv, localIESWithCipherParameters, new DHIESPublicKeyParser(((DHKeyParameters)this.aWv).kA()));
        paramArrayOfByte = this.aWs.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
        return paramArrayOfByte;
      }
      catch (InvalidCipherTextException paramArrayOfByte)
      {
        throw new BadPaddingException(paramArrayOfByte.getMessage());
      }
    }
    throw new IllegalStateException("IESCipher not initialised");
  }
  
  public int engineGetBlockSize()
  {
    if (this.aWs.jA() != null) {
      return this.aWs.jA().getBlockSize();
    }
    return 0;
  }
  
  public byte[] engineGetIV()
  {
    return null;
  }
  
  public int engineGetKeySize(Key paramKey)
  {
    if ((paramKey instanceof DHKey)) {
      return ((DHKey)paramKey).getParams().getP().bitLength();
    }
    throw new IllegalArgumentException("not a DH key");
  }
  
  public int engineGetOutputSize(int paramInt)
  {
    int i = this.aWs.jB().iO();
    int j;
    if (this.aWv != null) {
      j = ((DHKey)this.aWv).getParams().getP().bitLength() / 8 + 1;
    } else {
      throw new IllegalStateException("cipher not initialised");
    }
    if (this.aWs.jA() != null) {
      if ((this.state == 1) || (this.state == 3)) {
        paramInt = this.aWs.jA().getOutputSize(paramInt);
      } else if ((this.state == 2) || (this.state == 4)) {
        paramInt = this.aWs.jA().getOutputSize(paramInt - i - j);
      } else {
        throw new IllegalStateException("cipher not initialised");
      }
    }
    if ((this.state == 1) || (this.state == 3)) {
      return this.aUh.size() + i + j + paramInt;
    }
    if ((this.state == 2) || (this.state == 4)) {
      return this.aUh.size() - i - j + paramInt;
    }
    throw new IllegalStateException("IESCipher not initialised");
  }
  
  public AlgorithmParameters engineGetParameters()
  {
    if ((this.aWt == null) && (this.aWu != null)) {
      try
      {
        this.aWt = AlgorithmParameters.getInstance("IES", "SC");
        this.aWt.init(this.aWu);
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException.toString());
      }
    }
    return this.aWt;
  }
  
  public void engineInit(int paramInt, Key paramKey, AlgorithmParameters paramAlgorithmParameters, SecureRandom paramSecureRandom)
  {
    AlgorithmParameterSpec localAlgorithmParameterSpec = null;
    if (paramAlgorithmParameters != null) {
      try
      {
        localAlgorithmParameterSpec = paramAlgorithmParameters.getParameterSpec(IESParameterSpec.class);
      }
      catch (Exception paramKey)
      {
        throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + paramKey.toString());
      }
    }
    this.aWt = paramAlgorithmParameters;
    engineInit(paramInt, paramKey, localAlgorithmParameterSpec, paramSecureRandom);
  }
  
  public void engineInit(int paramInt, Key paramKey, SecureRandom paramSecureRandom)
  {
    try
    {
      engineInit(paramInt, paramKey, null, paramSecureRandom);
      return;
    }
    catch (InvalidAlgorithmParameterException paramKey)
    {
      throw new IllegalArgumentException("can't handle supplied parameter spec");
    }
  }
  
  public void engineInit(int paramInt, Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (paramAlgorithmParameterSpec == null) {
      this.aWu = IESUtil.ˊ(this.aWs);
    } else if ((paramAlgorithmParameterSpec instanceof IESParameterSpec)) {
      this.aWu = ((IESParameterSpec)paramAlgorithmParameterSpec);
    } else {
      throw new InvalidAlgorithmParameterException("must be passed IES parameters");
    }
    if ((paramInt == 1) || (paramInt == 3))
    {
      if ((paramKey instanceof DHPublicKey))
      {
        this.aWv = DHUtil.ˊ((PublicKey)paramKey);
      }
      else if ((paramKey instanceof IESKey))
      {
        paramKey = (IESKey)paramKey;
        this.aWv = DHUtil.ˊ(paramKey.getPublic());
        this.aWx = DHUtil.ˊ(paramKey.getPrivate());
      }
      else
      {
        throw new InvalidKeyException("must be passed recipient's public DH key for encryption");
      }
    }
    else if ((paramInt == 2) || (paramInt == 4))
    {
      if ((paramKey instanceof DHPrivateKey))
      {
        this.aWv = DHUtil.ˊ((PrivateKey)paramKey);
      }
      else if ((paramKey instanceof IESKey))
      {
        paramKey = (IESKey)paramKey;
        this.aWx = DHUtil.ˊ(paramKey.getPublic());
        this.aWv = DHUtil.ˊ(paramKey.getPrivate());
      }
      else
      {
        throw new InvalidKeyException("must be passed recipient's private DH key for decryption");
      }
    }
    else {
      throw new InvalidKeyException("must be passed EC key");
    }
    this.aFa = paramSecureRandom;
    this.state = paramInt;
    this.aUh.reset();
  }
  
  public void engineSetMode(String paramString)
  {
    String str = Strings.ʟ(paramString);
    if (str.equals("NONE"))
    {
      this.aWw = false;
      return;
    }
    if (str.equals("DHAES"))
    {
      this.aWw = true;
      return;
    }
    throw new IllegalArgumentException("can't support mode " + paramString);
  }
  
  public void engineSetPadding(String paramString)
  {
    paramString = Strings.ʟ(paramString);
    if (paramString.equals("NOPADDING")) {
      return;
    }
    if (!paramString.equals("PKCS5PADDING"))
    {
      if (paramString.equals("PKCS7PADDING")) {
        return;
      }
      throw new NoSuchPaddingException("padding not available with IESCipher");
    }
  }
  
  public int engineUpdate(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    this.aUh.write(paramArrayOfByte1, paramInt1, paramInt2);
    return 0;
  }
  
  public byte[] engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aUh.write(paramArrayOfByte, paramInt1, paramInt2);
    return null;
  }
  
  public static class IES
    extends IESCipher
  {
    public IES()
    {
      super();
    }
  }
  
  public static class IESwithAES
    extends IESCipher
  {
    public IESwithAES()
    {
      super();
    }
  }
  
  public static class IESwithDESede
    extends IESCipher
  {
    public IESwithDESede()
    {
      super();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dh.IESCipher
 * JD-Core Version:    0.7.0.1
 */