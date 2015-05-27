package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x9.ECNamedCurveTable;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveGenParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.util.Integers;

public abstract class KeyPairGeneratorSpi
  extends KeyPairGenerator
{
  public KeyPairGeneratorSpi(String paramString)
  {
    super(paramString);
  }
  
  public static class EC
    extends KeyPairGeneratorSpi
  {
    private static Hashtable aWY = new Hashtable();
    SecureRandom aFa = new SecureRandom();
    int aFb = 239;
    boolean aJn = false;
    int aMG = 50;
    String aWI;
    Object aWM = null;
    ECKeyPairGenerator aWN = new ECKeyPairGenerator();
    ECKeyGenerationParameters aWO;
    ProviderConfiguration aWQ;
    
    static
    {
      aWY.put(Integers.valueOf(192), new ECGenParameterSpec("prime192v1"));
      aWY.put(Integers.valueOf(239), new ECGenParameterSpec("prime239v1"));
      aWY.put(Integers.valueOf(256), new ECGenParameterSpec("prime256v1"));
      aWY.put(Integers.valueOf(224), new ECGenParameterSpec("P-224"));
      aWY.put(Integers.valueOf(384), new ECGenParameterSpec("P-384"));
      aWY.put(Integers.valueOf(521), new ECGenParameterSpec("P-521"));
    }
    
    public EC()
    {
      super();
      this.aWI = "EC";
      this.aWQ = BouncyCastleProvider.baC;
    }
    
    public EC(String paramString, ProviderConfiguration paramProviderConfiguration)
    {
      super();
      this.aWI = paramString;
      this.aWQ = paramProviderConfiguration;
    }
    
    public KeyPair generateKeyPair()
    {
      if (!this.aJn) {
        initialize(this.aFb, new SecureRandom());
      }
      Object localObject1 = this.aWN.iF();
      Object localObject2 = (ECPublicKeyParameters)((AsymmetricCipherKeyPair)localObject1).iD();
      localObject1 = (ECPrivateKeyParameters)((AsymmetricCipherKeyPair)localObject1).iE();
      if ((this.aWM instanceof org.spongycastle.jce.spec.ECParameterSpec))
      {
        localObject3 = (org.spongycastle.jce.spec.ECParameterSpec)this.aWM;
        localObject2 = new BCECPublicKey(this.aWI, (ECPublicKeyParameters)localObject2, (org.spongycastle.jce.spec.ECParameterSpec)localObject3, this.aWQ);
        return new KeyPair((PublicKey)localObject2, new BCECPrivateKey(this.aWI, (ECPrivateKeyParameters)localObject1, (BCECPublicKey)localObject2, (org.spongycastle.jce.spec.ECParameterSpec)localObject3, this.aWQ));
      }
      if (this.aWM == null) {
        return new KeyPair(new BCECPublicKey(this.aWI, (ECPublicKeyParameters)localObject2, this.aWQ), new BCECPrivateKey(this.aWI, (ECPrivateKeyParameters)localObject1, this.aWQ));
      }
      Object localObject3 = (java.security.spec.ECParameterSpec)this.aWM;
      localObject2 = new BCECPublicKey(this.aWI, (ECPublicKeyParameters)localObject2, (java.security.spec.ECParameterSpec)localObject3, this.aWQ);
      return new KeyPair((PublicKey)localObject2, new BCECPrivateKey(this.aWI, (ECPrivateKeyParameters)localObject1, (BCECPublicKey)localObject2, (java.security.spec.ECParameterSpec)localObject3, this.aWQ));
    }
    
    public void initialize(int paramInt, SecureRandom paramSecureRandom)
    {
      this.aFb = paramInt;
      this.aFa = paramSecureRandom;
      ECGenParameterSpec localECGenParameterSpec = (ECGenParameterSpec)aWY.get(Integers.valueOf(paramInt));
      if (localECGenParameterSpec == null) {
        throw new InvalidParameterException("unknown key size.");
      }
      try
      {
        initialize(localECGenParameterSpec, paramSecureRandom);
        return;
      }
      catch (InvalidAlgorithmParameterException paramSecureRandom)
      {
        throw new InvalidParameterException("key size not configurable.");
      }
    }
    
    public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
    {
      if (paramAlgorithmParameterSpec == null)
      {
        paramAlgorithmParameterSpec = this.aWQ.nN();
        if (paramAlgorithmParameterSpec == null) {
          throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
        }
        this.aWM = null;
        this.aWO = ˊ(paramAlgorithmParameterSpec, paramSecureRandom);
      }
      else if ((paramAlgorithmParameterSpec instanceof org.spongycastle.jce.spec.ECParameterSpec))
      {
        this.aWM = paramAlgorithmParameterSpec;
        this.aWO = ˊ((org.spongycastle.jce.spec.ECParameterSpec)paramAlgorithmParameterSpec, paramSecureRandom);
      }
      else if ((paramAlgorithmParameterSpec instanceof java.security.spec.ECParameterSpec))
      {
        this.aWM = paramAlgorithmParameterSpec;
        this.aWO = ˊ((java.security.spec.ECParameterSpec)paramAlgorithmParameterSpec, paramSecureRandom);
      }
      else if ((paramAlgorithmParameterSpec instanceof ECGenParameterSpec))
      {
        ˊ(((ECGenParameterSpec)paramAlgorithmParameterSpec).getName(), paramSecureRandom);
      }
      else if ((paramAlgorithmParameterSpec instanceof ECNamedCurveGenParameterSpec))
      {
        ˊ(((ECNamedCurveGenParameterSpec)paramAlgorithmParameterSpec).getName(), paramSecureRandom);
      }
      else
      {
        throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec");
      }
      this.aWN.ˊ(this.aWO);
      this.aJn = true;
    }
    
    protected ECKeyGenerationParameters ˊ(java.security.spec.ECParameterSpec paramECParameterSpec, SecureRandom paramSecureRandom)
    {
      ECCurve localECCurve = EC5Util.ˊ(paramECParameterSpec.getCurve());
      return new ECKeyGenerationParameters(new ECDomainParameters(localECCurve, EC5Util.ˊ(localECCurve, paramECParameterSpec.getGenerator(), false), paramECParameterSpec.getOrder(), BigInteger.valueOf(paramECParameterSpec.getCofactor())), paramSecureRandom);
    }
    
    protected ECKeyGenerationParameters ˊ(org.spongycastle.jce.spec.ECParameterSpec paramECParameterSpec, SecureRandom paramSecureRandom)
    {
      return new ECKeyGenerationParameters(new ECDomainParameters(paramECParameterSpec.iv(), paramECParameterSpec.iw(), paramECParameterSpec.gy()), paramSecureRandom);
    }
    
    protected void ˊ(String paramString, SecureRandom paramSecureRandom)
    {
      paramString = ᙆ(paramString);
      this.aWM = paramString;
      this.aWO = ˊ(paramString, paramSecureRandom);
    }
    
    protected ECNamedCurveSpec ᙆ(String paramString)
    {
      X9ECParameters localX9ECParameters2 = ECNamedCurveTable.ג(paramString);
      X9ECParameters localX9ECParameters1 = localX9ECParameters2;
      if (localX9ECParameters2 == null) {
        try
        {
          localX9ECParameters1 = ECNamedCurveTable.ᐝ(new ASN1ObjectIdentifier(paramString));
          if (localX9ECParameters1 == null) {
            throw new InvalidAlgorithmParameterException("unknown curve OID: " + paramString);
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw new InvalidAlgorithmParameterException("unknown curve name: " + paramString);
        }
      }
      return new ECNamedCurveSpec(paramString, localIllegalArgumentException.iv(), localIllegalArgumentException.iw(), localIllegalArgumentException.gy(), localIllegalArgumentException.ix(), null);
    }
  }
  
  public static class ECDH
    extends KeyPairGeneratorSpi.EC
  {
    public ECDH()
    {
      super(BouncyCastleProvider.baC);
    }
  }
  
  public static class ECDHC
    extends KeyPairGeneratorSpi.EC
  {
    public ECDHC()
    {
      super(BouncyCastleProvider.baC);
    }
  }
  
  public static class ECDSA
    extends KeyPairGeneratorSpi.EC
  {
    public ECDSA()
    {
      super(BouncyCastleProvider.baC);
    }
  }
  
  public static class ECMQV
    extends KeyPairGeneratorSpi.EC
  {
    public ECMQV()
    {
      super(BouncyCastleProvider.baC);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */