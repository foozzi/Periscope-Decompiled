package org.spongycastle.asn1;

import java.io.IOException;

public abstract class ASN1TaggedObject
  extends ASN1Primitive
  implements ASN1TaggedObjectParser
{
  int aaC;
  boolean aaD = false;
  boolean aaE = true;
  ASN1Encodable aaF = null;
  
  public ASN1TaggedObject(boolean paramBoolean, int paramInt, ASN1Encodable paramASN1Encodable)
  {
    if ((paramASN1Encodable instanceof ASN1Choice)) {
      this.aaE = true;
    } else {
      this.aaE = paramBoolean;
    }
    this.aaC = paramInt;
    if (this.aaE)
    {
      this.aaF = paramASN1Encodable;
      return;
    }
    if ((paramASN1Encodable.ez() instanceof ASN1Set)) {}
    this.aaF = paramASN1Encodable;
  }
  
  public static ASN1TaggedObject ʵ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ASN1TaggedObject))) {
      return (ASN1TaggedObject)paramObject;
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = ʵ(ՙ((byte[])paramObject));
        return paramObject;
      }
      catch (IOException paramObject)
      {
        throw new IllegalArgumentException("failed to construct tagged object from byte[]: " + paramObject.getMessage());
      }
    }
    throw new IllegalArgumentException("unknown object in getInstance: " + paramObject.getClass().getName());
  }
  
  public static ASN1TaggedObject ʼ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    if (paramBoolean) {
      return (ASN1TaggedObject)paramASN1TaggedObject.eY();
    }
    throw new IllegalArgumentException("implicitly tagged tagged object");
  }
  
  public ASN1Primitive eN()
  {
    return ez();
  }
  
  ASN1Primitive eO()
  {
    return new DERTaggedObject(this.aaE, this.aaC, this.aaF);
  }
  
  ASN1Primitive eP()
  {
    return new DLTaggedObject(this.aaE, this.aaC, this.aaF);
  }
  
  public int eW()
  {
    return this.aaC;
  }
  
  public boolean eX()
  {
    return this.aaE;
  }
  
  public ASN1Primitive eY()
  {
    if (this.aaF != null) {
      return this.aaF.ez();
    }
    return null;
  }
  
  public int hashCode()
  {
    int j = this.aaC;
    int i = j;
    if (this.aaF != null) {
      i = j ^ this.aaF.hashCode();
    }
    return i;
  }
  
  public boolean isEmpty()
  {
    return this.aaD;
  }
  
  public String toString()
  {
    return "[" + this.aaC + "]" + this.aaF;
  }
  
  abstract void ˊ(ASN1OutputStream paramASN1OutputStream);
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof ASN1TaggedObject)) {
      return false;
    }
    paramASN1Primitive = (ASN1TaggedObject)paramASN1Primitive;
    if ((this.aaC != paramASN1Primitive.aaC) || (this.aaD != paramASN1Primitive.aaD) || (this.aaE != paramASN1Primitive.aaE)) {
      return false;
    }
    if (this.aaF == null)
    {
      if (paramASN1Primitive.aaF != null) {
        return false;
      }
    }
    else if (!this.aaF.ez().equals(paramASN1Primitive.aaF.ez())) {
      return false;
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1TaggedObject
 * JD-Core Version:    0.7.0.1
 */