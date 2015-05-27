package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.BERSequence;

public class Pfx
  extends ASN1Object
  implements PKCSObjectIdentifiers
{
  private ContentInfo asI;
  private MacData asJ = null;
  
  private Pfx(ASN1Sequence paramASN1Sequence)
  {
    if (((ASN1Integer)paramASN1Sequence.ϲ(0)).eA().intValue() != 3) {
      throw new IllegalArgumentException("wrong version for PFX PDU");
    }
    this.asI = ContentInfo.ᔋ(paramASN1Sequence.ϲ(1));
    if (paramASN1Sequence.size() == 3) {
      this.asJ = MacData.ᵞ(paramASN1Sequence.ϲ(2));
    }
  }
  
  public Pfx(ContentInfo paramContentInfo, MacData paramMacData)
  {
    this.asI = paramContentInfo;
    this.asJ = paramMacData;
  }
  
  public static Pfx ﹲ(Object paramObject)
  {
    if ((paramObject instanceof Pfx)) {
      return (Pfx)paramObject;
    }
    if (paramObject != null) {
      return new Pfx(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(3L));
    localASN1EncodableVector.ˊ(this.asI);
    if (this.asJ != null) {
      localASN1EncodableVector.ˊ(this.asJ);
    }
    return new BERSequence(localASN1EncodableVector);
  }
  
  public ContentInfo fU()
  {
    return this.asI;
  }
  
  public MacData fV()
  {
    return this.asJ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.Pfx
 * JD-Core Version:    0.7.0.1
 */