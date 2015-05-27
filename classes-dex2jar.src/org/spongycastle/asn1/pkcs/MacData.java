package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.DigestInfo;

public class MacData
  extends ASN1Object
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  DigestInfo aqf;
  byte[] aqg;
  BigInteger aqh;
  
  private MacData(ASN1Sequence paramASN1Sequence)
  {
    this.aqf = DigestInfo.ﯦ(paramASN1Sequence.ϲ(0));
    this.aqg = ((ASN1OctetString)paramASN1Sequence.ϲ(1)).eM();
    if (paramASN1Sequence.size() == 3)
    {
      this.aqh = ((ASN1Integer)paramASN1Sequence.ϲ(2)).eA();
      return;
    }
    this.aqh = ONE;
  }
  
  public MacData(DigestInfo paramDigestInfo, byte[] paramArrayOfByte, int paramInt)
  {
    this.aqf = paramDigestInfo;
    this.aqg = paramArrayOfByte;
    this.aqh = BigInteger.valueOf(paramInt);
  }
  
  public static MacData ᵞ(Object paramObject)
  {
    if ((paramObject instanceof MacData)) {
      return (MacData)paramObject;
    }
    if (paramObject != null) {
      return new MacData(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aqf);
    localASN1EncodableVector.ˊ(new DEROctetString(this.aqg));
    if (!this.aqh.equals(ONE)) {
      localASN1EncodableVector.ˊ(new ASN1Integer(this.aqh));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public DigestInfo fM()
  {
    return this.aqf;
  }
  
  public BigInteger fN()
  {
    return this.aqh;
  }
  
  public byte[] getSalt()
  {
    return this.aqg;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.MacData
 * JD-Core Version:    0.7.0.1
 */