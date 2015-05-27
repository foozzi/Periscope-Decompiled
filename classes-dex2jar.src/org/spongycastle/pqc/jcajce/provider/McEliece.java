package org.spongycastle.pqc.jcajce.provider;

import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;

public class McEliece
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("KeyPairGenerator.McElieceKobaraImai", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKeyPairGeneratorSpi$McElieceCCA2");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.McEliecePointcheval", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKeyPairGeneratorSpi$McElieceCCA2");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.McElieceFujisaki", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKeyPairGeneratorSpi$McElieceCCA2");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.McEliecePKCS", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKeyPairGeneratorSpi$McEliece");
      paramConfigurableProvider.ﹶ("KeyPairGenerator." + PQCObjectIdentifiers.beb, "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKeyPairGeneratorSpi$McEliece");
      paramConfigurableProvider.ﹶ("KeyPairGenerator." + PQCObjectIdentifiers.bec, "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKeyPairGeneratorSpi$McElieceCCA2");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePointcheval", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePointchevalCipherSpi$McEliecePointcheval");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePointchevalWithSHA1", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePointchevalCipherSpi$McEliecePointcheval");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePointchevalWithSHA224", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePointchevalCipherSpi$McEliecePointcheval224");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePointchevalWithSHA256", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePointchevalCipherSpi$McEliecePointcheval256");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePointchevalWithSHA384", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePointchevalCipherSpi$McEliecePointcheval384");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePointchevalWithSHA512", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePointchevalCipherSpi$McEliecePointcheval512");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePKCS", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePKCSCipherSpi$McEliecePKCS");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePKCSWithSHA1", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePKCSCipherSpi$McEliecePKCS");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePKCSWithSHA224", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePKCSCipherSpi$McEliecePKCS224");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePKCSWithSHA256", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePKCSCipherSpi$McEliecePKCS256");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePKCSWithSHA384", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePKCSCipherSpi$McEliecePKCS384");
      paramConfigurableProvider.ﹶ("Cipher.McEliecePKCSWithSHA512", "org.spongycastle.pqc.jcajce.provider.mceliece.McEliecePKCSCipherSpi$McEliecePKCS512");
      paramConfigurableProvider.ﹶ("Cipher.McElieceKobaraImai", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKobaraImaiCipherSpi$McElieceKobaraImai");
      paramConfigurableProvider.ﹶ("Cipher.McElieceKobaraImaiWithSHA1", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKobaraImaiCipherSpi$McElieceKobaraImai");
      paramConfigurableProvider.ﹶ("Cipher.McElieceKobaraImaiWithSHA224", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKobaraImaiCipherSpi$McElieceKobaraImai224");
      paramConfigurableProvider.ﹶ("Cipher.McElieceKobaraImaiWithSHA256", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKobaraImaiCipherSpi$McElieceKobaraImai256");
      paramConfigurableProvider.ﹶ("Cipher.McElieceKobaraImaiWithSHA384", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKobaraImaiCipherSpi$McElieceKobaraImai384");
      paramConfigurableProvider.ﹶ("Cipher.McElieceKobaraImaiWithSHA512", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKobaraImaiCipherSpi$McElieceKobaraImai512");
      paramConfigurableProvider.ﹶ("Cipher.McElieceFujisaki", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceFujisakiCipherSpi$McElieceFujisaki");
      paramConfigurableProvider.ﹶ("Cipher.McElieceFujisakiWithSHA1", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceFujisakiCipherSpi$McElieceFujisaki");
      paramConfigurableProvider.ﹶ("Cipher.McElieceFujisakiWithSHA224", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceFujisakiCipherSpi$McElieceFujisaki224");
      paramConfigurableProvider.ﹶ("Cipher.McElieceFujisakiWithSHA256", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceFujisakiCipherSpi$McElieceFujisaki256");
      paramConfigurableProvider.ﹶ("Cipher.McElieceFujisakiWithSHA384", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceFujisakiCipherSpi$McElieceFujisaki384");
      paramConfigurableProvider.ﹶ("Cipher.McElieceFujisakiWithSHA512", "org.spongycastle.pqc.jcajce.provider.mceliece.McElieceFujisakiCipherSpi$McElieceFujisaki512");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.McEliece
 * JD-Core Version:    0.7.0.1
 */