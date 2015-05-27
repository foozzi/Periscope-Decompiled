package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public abstract class ASN1Sequence
  extends ASN1Primitive
{
  protected Vector aav = new Vector();
  
  protected ASN1Sequence() {}
  
  protected ASN1Sequence(ASN1Encodable paramASN1Encodable)
  {
    this.aav.addElement(paramASN1Encodable);
  }
  
  protected ASN1Sequence(ASN1EncodableVector paramASN1EncodableVector)
  {
    int i = 0;
    while (i != paramASN1EncodableVector.size())
    {
      this.aav.addElement(paramASN1EncodableVector.ʱ(i));
      i += 1;
    }
  }
  
  protected ASN1Sequence(ASN1Encodable[] paramArrayOfASN1Encodable)
  {
    int i = 0;
    while (i != paramArrayOfASN1Encodable.length)
    {
      this.aav.addElement(paramArrayOfASN1Encodable[i]);
      i += 1;
    }
  }
  
  private ASN1Encodable ˊ(Enumeration paramEnumeration)
  {
    return (ASN1Encodable)paramEnumeration.nextElement();
  }
  
  public static ASN1Sequence ᐝ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (!paramASN1TaggedObject.eX()) {
        throw new IllegalArgumentException("object implicit - explicit expected.");
      }
      return ﹾ(paramASN1TaggedObject.eY().ez());
    }
    if (paramASN1TaggedObject.eX())
    {
      if ((paramASN1TaggedObject instanceof BERTaggedObject)) {
        return new BERSequence(paramASN1TaggedObject.eY());
      }
      return new DLSequence(paramASN1TaggedObject.eY());
    }
    if ((paramASN1TaggedObject.eY() instanceof ASN1Sequence)) {
      return (ASN1Sequence)paramASN1TaggedObject.eY();
    }
    throw new IllegalArgumentException("unknown object in getInstance: " + paramASN1TaggedObject.getClass().getName());
  }
  
  public static ASN1Sequence ﹾ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ASN1Sequence))) {
      return (ASN1Sequence)paramObject;
    }
    if ((paramObject instanceof ASN1SequenceParser)) {
      return ﹾ(((ASN1SequenceParser)paramObject).ez());
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = ﹾ(ՙ((byte[])paramObject));
        return paramObject;
      }
      catch (IOException paramObject)
      {
        throw new IllegalArgumentException("failed to construct sequence from byte[]: " + paramObject.getMessage());
      }
    }
    if ((paramObject instanceof ASN1Encodable))
    {
      ASN1Primitive localASN1Primitive = ((ASN1Encodable)paramObject).ez();
      if ((localASN1Primitive instanceof ASN1Sequence)) {
        return (ASN1Sequence)localASN1Primitive;
      }
    }
    throw new IllegalArgumentException("unknown object in getInstance: " + paramObject.getClass().getName());
  }
  
  ASN1Primitive eO()
  {
    DERSequence localDERSequence = new DERSequence();
    localDERSequence.aav = this.aav;
    return localDERSequence;
  }
  
  ASN1Primitive eP()
  {
    DLSequence localDLSequence = new DLSequence();
    localDLSequence.aav = this.aav;
    return localDLSequence;
  }
  
  public ASN1Encodable[] eS()
  {
    ASN1Encodable[] arrayOfASN1Encodable = new ASN1Encodable[size()];
    int i = 0;
    while (i != size())
    {
      arrayOfASN1Encodable[i] = ϲ(i);
      i += 1;
    }
    return arrayOfASN1Encodable;
  }
  
  public Enumeration eT()
  {
    return this.aav.elements();
  }
  
  boolean ex()
  {
    return true;
  }
  
  public int hashCode()
  {
    Enumeration localEnumeration = eT();
    for (int i = size(); localEnumeration.hasMoreElements(); i = i * 17 ^ ˊ(localEnumeration).hashCode()) {}
    return i;
  }
  
  public int size()
  {
    return this.aav.size();
  }
  
  public String toString()
  {
    return this.aav.toString();
  }
  
  abstract void ˊ(ASN1OutputStream paramASN1OutputStream);
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof ASN1Sequence)) {
      return false;
    }
    Object localObject1 = (ASN1Sequence)paramASN1Primitive;
    if (size() != ((ASN1Sequence)localObject1).size()) {
      return false;
    }
    paramASN1Primitive = eT();
    localObject1 = ((ASN1Sequence)localObject1).eT();
    while (paramASN1Primitive.hasMoreElements())
    {
      Object localObject3 = ˊ(paramASN1Primitive);
      Object localObject2 = ˊ((Enumeration)localObject1);
      localObject3 = ((ASN1Encodable)localObject3).ez();
      localObject2 = ((ASN1Encodable)localObject2).ez();
      if ((localObject3 != localObject2) && (!((ASN1Primitive)localObject3).equals(localObject2))) {
        return false;
      }
    }
    return true;
  }
  
  public ASN1Encodable ϲ(int paramInt)
  {
    return (ASN1Encodable)this.aav.elementAt(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1Sequence
 * JD-Core Version:    0.7.0.1
 */