package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.MacSpi;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.SkeinParameters.Builder;
import org.spongycastle.jcajce.spec.SkeinParameterSpec;

public class BaseMac
  extends MacSpi
  implements PBE
{
  private Mac aZt;
  private int aZu = 2;
  private int aZv = 1;
  private int ahI = 160;
  
  public BaseMac(Mac paramMac)
  {
    this.aZt = paramMac;
  }
  
  public BaseMac(Mac paramMac, int paramInt1, int paramInt2, int paramInt3)
  {
    this.aZt = paramMac;
    this.aZu = paramInt1;
    this.aZv = paramInt2;
    this.ahI = paramInt3;
  }
  
  private static Hashtable ˋ(Map paramMap)
  {
    Hashtable localHashtable = new Hashtable();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      localHashtable.put(localObject, paramMap.get(localObject));
    }
    return localHashtable;
  }
  
  protected byte[] engineDoFinal()
  {
    byte[] arrayOfByte = new byte[engineGetMacLength()];
    this.aZt.doFinal(arrayOfByte, 0);
    return arrayOfByte;
  }
  
  protected int engineGetMacLength()
  {
    return this.aZt.iO();
  }
  
  protected void engineInit(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    if (paramKey == null) {
      throw new InvalidKeyException("key is null");
    }
    if ((paramKey instanceof BCPBEKey))
    {
      paramKey = (BCPBEKey)paramKey;
      if (paramKey.nU() != null) {
        paramKey = paramKey.nU();
      } else if ((paramAlgorithmParameterSpec instanceof PBEParameterSpec)) {
        paramKey = PBE.Util.ˊ(paramKey, paramAlgorithmParameterSpec);
      } else {
        throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
      }
    }
    else if ((paramAlgorithmParameterSpec instanceof IvParameterSpec))
    {
      paramKey = new ParametersWithIV(new KeyParameter(paramKey.getEncoded()), ((IvParameterSpec)paramAlgorithmParameterSpec).getIV());
    }
    else if ((paramAlgorithmParameterSpec instanceof SkeinParameterSpec))
    {
      paramKey = new SkeinParameters.Builder(ˋ(((SkeinParameterSpec)paramAlgorithmParameterSpec).getParameters())).ǃ(paramKey.getEncoded()).lp();
    }
    else if (paramAlgorithmParameterSpec == null)
    {
      paramKey = new KeyParameter(paramKey.getEncoded());
    }
    else
    {
      throw new InvalidAlgorithmParameterException("unknown parameter type.");
    }
    this.aZt.ˊ(paramKey);
  }
  
  protected void engineReset()
  {
    this.aZt.reset();
  }
  
  protected void engineUpdate(byte paramByte)
  {
    this.aZt.update(paramByte);
  }
  
  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aZt.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.BaseMac
 * JD-Core Version:    0.7.0.1
 */