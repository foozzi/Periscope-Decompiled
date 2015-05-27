package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;

public class DERExternal
  extends ASN1Primitive
{
  private ASN1ObjectIdentifier abd;
  private ASN1Integer abe;
  private ASN1Primitive abf;
  private ASN1Primitive abg;
  private int sU;
  
  public DERExternal(ASN1EncodableVector paramASN1EncodableVector)
  {
    int j = 0;
    Object localObject2 = ˊ(paramASN1EncodableVector, 0);
    Object localObject1 = localObject2;
    if ((localObject2 instanceof ASN1ObjectIdentifier))
    {
      this.abd = ((ASN1ObjectIdentifier)localObject2);
      j = 0 + 1;
      localObject1 = ˊ(paramASN1EncodableVector, j);
    }
    int i = j;
    localObject2 = localObject1;
    if ((localObject1 instanceof ASN1Integer))
    {
      this.abe = ((ASN1Integer)localObject1);
      i = j + 1;
      localObject2 = ˊ(paramASN1EncodableVector, i);
    }
    j = i;
    localObject1 = localObject2;
    if (!(localObject2 instanceof DERTaggedObject))
    {
      this.abf = ((ASN1Primitive)localObject2);
      j = i + 1;
      localObject1 = ˊ(paramASN1EncodableVector, j);
    }
    if (paramASN1EncodableVector.size() != j + 1) {
      throw new IllegalArgumentException("input vector too large");
    }
    if (!(localObject1 instanceof DERTaggedObject)) {
      throw new IllegalArgumentException("No tagged object found in vector. Structure doesn't seem to be of type External");
    }
    paramASN1EncodableVector = (DERTaggedObject)localObject1;
    т(paramASN1EncodableVector.eW());
    this.abg = paramASN1EncodableVector.eY();
  }
  
  private ASN1Primitive ˊ(ASN1EncodableVector paramASN1EncodableVector, int paramInt)
  {
    if (paramASN1EncodableVector.size() <= paramInt) {
      throw new IllegalArgumentException("too few objects in input vector");
    }
    return paramASN1EncodableVector.ʱ(paramInt).ez();
  }
  
  private void т(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 2)) {
      throw new IllegalArgumentException("invalid encoding value: " + paramInt);
    }
    this.sU = paramInt;
  }
  
  boolean ex()
  {
    return true;
  }
  
  int ey()
  {
    return getEncoded().length;
  }
  
  public ASN1Primitive fg()
  {
    return this.abf;
  }
  
  public ASN1ObjectIdentifier fh()
  {
    return this.abd;
  }
  
  public ASN1Primitive fi()
  {
    return this.abg;
  }
  
  public ASN1Integer fj()
  {
    return this.abe;
  }
  
  public int getEncoding()
  {
    return this.sU;
  }
  
  public int hashCode()
  {
    int j = 0;
    if (this.abd != null) {
      j = this.abd.hashCode();
    }
    int i = j;
    if (this.abe != null) {
      i = j ^ this.abe.hashCode();
    }
    j = i;
    if (this.abf != null) {
      j = i ^ this.abf.hashCode();
    }
    return j ^ this.abg.hashCode();
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    if (this.abd != null) {
      localByteArrayOutputStream.write(this.abd.getEncoded("DER"));
    }
    if (this.abe != null) {
      localByteArrayOutputStream.write(this.abe.getEncoded("DER"));
    }
    if (this.abf != null) {
      localByteArrayOutputStream.write(this.abf.getEncoded("DER"));
    }
    localByteArrayOutputStream.write(new DERTaggedObject(true, this.sU, this.abg).getEncoded("DER"));
    paramASN1OutputStream.ˊ(32, 8, localByteArrayOutputStream.toByteArray());
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof DERExternal)) {
      return false;
    }
    if (this == paramASN1Primitive) {
      return true;
    }
    paramASN1Primitive = (DERExternal)paramASN1Primitive;
    if ((this.abd != null) && ((paramASN1Primitive.abd == null) || (!paramASN1Primitive.abd.equals(this.abd)))) {
      return false;
    }
    if ((this.abe != null) && ((paramASN1Primitive.abe == null) || (!paramASN1Primitive.abe.equals(this.abe)))) {
      return false;
    }
    if ((this.abf != null) && ((paramASN1Primitive.abf == null) || (!paramASN1Primitive.abf.equals(this.abf)))) {
      return false;
    }
    return this.abg.equals(paramASN1Primitive.abg);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERExternal
 * JD-Core Version:    0.7.0.1
 */