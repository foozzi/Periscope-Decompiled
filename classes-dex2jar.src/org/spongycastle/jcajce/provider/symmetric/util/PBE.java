package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.digests.GOST3411Digest;
import org.spongycastle.crypto.digests.MD2Digest;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.TigerDigest;
import org.spongycastle.crypto.generators.OpenSSLPBEParametersGenerator;
import org.spongycastle.crypto.generators.PKCS12ParametersGenerator;
import org.spongycastle.crypto.generators.PKCS5S1ParametersGenerator;
import org.spongycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.spongycastle.crypto.params.DESParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public abstract interface PBE
{
  public static class Util
  {
    public static CipherParameters ˊ(PBEKeySpec paramPBEKeySpec, int paramInt1, int paramInt2, int paramInt3)
    {
      PBEParametersGenerator localPBEParametersGenerator = ᔋ(paramInt1, paramInt2);
      byte[] arrayOfByte = ˊ(paramInt1, paramPBEKeySpec);
      localPBEParametersGenerator.ˊ(arrayOfByte, paramPBEKeySpec.getSalt(), paramPBEKeySpec.getIterationCount());
      paramPBEKeySpec = localPBEParametersGenerator.ڎ(paramInt3);
      paramInt1 = 0;
      while (paramInt1 != arrayOfByte.length)
      {
        arrayOfByte[paramInt1] = 0;
        paramInt1 += 1;
      }
      return paramPBEKeySpec;
    }
    
    public static CipherParameters ˊ(PBEKeySpec paramPBEKeySpec, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      PBEParametersGenerator localPBEParametersGenerator = ᔋ(paramInt1, paramInt2);
      byte[] arrayOfByte = ˊ(paramInt1, paramPBEKeySpec);
      localPBEParametersGenerator.ˊ(arrayOfByte, paramPBEKeySpec.getSalt(), paramPBEKeySpec.getIterationCount());
      if (paramInt4 != 0) {
        paramPBEKeySpec = localPBEParametersGenerator.ᵙ(paramInt3, paramInt4);
      } else {
        paramPBEKeySpec = localPBEParametersGenerator.ر(paramInt3);
      }
      paramInt1 = 0;
      while (paramInt1 != arrayOfByte.length)
      {
        arrayOfByte[paramInt1] = 0;
        paramInt1 += 1;
      }
      return paramPBEKeySpec;
    }
    
    public static CipherParameters ˊ(BCPBEKey paramBCPBEKey, AlgorithmParameterSpec paramAlgorithmParameterSpec)
    {
      if ((paramAlgorithmParameterSpec == null) || (!(paramAlgorithmParameterSpec instanceof PBEParameterSpec))) {
        throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
      }
      PBEParameterSpec localPBEParameterSpec = (PBEParameterSpec)paramAlgorithmParameterSpec;
      PBEParametersGenerator localPBEParametersGenerator = ᔋ(paramBCPBEKey.getType(), paramBCPBEKey.nS());
      paramAlgorithmParameterSpec = paramBCPBEKey.getEncoded();
      if (paramBCPBEKey.nW()) {
        paramAlgorithmParameterSpec = new byte[2];
      }
      localPBEParametersGenerator.ˊ(paramAlgorithmParameterSpec, localPBEParameterSpec.getSalt(), localPBEParameterSpec.getIterationCount());
      paramBCPBEKey = localPBEParametersGenerator.ڎ(paramBCPBEKey.getKeySize());
      int i = 0;
      while (i != paramAlgorithmParameterSpec.length)
      {
        paramAlgorithmParameterSpec[i] = 0;
        i += 1;
      }
      return paramBCPBEKey;
    }
    
    public static CipherParameters ˊ(BCPBEKey paramBCPBEKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, String paramString)
    {
      if ((paramAlgorithmParameterSpec == null) || (!(paramAlgorithmParameterSpec instanceof PBEParameterSpec))) {
        throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
      }
      PBEParameterSpec localPBEParameterSpec = (PBEParameterSpec)paramAlgorithmParameterSpec;
      PBEParametersGenerator localPBEParametersGenerator = ᔋ(paramBCPBEKey.getType(), paramBCPBEKey.nS());
      paramAlgorithmParameterSpec = paramBCPBEKey.getEncoded();
      if (paramBCPBEKey.nW()) {
        paramAlgorithmParameterSpec = new byte[2];
      }
      localPBEParametersGenerator.ˊ(paramAlgorithmParameterSpec, localPBEParameterSpec.getSalt(), localPBEParameterSpec.getIterationCount());
      if (paramBCPBEKey.nT() != 0) {
        paramBCPBEKey = localPBEParametersGenerator.ᵙ(paramBCPBEKey.getKeySize(), paramBCPBEKey.nT());
      } else {
        paramBCPBEKey = localPBEParametersGenerator.ر(paramBCPBEKey.getKeySize());
      }
      if (paramString.startsWith("DES")) {
        if ((paramBCPBEKey instanceof ParametersWithIV)) {
          DESParameters.ı(((KeyParameter)((ParametersWithIV)paramBCPBEKey).lh()).getKey());
        } else {
          DESParameters.ı(((KeyParameter)paramBCPBEKey).getKey());
        }
      }
      int i = 0;
      while (i != paramAlgorithmParameterSpec.length)
      {
        paramAlgorithmParameterSpec[i] = 0;
        i += 1;
      }
      return paramBCPBEKey;
    }
    
    private static byte[] ˊ(int paramInt, PBEKeySpec paramPBEKeySpec)
    {
      if (paramInt == 2) {
        return PBEParametersGenerator.ˏ(paramPBEKeySpec.getPassword());
      }
      if ((paramInt == 5) || (paramInt == 4)) {
        return PBEParametersGenerator.ˎ(paramPBEKeySpec.getPassword());
      }
      return PBEParametersGenerator.ˋ(paramPBEKeySpec.getPassword());
    }
    
    private static PBEParametersGenerator ᔋ(int paramInt1, int paramInt2)
    {
      if ((paramInt1 == 0) || (paramInt1 == 4))
      {
        switch (paramInt2)
        {
        default: 
          break;
        case 5: 
          return new PKCS5S1ParametersGenerator(new MD2Digest());
        case 0: 
          return new PKCS5S1ParametersGenerator(new MD5Digest());
        case 1: 
          return new PKCS5S1ParametersGenerator(new SHA1Digest());
        }
        throw new IllegalStateException("PKCS5 scheme 1 only supports MD2, MD5 and SHA1.");
      }
      if ((paramInt1 == 1) || (paramInt1 == 5))
      {
        switch (paramInt2)
        {
        default: 
          break;
        case 5: 
          return new PKCS5S2ParametersGenerator(new MD2Digest());
        case 0: 
          return new PKCS5S2ParametersGenerator(new MD5Digest());
        case 1: 
          return new PKCS5S2ParametersGenerator(new SHA1Digest());
        case 2: 
          return new PKCS5S2ParametersGenerator(new RIPEMD160Digest());
        case 3: 
          return new PKCS5S2ParametersGenerator(new TigerDigest());
        case 4: 
          return new PKCS5S2ParametersGenerator(new SHA256Digest());
        case 6: 
          return new PKCS5S2ParametersGenerator(new GOST3411Digest());
        }
        throw new IllegalStateException("unknown digest scheme for PBE PKCS5S2 encryption.");
      }
      if (paramInt1 == 2)
      {
        switch (paramInt2)
        {
        default: 
          break;
        case 5: 
          return new PKCS12ParametersGenerator(new MD2Digest());
        case 0: 
          return new PKCS12ParametersGenerator(new MD5Digest());
        case 1: 
          return new PKCS12ParametersGenerator(new SHA1Digest());
        case 2: 
          return new PKCS12ParametersGenerator(new RIPEMD160Digest());
        case 3: 
          return new PKCS12ParametersGenerator(new TigerDigest());
        case 4: 
          return new PKCS12ParametersGenerator(new SHA256Digest());
        case 6: 
          return new PKCS12ParametersGenerator(new GOST3411Digest());
        }
        throw new IllegalStateException("unknown digest scheme for PBE encryption.");
      }
      return new OpenSSLPBEParametersGenerator();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.PBE
 * JD-Core Version:    0.7.0.1
 */