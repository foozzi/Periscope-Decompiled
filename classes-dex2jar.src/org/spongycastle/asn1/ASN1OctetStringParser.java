package org.spongycastle.asn1;

import java.io.InputStream;

public abstract interface ASN1OctetStringParser
  extends ASN1Encodable, InMemoryRepresentable
{
  public abstract InputStream eL();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1OctetStringParser
 * JD-Core Version:    0.7.0.1
 */