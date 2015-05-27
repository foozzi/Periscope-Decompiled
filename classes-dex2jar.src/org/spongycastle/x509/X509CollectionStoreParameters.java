package org.spongycastle.x509;

import java.util.ArrayList;
import java.util.Collection;

public class X509CollectionStoreParameters
  implements X509StoreParameters
{
  private Collection bkW;
  
  public X509CollectionStoreParameters(Collection paramCollection)
  {
    if (paramCollection == null) {
      throw new NullPointerException("collection cannot be null");
    }
    this.bkW = paramCollection;
  }
  
  public Object clone()
  {
    return new X509CollectionStoreParameters(this.bkW);
  }
  
  public Collection getCollection()
  {
    return new ArrayList(this.bkW);
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("X509CollectionStoreParameters: [\n");
    localStringBuffer.append("  collection: " + this.bkW + "\n");
    localStringBuffer.append("]");
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509CollectionStoreParameters
 * JD-Core Version:    0.7.0.1
 */