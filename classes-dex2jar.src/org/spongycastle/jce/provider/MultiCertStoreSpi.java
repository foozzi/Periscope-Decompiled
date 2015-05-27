package org.spongycastle.jce.provider;

import java.security.cert.CRLSelector;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.CertStoreSpi;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.jce.MultiCertStoreParameters;

public class MultiCertStoreSpi
  extends CertStoreSpi
{
  private MultiCertStoreParameters bbr;
  
  public Collection engineGetCRLs(CRLSelector paramCRLSelector)
  {
    boolean bool = this.bbr.nZ();
    Iterator localIterator = this.bbr.nY().iterator();
    Object localObject;
    if (bool) {
      localObject = new ArrayList();
    } else {
      localObject = Collections.EMPTY_LIST;
    }
    while (localIterator.hasNext())
    {
      Collection localCollection = ((CertStore)localIterator.next()).getCRLs(paramCRLSelector);
      if (bool) {
        ((List)localObject).addAll(localCollection);
      } else if (!localCollection.isEmpty()) {
        return localCollection;
      }
    }
    return localObject;
  }
  
  public Collection engineGetCertificates(CertSelector paramCertSelector)
  {
    boolean bool = this.bbr.nZ();
    Iterator localIterator = this.bbr.nY().iterator();
    Object localObject;
    if (bool) {
      localObject = new ArrayList();
    } else {
      localObject = Collections.EMPTY_LIST;
    }
    while (localIterator.hasNext())
    {
      Collection localCollection = ((CertStore)localIterator.next()).getCertificates(paramCertSelector);
      if (bool) {
        ((List)localObject).addAll(localCollection);
      } else if (!localCollection.isEmpty()) {
        return localCollection;
      }
    }
    return localObject;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.MultiCertStoreSpi
 * JD-Core Version:    0.7.0.1
 */