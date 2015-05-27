package org.spongycastle.jcajce.provider.asymmetric.ies;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.interfaces.DHPrivateKey;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.agreement.DHBasicAgreement;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.engines.IESEngine;
import org.spongycastle.crypto.generators.KDF2BytesGenerator;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.IESParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.DHUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jce.interfaces.ECPrivateKey;
import org.spongycastle.jce.interfaces.ECPublicKey;
import org.spongycastle.jce.interfaces.IESKey;
import org.spongycastle.jce.spec.IESParameterSpec;

public class CipherSpi
  extends javax.crypto.CipherSpi
{
  private ByteArrayOutputStream aUh = new ByteArrayOutputStream();
  private AlgorithmParameters aWt = null;
  private IESEngine aXm;
  private IESParameterSpec aXn = null;
  private Class[] aXo = { IESParameterSpec.class };
  private int state = -1;
  
  public CipherSpi(IESEngine paramIESEngine)
  {
    this.aXm = paramIESEngine;
  }
  
  protected int engineDoFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramInt2 != 0) {
      this.aUh.write(paramArrayOfByte1, paramInt1, paramInt2);
    }
    try
    {
      paramArrayOfByte1 = this.aUh.toByteArray();
      this.aUh.reset();
      paramArrayOfByte1 = this.aXm.ˑ(paramArrayOfByte1, 0, paramArrayOfByte1.length);
      System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, paramInt3, paramArrayOfByte1.length);
      paramInt1 = paramArrayOfByte1.length;
      return paramInt1;
    }
    catch (InvalidCipherTextException paramArrayOfByte1)
    {
      throw new BadPaddingException(paramArrayOfByte1.getMessage());
    }
  }
  
  protected byte[] engineDoFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 0) {
      this.aUh.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    try
    {
      paramArrayOfByte = this.aUh.toByteArray();
      this.aUh.reset();
      paramArrayOfByte = this.aXm.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
      return paramArrayOfByte;
    }
    catch (InvalidCipherTextException paramArrayOfByte)
    {
      throw new BadPaddingException(paramArrayOfByte.getMessage());
    }
  }
  
  protected int engineGetBlockSize()
  {
    return 0;
  }
  
  protected byte[] engineGetIV()
  {
    return null;
  }
  
  protected int engineGetKeySize(Key paramKey)
  {
    if (!(paramKey instanceof IESKey)) {
      throw new IllegalArgumentException("must be passed IE key");
    }
    paramKey = (IESKey)paramKey;
    if ((paramKey.getPrivate() instanceof DHPrivateKey)) {
      return ((DHPrivateKey)paramKey.getPrivate()).getX().bitLength();
    }
    if ((paramKey.getPrivate() instanceof ECPrivateKey)) {
      return ((ECPrivateKey)paramKey.getPrivate()).kz().bitLength();
    }
    throw new IllegalArgumentException("not an IE key!");
  }
  
  protected int engineGetOutputSize(int paramInt)
  {
    if ((this.state == 1) || (this.state == 3)) {
      return this.aUh.size() + paramInt + 20;
    }
    if ((this.state == 2) || (this.state == 4)) {
      return this.aUh.size() + paramInt - 20;
    }
    throw new IllegalStateException("cipher not initialised");
  }
  
  protected AlgorithmParameters engineGetParameters()
  {
    if ((this.aWt == null) && (this.aXn != null)) {
      try
      {
        this.aWt = AlgorithmParameters.getInstance("IES", "SC");
        this.aWt.init(this.aXn);
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException.toString());
      }
    }
    return this.aWt;
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
    this.aWt = paramAlgorithmParameters;
    engineInit(paramInt, paramKey, localObject2, paramSecureRandom);
  }
  
  protected void engineInit(int paramInt, Key paramKey, SecureRandom paramSecureRandom)
  {
    if ((paramInt == 1) || (paramInt == 3)) {
      try
      {
        engineInit(paramInt, paramKey, null, paramSecureRandom);
        return;
      }
      catch (InvalidAlgorithmParameterException paramKey) {}
    }
    throw new IllegalArgumentException("can't handle null parameter spec in IES");
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (!(paramKey instanceof IESKey)) {
      throw new InvalidKeyException("must be passed IES key");
    }
    if ((paramAlgorithmParameterSpec == null) && ((paramInt == 1) || (paramInt == 3)))
    {
      byte[] arrayOfByte1 = new byte[16];
      byte[] arrayOfByte2 = new byte[16];
      paramAlgorithmParameterSpec = paramSecureRandom;
      if (paramSecureRandom == null) {
        paramAlgorithmParameterSpec = new SecureRandom();
      }
      paramAlgorithmParameterSpec.nextBytes(arrayOfByte1);
      paramAlgorithmParameterSpec.nextBytes(arrayOfByte2);
      paramSecureRandom = new IESParameterSpec(arrayOfByte1, arrayOfByte2, 128);
    }
    else
    {
      paramSecureRandom = paramAlgorithmParameterSpec;
      if (!(paramAlgorithmParameterSpec instanceof IESParameterSpec)) {
        throw new InvalidAlgorithmParameterException("must be passed IES parameters");
      }
    }
    paramAlgorithmParameterSpec = (IESKey)paramKey;
    if ((paramAlgorithmParameterSpec.getPublic() instanceof ECPublicKey))
    {
      paramKey = ECUtil.ˊ(paramAlgorithmParameterSpec.getPublic());
      paramAlgorithmParameterSpec = ECUtil.ˊ(paramAlgorithmParameterSpec.getPrivate());
    }
    else
    {
      paramKey = DHUtil.ˊ(paramAlgorithmParameterSpec.getPublic());
      paramAlgorithmParameterSpec = DHUtil.ˊ(paramAlgorithmParameterSpec.getPrivate());
    }
    this.aXn = ((IESParameterSpec)paramSecureRandom);
    paramSecureRandom = new IESParameters(this.aXn.kN(), this.aXn.kO(), this.aXn.kP());
    this.state = paramInt;
    this.aUh.reset();
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
    case 3: 
      this.aXm.ˊ(true, paramAlgorithmParameterSpec, paramKey, paramSecureRandom);
      return;
    case 2: 
    case 4: 
      this.aXm.ˊ(false, paramAlgorithmParameterSpec, paramKey, paramSecureRandom);
      return;
    }
    System.out.println("eeek!");
  }
  
  protected void engineSetMode(String paramString)
  {
    throw new IllegalArgumentException("can't support mode " + paramString);
  }
  
  protected void engineSetPadding(String paramString)
  {
    throw new NoSuchPaddingException(paramString + " unavailable with RSA.");
  }
  
  protected int engineUpdate(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    this.aUh.write(paramArrayOfByte1, paramInt1, paramInt2);
    return 0;
  }
  
  protected byte[] engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aUh.write(paramArrayOfByte, paramInt1, paramInt2);
    return null;
  }
  
  public static class IES
    extends CipherSpi
  {
    public IES()
    {
      super();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ies.CipherSpi
 * JD-Core Version:    0.7.0.1
 */