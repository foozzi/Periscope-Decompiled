package org.spongycastle.asn1;

import java.util.Enumeration;
import java.util.Vector;

class LazyEncodedSequence
  extends ASN1Sequence
{
  private byte[] abx;
  
  LazyEncodedSequence(byte[] paramArrayOfByte)
  {
    this.abx = paramArrayOfByte;
  }
  
  private void fm()
  {
    LazyConstructionEnumeration localLazyConstructionEnumeration = new LazyConstructionEnumeration(this.abx);
    while (localLazyConstructionEnumeration.hasMoreElements()) {
      this.aav.addElement(localLazyConstructionEnumeration.nextElement());
    }
    this.abx = null;
  }
  
  ASN1Primitive eO()
  {
    if (this.abx != null) {
      fm();
    }
    return super.eO();
  }
  
  ASN1Primitive eP()
  {
    if (this.abx != null) {
      fm();
    }
    return super.eP();
  }
  
  public Enumeration eT()
  {
    try
    {
      if (this.abx == null)
      {
        localObject1 = super.eT();
        return localObject1;
      }
      Object localObject1 = new LazyConstructionEnumeration(this.abx);
      return localObject1;
    }
    finally {}
  }
  
  int ey()
  {
    if (this.abx != null) {
      return StreamUtil.х(this.abx.length) + 1 + this.abx.length;
    }
    return super.eP().ey();
  }
  
  public int size()
  {
    try
    {
      if (this.abx != null) {
        fm();
      }
      int i = super.size();
      return i;
    }
    finally {}
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    if (this.abx != null)
    {
      paramASN1OutputStream.ˊ(48, this.abx);
      return;
    }
    super.eP().ˊ(paramASN1OutputStream);
  }
  
  public ASN1Encodable ϲ(int paramInt)
  {
    try
    {
      if (this.abx != null) {
        fm();
      }
      ASN1Encodable localASN1Encodable = super.ϲ(paramInt);
      return localASN1Encodable;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.LazyEncodedSequence
 * JD-Core Version:    0.7.0.1
 */