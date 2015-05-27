package org.spongycastle.jce.provider;

import java.security.cert.CRL;
import java.security.cert.CRLSelector;
import java.security.cert.CertSelector;
import java.security.cert.CertStoreSpi;
import java.security.cert.Certificate;
import java.security.cert.CollectionCertStoreParameters;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class CertStoreCollectionSpi
  extends CertStoreSpi
{
  private CollectionCertStoreParameters bbo;
  
  public Collection engineGetCRLs(CRLSelector paramCRLSelector)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.bbo.getCollection().iterator();
    if (paramCRLSelector == null) {
      while (localIterator.hasNext())
      {
        paramCRLSelector = localIterator.next();
        if ((paramCRLSelector instanceof CRL)) {
          localArrayList.add(paramCRLSelector);
        }
      }
    }
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (((localObject instanceof CRL)) && (paramCRLSelector.match((CRL)localObject))) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public Collection engineGetCertificates(CertSelector paramCertSelector)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.bbo.getCollection().iterator();
    if (paramCertSelector == null) {
      while (localIterator.hasNext())
      {
        paramCertSelector = localIterator.next();
        if ((paramCertSelector instanceof Certificate)) {
          localArrayList.add(paramCertSelector);
        }
      }
    }
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (((localObject instanceof Certificate)) && (paramCertSelector.match((Certificate)localObject))) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.CertStoreCollectionSpi
 * JD-Core Version:    0.7.0.1
 */