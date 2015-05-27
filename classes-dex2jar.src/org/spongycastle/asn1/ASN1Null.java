package org.spongycastle.asn1;

public abstract class ASN1Null
  extends ASN1Primitive
{
  public int hashCode()
  {
    return -1;
  }
  
  public String toString()
  {
    return "NULL";
  }
  
  abstract void ˊ(ASN1OutputStream paramASN1OutputStream);
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    return (paramASN1Primitive instanceof ASN1Null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1Null
 * JD-Core Version:    0.7.0.1
 */