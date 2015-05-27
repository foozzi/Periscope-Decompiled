package org.spongycastle.jce.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.spongycastle.jce.X509LDAPCertStoreParameters;
import org.spongycastle.util.Selector;
import org.spongycastle.x509.X509CertPairStoreSelector;
import org.spongycastle.x509.X509CertStoreSelector;
import org.spongycastle.x509.X509CertificatePair;
import org.spongycastle.x509.X509StoreParameters;
import org.spongycastle.x509.X509StoreSpi;
import org.spongycastle.x509.util.LDAPStoreHelper;

public class X509StoreLDAPCerts
  extends X509StoreSpi
{
  private LDAPStoreHelper bbT;
  
  private Collection ˊ(X509CertStoreSelector paramX509CertStoreSelector)
  {
    HashSet localHashSet = new HashSet();
    Object localObject1 = new X509CertPairStoreSelector();
    ((X509CertPairStoreSelector)localObject1).ˋ(paramX509CertStoreSelector);
    ((X509CertPairStoreSelector)localObject1).ˎ(new X509CertStoreSelector());
    Object localObject2 = new HashSet(this.bbT.ˊ((X509CertPairStoreSelector)localObject1));
    paramX509CertStoreSelector = new HashSet();
    localObject1 = new HashSet();
    localObject2 = ((Set)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      X509CertificatePair localX509CertificatePair = (X509CertificatePair)((Iterator)localObject2).next();
      if (localX509CertificatePair.tE() != null) {
        paramX509CertStoreSelector.add(localX509CertificatePair.tE());
      }
      if (localX509CertificatePair.tF() != null) {
        ((Set)localObject1).add(localX509CertificatePair.tF());
      }
    }
    localHashSet.addAll(paramX509CertStoreSelector);
    localHashSet.addAll((Collection)localObject1);
    return localHashSet;
  }
  
  public Collection ˊ(Selector paramSelector)
  {
    if (!(paramSelector instanceof X509CertStoreSelector)) {
      return Collections.EMPTY_SET;
    }
    paramSelector = (X509CertStoreSelector)paramSelector;
    HashSet localHashSet = new HashSet();
    if (paramSelector.getBasicConstraints() > 0)
    {
      localHashSet.addAll(this.bbT.ᐝ(paramSelector));
      localHashSet.addAll(ˊ(paramSelector));
      return localHashSet;
    }
    if (paramSelector.getBasicConstraints() == -2)
    {
      localHashSet.addAll(this.bbT.ˏ(paramSelector));
      return localHashSet;
    }
    localHashSet.addAll(this.bbT.ˏ(paramSelector));
    localHashSet.addAll(this.bbT.ᐝ(paramSelector));
    localHashSet.addAll(ˊ(paramSelector));
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
 * Qualified Name:     org.spongycastle.jce.provider.X509StoreLDAPCerts
 * JD-Core Version:    0.7.0.1
 */