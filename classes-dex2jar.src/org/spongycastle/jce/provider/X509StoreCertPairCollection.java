package org.spongycastle.jce.provider;

import java.util.Collection;
import org.spongycastle.util.CollectionStore;
import org.spongycastle.util.Selector;
import org.spongycastle.x509.X509CollectionStoreParameters;
import org.spongycastle.x509.X509StoreParameters;
import org.spongycastle.x509.X509StoreSpi;

public class X509StoreCertPairCollection
  extends X509StoreSpi
{
  private CollectionStore bbS;
  
  public Collection ˊ(Selector paramSelector)
  {
    return this.bbS.ˋ(paramSelector);
  }
  
  public void ˊ(X509StoreParameters paramX509StoreParameters)
  {
    if (!(paramX509StoreParameters instanceof X509CollectionStoreParameters)) {
      throw new IllegalArgumentException("Initialization parameters must be an instance of " + X509CollectionStoreParameters.class.getName() + ".");
    }
    this.bbS = new CollectionStore(((X509CollectionStoreParameters)paramX509StoreParameters).getCollection());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.X509StoreCertPairCollection
 * JD-Core Version:    0.7.0.1
 */