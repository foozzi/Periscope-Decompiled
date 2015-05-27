package org.spongycastle.asn1;

import java.util.Enumeration;

public class BERTaggedObject
  extends ASN1TaggedObject
{
  public BERTaggedObject(int paramInt, ASN1Encodable paramASN1Encodable)
  {
    super(true, paramInt, paramASN1Encodable);
  }
  
  public BERTaggedObject(boolean paramBoolean, int paramInt, ASN1Encodable paramASN1Encodable)
  {
    super(paramBoolean, paramInt, paramASN1Encodable);
  }
  
  boolean ex()
  {
    if (!this.aaD)
    {
      if (this.aaE) {
        return true;
      }
      return this.aaF.ez().eO().ex();
    }
    return true;
  }
  
  int ey()
  {
    if (!this.aaD)
    {
      int i = this.aaF.ez().ey();
      if (this.aaE) {
        return StreamUtil.ј(this.aaC) + StreamUtil.х(i) + i;
      }
      return StreamUtil.ј(this.aaC) + (i - 1);
    }
    return StreamUtil.ј(this.aaC) + 1;
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.ו(160, this.aaC);
    paramASN1OutputStream.write(128);
    if (!this.aaD) {
      if (!this.aaE)
      {
        Enumeration localEnumeration;
        if ((this.aaF instanceof ASN1OctetString))
        {
          if ((this.aaF instanceof BEROctetString)) {
            localEnumeration = ((BEROctetString)this.aaF).eT();
          } else {
            localEnumeration = new BEROctetString(((ASN1OctetString)this.aaF).eM()).eT();
          }
        }
        else if ((this.aaF instanceof ASN1Sequence)) {
          localEnumeration = ((ASN1Sequence)this.aaF).eT();
        } else if ((this.aaF instanceof ASN1Set)) {
          localEnumeration = ((ASN1Set)this.aaF).eT();
        } else {
          throw new RuntimeException("not implemented: " + this.aaF.getClass().getName());
        }
        while (localEnumeration.hasMoreElements()) {
          paramASN1OutputStream.ˋ((ASN1Encodable)localEnumeration.nextElement());
        }
      }
      else
      {
        paramASN1OutputStream.ˋ(this.aaF);
      }
    }
    paramASN1OutputStream.write(0);
    paramASN1OutputStream.write(0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BERTaggedObject
 * JD-Core Version:    0.7.0.1
 */