package org.spongycastle.pqc.asn1;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class ParSet
  extends ASN1Object
{
  private static final BigInteger ZERO = BigInteger.valueOf(0L);
  private int bdK;
  private int[] bed;
  private int[] bee;
  private int[] bef;
  
  public ParSet(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    this.bdK = paramInt;
    this.bed = paramArrayOfInt1;
    this.bee = paramArrayOfInt2;
    this.bef = paramArrayOfInt3;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
    ASN1EncodableVector localASN1EncodableVector3 = new ASN1EncodableVector();
    int i = 0;
    while (i < this.bed.length)
    {
      localASN1EncodableVector1.ˊ(new ASN1Integer(this.bed[i]));
      localASN1EncodableVector2.ˊ(new ASN1Integer(this.bee[i]));
      localASN1EncodableVector3.ˊ(new ASN1Integer(this.bef[i]));
      i += 1;
    }
    ASN1EncodableVector localASN1EncodableVector4 = new ASN1EncodableVector();
    localASN1EncodableVector4.ˊ(new ASN1Integer(this.bdK));
    localASN1EncodableVector4.ˊ(new DERSequence(localASN1EncodableVector1));
    localASN1EncodableVector4.ˊ(new DERSequence(localASN1EncodableVector2));
    localASN1EncodableVector4.ˊ(new DERSequence(localASN1EncodableVector3));
    return new DERSequence(localASN1EncodableVector4);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.asn1.ParSet
 * JD-Core Version:    0.7.0.1
 */