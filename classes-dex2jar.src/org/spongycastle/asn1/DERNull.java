package org.spongycastle.asn1;

public class DERNull
  extends ASN1Null
{
  public static final DERNull abj = new DERNull();
  private static final byte[] abk = new byte[0];
  
  boolean ex()
  {
    return false;
  }
  
  int ey()
  {
    return 2;
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.ˊ(5, abk);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERNull
 * JD-Core Version:    0.7.0.1
 */