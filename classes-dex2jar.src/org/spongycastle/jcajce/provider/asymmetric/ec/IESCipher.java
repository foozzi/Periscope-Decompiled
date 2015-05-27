package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.io.ByteArrayOutputStream;
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
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.agreement.ECDHBasicAgreement;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.engines.AESEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.IESEngine;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.spongycastle.crypto.generators.KDF2BytesGenerator;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECKeyParameters;
import org.spongycastle.crypto.params.IESWithCipherParameters;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.parsers.ECIESPublicKeyParser;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.IESUtil;
import org.spongycastle.jce.interfaces.ECKey;
import org.spongycastle.jce.interfaces.ECPrivateKey;
import org.spongycastle.jce.interfaces.ECPublicKey;
import org.spongycastle.jce.interfaces.IESKey;
import org.spongycastle.jce.spec.ECParameterSpec;
import org.spongycastle.jce.spec.IESParameterSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.util.Strings;

public class IESCipher
  extends CipherSpi
{
  private SecureRandom aFa;
  private ByteArrayOutputStream aUh = new ByteArrayOutputStream();
  private int aWR;
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
    this.aWR = 0;
  }
  
  public IESCipher(IESEngine paramIESEngine, int paramInt)
  {
    this.aWs = paramIESEngine;
    this.aWR = paramInt;
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
    byte[] arrayOfByte = this.aUh.toByteArray();
    this.aUh.reset();
    Object localObject = new IESWithCipherParameters(this.aWu.kN(), this.aWu.kO(), this.aWu.kP(), this.aWu.kQ());
    paramArrayOfByte = (byte[])localObject;
    if (this.aWu.fn() != null) {
      paramArrayOfByte = new ParametersWithIV((CipherParameters)localObject, this.aWu.fn());
    }
    localObject = ((ECKeyParameters)this.aWv).kG();
    if (this.aWx != null) {
      try
      {
        if ((this.state == 1) || (this.state == 3)) {
          this.aWs.ˊ(true, this.aWx, this.aWv, paramArrayOfByte);
        } else {
          this.aWs.ˊ(false, this.aWv, this.aWx, paramArrayOfByte);
        }
        paramArrayOfByte = this.aWs.ˑ(arrayOfByte, 0, arrayOfByte.length);
        return paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        throw new BadPaddingException(paramArrayOfByte.getMessage());
      }
    }
    if ((this.state == 1) || (this.state == 3))
    {
      ECKeyPairGenerator localECKeyPairGenerator = new ECKeyPairGenerator();
      localECKeyPairGenerator.ˊ(new ECKeyGenerationParameters((ECDomainParameters)localObject, this.aFa));
      localObject = new EphemeralKeyPairGenerator(localECKeyPairGenerator, new IESCipher.1(this));
      try
      {
        this.aWs.ˊ(this.aWv, paramArrayOfByte, (EphemeralKeyPairGenerator)localObject);
        paramArrayOfByte = this.aWs.ˑ(arrayOfByte, 0, arrayOfByte.length);
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
        this.aWs.ˊ(this.aWv, paramArrayOfByte, new ECIESPublicKeyParser((ECDomainParameters)localObject));
        paramArrayOfByte = this.aWs.ˑ(arrayOfByte, 0, arrayOfByte.length);
        return paramArrayOfByte;
      }
      catch (InvalidCipherTextException paramArrayOfByte)
      {
        throw new BadPaddingException(paramArrayOfByte.getMessage());
      }
    }
    throw new IllegalStateException("cipher not initialised");
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
    if ((paramKey instanceof ECKey)) {
      return ((ECKey)paramKey).nB().iv().getFieldSize();
    }
    throw new IllegalArgumentException("not an EC key");
  }
  
  public int engineGetOutputSize(int paramInt)
  {
    int i = this.aWs.jB().iO();
    int j;
    if (this.aWv != null) {
      j = (((ECKey)this.aWv).nB().iv().getFieldSize() + 7) * 2 / 8 + 1;
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
    throw new IllegalStateException("cipher not initialised");
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
    this.aWx = null;
    if (paramAlgorithmParameterSpec == null) {
      this.aWu = IESUtil.ˊ(this.aWs);
    } else if ((paramAlgorithmParameterSpec instanceof IESParameterSpec)) {
      this.aWu = ((IESParameterSpec)paramAlgorithmParameterSpec);
    } else {
      throw new InvalidAlgorithmParameterException("must be passed IES parameters");
    }
    paramAlgorithmParameterSpec = this.aWu.fn();
    if (paramAlgorithmParameterSpec != null)
    {
      if (this.aWR == 0) {
        throw new InvalidAlgorithmParameterException("NONCE present in IES Parameters when none required");
      }
      if (paramAlgorithmParameterSpec.length != this.aWR) {
        throw new InvalidAlgorithmParameterException("NONCE in IES Parameters needs to be " + this.aWR + " bytes long");
      }
    }
    if ((paramInt == 1) || (paramInt == 3))
    {
      if ((paramKey instanceof ECPublicKey))
      {
        this.aWv = ECUtil.ˊ((PublicKey)paramKey);
      }
      else if ((paramKey instanceof IESKey))
      {
        paramKey = (IESKey)paramKey;
        this.aWv = ECUtil.ˊ(paramKey.getPublic());
        this.aWx = ECUtil.ˊ(paramKey.getPrivate());
      }
      else
      {
        throw new InvalidKeyException("must be passed recipient's public EC key for encryption");
      }
    }
    else if ((paramInt == 2) || (paramInt == 4))
    {
      if ((paramKey instanceof ECPrivateKey))
      {
        this.aWv = ECUtil.ˊ((PrivateKey)paramKey);
      }
      else if ((paramKey instanceof IESKey))
      {
        paramKey = (IESKey)paramKey;
        this.aWx = ECUtil.ˊ(paramKey.getPublic());
        this.aWv = ECUtil.ˊ(paramKey.getPrivate());
      }
      else
      {
        throw new InvalidKeyException("must be passed recipient's private EC key for decryption");
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
  
  public static class ECIES
    extends IESCipher
  {
    public ECIES()
    {
      super();
    }
  }
  
  public static class ECIESwithAES
    extends IESCipher
  {
    public ECIESwithAES()
    {
      super();
    }
  }
  
  public static class ECIESwithAESCBC
    extends IESCipher
  {
    public ECIESwithAESCBC()
    {
      super(16);
    }
  }
  
  public static class ECIESwithDESede
    extends IESCipher
  {
    public ECIESwithDESede()
    {
      super();
    }
  }
  
  public static class ECIESwithDESedeCBC
    extends IESCipher
  {
    public ECIESwithDESedeCBC()
    {
      super(8);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher
 * JD-Core Version:    0.7.0.1
 */