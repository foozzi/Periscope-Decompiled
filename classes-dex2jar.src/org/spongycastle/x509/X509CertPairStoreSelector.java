package org.spongycastle.x509;

import org.spongycastle.util.Selector;

public class X509CertPairStoreSelector
  implements Selector
{
  private X509CertStoreSelector bkR;
  private X509CertStoreSelector bkS;
  private X509CertificatePair bkT;
  
  public Object clone()
  {
    X509CertPairStoreSelector localX509CertPairStoreSelector = new X509CertPairStoreSelector();
    localX509CertPairStoreSelector.bkT = this.bkT;
    if (this.bkR != null) {
      localX509CertPairStoreSelector.ˋ((X509CertStoreSelector)this.bkR.clone());
    }
    if (this.bkS != null) {
      localX509CertPairStoreSelector.ˎ((X509CertStoreSelector)this.bkS.clone());
    }
    return localX509CertPairStoreSelector;
  }
  
  public X509CertificatePair tC()
  {
    return this.bkT;
  }
  
  public X509CertStoreSelector tD()
  {
    return this.bkR;
  }
  
  public boolean ɨ(Object paramObject)
  {
    if (!(paramObject instanceof X509CertificatePair)) {
      return false;
    }
    try
    {
      X509CertificatePair localX509CertificatePair = (X509CertificatePair)paramObject;
      boolean bool;
      if (this.bkR != null)
      {
        bool = this.bkR.ɨ(localX509CertificatePair.tE());
        if (!bool) {
          return false;
        }
      }
      if (this.bkS != null)
      {
        bool = this.bkS.ɨ(localX509CertificatePair.tF());
        if (!bool) {
          return false;
        }
      }
      if (this.bkT != null)
      {
        bool = this.bkT.equals(paramObject);
        return bool;
      }
      return true;
    }
    catch (Exception paramObject) {}
    return false;
  }
  
  public void ˋ(X509CertStoreSelector paramX509CertStoreSelector)
  {
    this.bkR = paramX509CertStoreSelector;
  }
  
  public void ˎ(X509CertStoreSelector paramX509CertStoreSelector)
  {
    this.bkS = paramX509CertStoreSelector;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509CertPairStoreSelector
 * JD-Core Version:    0.7.0.1
 */