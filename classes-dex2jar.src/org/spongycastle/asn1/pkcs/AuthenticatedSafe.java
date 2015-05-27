package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.DLSequence;

public class AuthenticatedSafe
  extends ASN1Object
{
  private ContentInfo[] apQ;
  private boolean apR = true;
  
  private AuthenticatedSafe(ASN1Sequence paramASN1Sequence)
  {
    this.apQ = new ContentInfo[paramASN1Sequence.size()];
    int i = 0;
    while (i != this.apQ.length)
    {
      this.apQ[i] = ContentInfo.ᔋ(paramASN1Sequence.ϲ(i));
      i += 1;
    }
    this.apR = (paramASN1Sequence instanceof BERSequence);
  }
  
  public AuthenticatedSafe(ContentInfo[] paramArrayOfContentInfo)
  {
    this.apQ = paramArrayOfContentInfo;
  }
  
  public static AuthenticatedSafe ᔉ(Object paramObject)
  {
    if ((paramObject instanceof AuthenticatedSafe)) {
      return (AuthenticatedSafe)paramObject;
    }
    if (paramObject != null) {
      return new AuthenticatedSafe(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    int i = 0;
    while (i != this.apQ.length)
    {
      localASN1EncodableVector.ˊ(this.apQ[i]);
      i += 1;
    }
    if (this.apR) {
      return new BERSequence(localASN1EncodableVector);
    }
    return new DLSequence(localASN1EncodableVector);
  }
  
  public ContentInfo[] fC()
  {
    return this.apQ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.AuthenticatedSafe
 * JD-Core Version:    0.7.0.1
 */