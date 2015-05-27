package org.spongycastle.jce.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.spongycastle.jce.X509LDAPCertStoreParameters;
import org.spongycastle.util.Selector;
import org.spongycastle.x509.X509CertPairStoreSelector;
import org.spongycastle.x509.X509StoreParameters;
import org.spongycastle.x509.X509StoreSpi;
import org.spongycastle.x509.util.LDAPStoreHelper;

public class X509StoreLDAPCertPairs
  extends X509StoreSpi
{
  private LDAPStoreHelper bbT;
  
  public Collection ˊ(Selector paramSelector)
  {
    if (!(paramSelector instanceof X509CertPairStoreSelector)) {
      return Collections.EMPTY_SET;
    }
    paramSelector = (X509CertPairStoreSelector)paramSelector;
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(this.bbT.ˊ(paramSelector));
    return localHashSet;
  }
  
  public void ˊ(X509StoreParameters paramX509StoreParameters)
  {
    if (!(paramX509StoreParameters instanceof X509LDAPCertStoreParameters)) {
      throw new IllegalArgumentException("Initialization parameters must be an instance of " + X509LDAPCertStoreParameters.class.getName() + ".");
    }
    this.bbT = new LDAPStoreHelper((X509LDAPCertStoreParameters)paramX509StoreParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.X509StoreLDAPCertPairs
 * JD-Core Version:    0.7.0.1
 */