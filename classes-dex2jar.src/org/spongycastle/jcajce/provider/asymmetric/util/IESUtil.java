package org.spongycastle.jcajce.provider.asymmetric.util;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.engines.IESEngine;
import org.spongycastle.jce.spec.IESParameterSpec;

public class IESUtil
{
  public static IESParameterSpec ˊ(IESEngine paramIESEngine)
  {
    if (paramIESEngine.jA() == null) {
      return new IESParameterSpec(null, null, 128);
    }
    if ((paramIESEngine.jA().iH().iG().equals("DES")) || (paramIESEngine.jA().iH().iG().equals("RC2")) || (paramIESEngine.jA().iH().iG().equals("RC5-32")) || (paramIESEngine.jA().iH().iG().equals("RC5-64"))) {
      return new IESParameterSpec(null, null, 64, 64);
    }
    if (paramIESEngine.jA().iH().iG().equals("SKIPJACK")) {
      return new IESParameterSpec(null, null, 80, 80);
    }
    if (paramIESEngine.jA().iH().iG().equals("GOST28147")) {
      return new IESParameterSpec(null, null, 256, 256);
    }
    return new IESParameterSpec(null, null, 128, 128);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.IESUtil
 * JD-Core Version:    0.7.0.1
 */