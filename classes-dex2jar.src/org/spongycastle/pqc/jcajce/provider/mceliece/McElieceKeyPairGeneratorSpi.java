package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2KeyGenerationParameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2KeyPairGenerator;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2Parameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PrivateKeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PublicKeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceKeyGenerationParameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceKeyPairGenerator;
import org.spongycastle.pqc.crypto.mceliece.McElieceParameters;
import org.spongycastle.pqc.crypto.mceliece.McEliecePrivateKeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McEliecePublicKeyParameters;
import org.spongycastle.pqc.jcajce.spec.ECCKeyGenParameterSpec;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2ParameterSpec;

public abstract class McElieceKeyPairGeneratorSpi
  extends KeyPairGenerator
{
  public McElieceKeyPairGeneratorSpi(String paramString)
  {
    super(paramString);
  }
  
  public static class McEliece
    extends McElieceKeyPairGeneratorSpi
  {
    McElieceKeyPairGenerator biA;
    
    public McEliece()
    {
      super();
    }
    
    public KeyPair generateKeyPair()
    {
      AsymmetricCipherKeyPair localAsymmetricCipherKeyPair = this.biA.iF();
      McEliecePrivateKeyParameters localMcEliecePrivateKeyParameters = (McEliecePrivateKeyParameters)localAsymmetricCipherKeyPair.iE();
      return new KeyPair(new BCMcEliecePublicKey((McEliecePublicKeyParameters)localAsymmetricCipherKeyPair.iD()), new BCMcEliecePrivateKey(localMcEliecePrivateKeyParameters));
    }
    
    public void initialize(int paramInt, SecureRandom paramSecureRandom)
    {
      paramSecureRandom = new ECCKeyGenParameterSpec();
      try
      {
        initialize(paramSecureRandom);
        return;
      }
      catch (InvalidAlgorithmParameterException paramSecureRandom) {}
    }
    
    public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec)
    {
      this.biA = new McElieceKeyPairGenerator();
      super.initialize(paramAlgorithmParameterSpec);
      paramAlgorithmParameterSpec = (ECCKeyGenParameterSpec)paramAlgorithmParameterSpec;
      paramAlgorithmParameterSpec = new McElieceKeyGenerationParameters(new SecureRandom(), new McElieceParameters(paramAlgorithmParameterSpec.getM(), paramAlgorithmParameterSpec.rj()));
      this.biA.ˊ(paramAlgorithmParameterSpec);
    }
  }
  
  public static class McElieceCCA2
    extends McElieceKeyPairGeneratorSpi
  {
    McElieceCCA2KeyPairGenerator biB;
    
    public McElieceCCA2()
    {
      super();
    }
    
    public KeyPair generateKeyPair()
    {
      AsymmetricCipherKeyPair localAsymmetricCipherKeyPair = this.biB.iF();
      McElieceCCA2PrivateKeyParameters localMcElieceCCA2PrivateKeyParameters = (McElieceCCA2PrivateKeyParameters)localAsymmetricCipherKeyPair.iE();
      return new KeyPair(new BCMcElieceCCA2PublicKey((McElieceCCA2PublicKeyParameters)localAsymmetricCipherKeyPair.iD()), new BCMcElieceCCA2PrivateKey(localMcElieceCCA2PrivateKeyParameters));
    }
    
    public void initialize(int paramInt, SecureRandom paramSecureRandom)
    {
      paramSecureRandom = new McElieceCCA2ParameterSpec();
      try
      {
        initialize(paramSecureRandom);
        return;
      }
      catch (InvalidAlgorithmParameterException paramSecureRandom) {}
    }
    
    public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec)
    {
      this.biB = new McElieceCCA2KeyPairGenerator();
      super.initialize(paramAlgorithmParameterSpec);
      paramAlgorithmParameterSpec = (ECCKeyGenParameterSpec)paramAlgorithmParameterSpec;
      paramAlgorithmParameterSpec = new McElieceCCA2KeyGenerationParameters(new SecureRandom(), new McElieceCCA2Parameters(paramAlgorithmParameterSpec.getM(), paramAlgorithmParameterSpec.rj()));
      this.biB.ˊ(paramAlgorithmParameterSpec);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */