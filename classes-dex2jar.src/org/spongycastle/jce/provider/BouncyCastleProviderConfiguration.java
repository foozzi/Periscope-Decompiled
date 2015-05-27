package org.spongycastle.jce.provider;

import java.math.BigInteger;
import java.security.Permission;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jcajce.provider.config.ProviderConfigurationPermission;
import org.spongycastle.jce.spec.ECParameterSpec;

class BouncyCastleProviderConfiguration
  implements ProviderConfiguration
{
  private static Permission baM = new ProviderConfigurationPermission("SC", "threadLocalEcImplicitlyCa");
  private static Permission baN = new ProviderConfigurationPermission("SC", "ecImplicitlyCa");
  private static Permission baO = new ProviderConfigurationPermission("SC", "threadLocalDhDefaultParams");
  private static Permission baP = new ProviderConfigurationPermission("SC", "DhDefaultParams");
  private ThreadLocal baQ = new ThreadLocal();
  private ThreadLocal baR = new ThreadLocal();
  private volatile ECParameterSpec baS;
  private volatile Object baT;
  
  public ECParameterSpec nN()
  {
    ECParameterSpec localECParameterSpec = (ECParameterSpec)this.baQ.get();
    if (localECParameterSpec != null) {
      return localECParameterSpec;
    }
    return this.baS;
  }
  
  public DHParameterSpec ךּ(int paramInt)
  {
    Object localObject2 = this.baR.get();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = this.baT;
    }
    if ((localObject1 instanceof DHParameterSpec))
    {
      localObject1 = (DHParameterSpec)localObject1;
      if (((DHParameterSpec)localObject1).getP().bitLength() == paramInt) {
        return localObject1;
      }
    }
    else if ((localObject1 instanceof DHParameterSpec[]))
    {
      localObject1 = (DHParameterSpec[])localObject1;
      int i = 0;
      while (i != localObject1.length)
      {
        if (localObject1[i].getP().bitLength() == paramInt) {
          return localObject1[i];
        }
        i += 1;
      }
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.BouncyCastleProviderConfiguration
 * JD-Core Version:    0.7.0.1
 */