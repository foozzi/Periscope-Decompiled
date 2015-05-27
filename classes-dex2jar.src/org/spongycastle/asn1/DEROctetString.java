package org.spongycastle.asn1;

public class DEROctetString
  extends ASN1OctetString
{
  public DEROctetString(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  static void ˊ(DEROutputStream paramDEROutputStream, byte[] paramArrayOfByte)
  {
    paramDEROutputStream.ˊ(4, paramArrayOfByte);
  }
  
  boolean ex()
  {
    return false;
  }
  
  int ey()
  {
    return StreamUtil.х(this.aas.length) + 1 + this.aas.length;
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.ˊ(4, this.aas);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DEROctetString
 * JD-Core Version:    0.7.0.1
 */