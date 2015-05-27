package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public abstract class ASN1Set
  extends ASN1Primitive
{
  private Vector aax = new Vector();
  private boolean aay = false;
  
  protected ASN1Set() {}
  
  protected ASN1Set(ASN1Encodable paramASN1Encodable)
  {
    this.aax.addElement(paramASN1Encodable);
  }
  
  protected ASN1Set(ASN1EncodableVector paramASN1EncodableVector, boolean paramBoolean)
  {
    int i = 0;
    while (i != paramASN1EncodableVector.size())
    {
      this.aax.addElement(paramASN1EncodableVector.ʱ(i));
      i += 1;
    }
    if (paramBoolean) {
      sort();
    }
  }
  
  protected ASN1Set(ASN1Encodable[] paramArrayOfASN1Encodable, boolean paramBoolean)
  {
    int i = 0;
    while (i != paramArrayOfASN1Encodable.length)
    {
      this.aax.addElement(paramArrayOfASN1Encodable[i]);
      i += 1;
    }
    if (paramBoolean) {
      sort();
    }
  }
  
  public static ASN1Set ɩ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ASN1Set))) {
      return (ASN1Set)paramObject;
    }
    if ((paramObject instanceof ASN1SetParser)) {
      return ɩ(((ASN1SetParser)paramObject).ez());
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = ɩ(ASN1Primitive.ՙ((byte[])paramObject));
        return paramObject;
      }
      catch (IOException paramObject)
      {
        throw new IllegalArgumentException("failed to construct set from byte[]: " + paramObject.getMessage());
      }
    }
    if ((paramObject instanceof ASN1Encodable))
    {
      ASN1Primitive localASN1Primitive = ((ASN1Encodable)paramObject).ez();
      if ((localASN1Primitive instanceof ASN1Set)) {
        return (ASN1Set)localASN1Primitive;
      }
    }
    throw new IllegalArgumentException("unknown object in getInstance: " + paramObject.getClass().getName());
  }
  
  public static ASN1Set ʻ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (!paramASN1TaggedObject.eX()) {
        throw new IllegalArgumentException("object implicit - explicit expected.");
      }
      return (ASN1Set)paramASN1TaggedObject.eY();
    }
    if (paramASN1TaggedObject.eX())
    {
      if ((paramASN1TaggedObject instanceof BERTaggedObject)) {
        return new BERSet(paramASN1TaggedObject.eY());
      }
      return new DLSet(paramASN1TaggedObject.eY());
    }
    if ((paramASN1TaggedObject.eY() instanceof ASN1Set)) {
      return (ASN1Set)paramASN1TaggedObject.eY();
    }
    if ((paramASN1TaggedObject.eY() instanceof ASN1Sequence))
    {
      ASN1Sequence localASN1Sequence = (ASN1Sequence)paramASN1TaggedObject.eY();
      if ((paramASN1TaggedObject instanceof BERTaggedObject)) {
        return new BERSet(localASN1Sequence.eS());
      }
      return new DLSet(localASN1Sequence.eS());
    }
    throw new IllegalArgumentException("unknown object in getInstance: " + paramASN1TaggedObject.getClass().getName());
  }
  
  private ASN1Encodable ˊ(Enumeration paramEnumeration)
  {
    paramEnumeration = (ASN1Encodable)paramEnumeration.nextElement();
    if (paramEnumeration == null) {
      return DERNull.abj;
    }
    return paramEnumeration;
  }
  
  private boolean ˋ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = Math.min(paramArrayOfByte1.length, paramArrayOfByte2.length);
    int i = 0;
    while (i != j)
    {
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        return (paramArrayOfByte1[i] & 0xFF) < (paramArrayOfByte2[i] & 0xFF);
      }
      i += 1;
    }
    return j == paramArrayOfByte1.length;
  }
  
  private byte[] ˎ(ASN1Encodable paramASN1Encodable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ASN1OutputStream localASN1OutputStream = new ASN1OutputStream(localByteArrayOutputStream);
    try
    {
      localASN1OutputStream.ˋ(paramASN1Encodable);
    }
    catch (IOException paramASN1Encodable)
    {
      throw new IllegalArgumentException("cannot encode object added to SET");
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  ASN1Primitive eO()
  {
    if (this.aay)
    {
      localObject = new DERSet();
      ((ASN1Set)localObject).aax = this.aax;
      return localObject;
    }
    Object localObject = new Vector();
    int i = 0;
    while (i != this.aax.size())
    {
      ((Vector)localObject).addElement(this.aax.elementAt(i));
      i += 1;
    }
    DERSet localDERSet = new DERSet();
    localDERSet.aax = ((Vector)localObject);
    localDERSet.sort();
    return localDERSet;
  }
  
  ASN1Primitive eP()
  {
    DLSet localDLSet = new DLSet();
    localDLSet.aax = this.aax;
    return localDLSet;
  }
  
  public Enumeration eT()
  {
    return this.aax.elements();
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
    return this.aax.size();
  }
  
  protected void sort()
  {
    if (!this.aay)
    {
      this.aay = true;
      if (this.aax.size() > 1)
      {
        int j = 1;
        int k;
        for (int m = this.aax.size() - 1; j != 0; m = k)
        {
          int i = 0;
          k = 0;
          Object localObject1 = ˎ((ASN1Encodable)this.aax.elementAt(0));
          j = 0;
          while (i != m)
          {
            Object localObject2 = ˎ((ASN1Encodable)this.aax.elementAt(i + 1));
            if (ˋ((byte[])localObject1, (byte[])localObject2))
            {
              localObject1 = localObject2;
            }
            else
            {
              localObject2 = this.aax.elementAt(i);
              this.aax.setElementAt(this.aax.elementAt(i + 1), i);
              this.aax.setElementAt(localObject2, i + 1);
              j = 1;
              k = i;
            }
            i += 1;
          }
        }
      }
    }
  }
  
  public String toString()
  {
    return this.aax.toString();
  }
  
  abstract void ˊ(ASN1OutputStream paramASN1OutputStream);
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof ASN1Set)) {
      return false;
    }
    Object localObject1 = (ASN1Set)paramASN1Primitive;
    if (size() != ((ASN1Set)localObject1).size()) {
      return false;
    }
    paramASN1Primitive = eT();
    localObject1 = ((ASN1Set)localObject1).eT();
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
    return (ASN1Encodable)this.aax.elementAt(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1Set
 * JD-Core Version:    0.7.0.1
 */