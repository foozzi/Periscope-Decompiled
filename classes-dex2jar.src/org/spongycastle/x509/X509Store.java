package org.spongycastle.x509;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.Collection;
import org.spongycastle.util.Selector;
import org.spongycastle.util.Store;

public class X509Store
  implements Store
{
  private Provider bkX;
  private X509StoreSpi bkY;
  
  private X509Store(Provider paramProvider, X509StoreSpi paramX509StoreSpi)
  {
    this.bkX = paramProvider;
    this.bkY = paramX509StoreSpi;
  }
  
  public static X509Store ˊ(String paramString1, X509StoreParameters paramX509StoreParameters, String paramString2)
  {
    return ˊ(paramString1, paramX509StoreParameters, X509Util.getProvider(paramString2));
  }
  
  public static X509Store ˊ(String paramString, X509StoreParameters paramX509StoreParameters, Provider paramProvider)
  {
    try
    {
      paramString = ˊ(X509Util.ˊ("X509Store", paramString, paramProvider), paramX509StoreParameters);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new NoSuchStoreException(paramString.getMessage());
    }
  }
  
  private static X509Store ˊ(X509Util.Implementation paramImplementation, X509StoreParameters paramX509StoreParameters)
  {
    X509StoreSpi localX509StoreSpi = (X509StoreSpi)paramImplementation.tG();
    localX509StoreSpi.ˊ(paramX509StoreParameters);
    return new X509Store(paramImplementation.getProvider(), localX509StoreSpi);
  }
  
  public Collection ˋ(Selector paramSelector)
  {
    return this.bkY.ˊ(paramSelector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509Store
 * JD-Core Version:    0.7.0.1
 */