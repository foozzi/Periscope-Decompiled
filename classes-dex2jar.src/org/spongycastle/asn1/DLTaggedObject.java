package org.spongycastle.asn1;

public class DLTaggedObject
  extends ASN1TaggedObject
{
  private static final byte[] abn = new byte[0];
  
  public DLTaggedObject(boolean paramBoolean, int paramInt, ASN1Encodable paramASN1Encodable)
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
      return this.aaF.ez().eP().ex();
    }
    return true;
  }
  
  int ey()
  {
    if (!this.aaD)
    {
      int i = this.aaF.ez().eP().ey();
      if (this.aaE) {
        return StreamUtil.ј(this.aaC) + StreamUtil.х(i) + i;
      }
      return StreamUtil.ј(this.aaC) + (i - 1);
    }
    return StreamUtil.ј(this.aaC) + 1;
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    if (!this.aaD)
    {
      ASN1Primitive localASN1Primitive = this.aaF.ez().eP();
      if (this.aaE)
      {
        paramASN1OutputStream.ו(160, this.aaC);
        paramASN1OutputStream.Ί(localASN1Primitive.ey());
        paramASN1OutputStream.ˋ(localASN1Primitive);
      }
      else
      {
        int i;
        if (localASN1Primitive.ex()) {
          i = 160;
        } else {
          i = 128;
        }
        paramASN1OutputStream.ו(i, this.aaC);
        paramASN1OutputStream.ˋ(localASN1Primitive);
      }
      return;
    }
    paramASN1OutputStream.ˊ(160, this.aaC, abn);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DLTaggedObject
 * JD-Core Version:    0.7.0.1
 */