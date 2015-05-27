package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;

public class McEliecePublicKey
  extends ASN1Object
{
  private int aQb;
  private ASN1ObjectIdentifier aiV;
  private int bdK;
  private byte[] bdL;
  
  public McEliecePublicKey(ASN1ObjectIdentifier paramASN1ObjectIdentifier, int paramInt1, int paramInt2, GF2Matrix paramGF2Matrix)
  {
    this.aiV = paramASN1ObjectIdentifier;
    this.aQb = paramInt1;
    this.bdK = paramInt2;
    this.bdL = paramGF2Matrix.getEncoded();
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aiV);
    localASN1EncodableVector.ˊ(new ASN1Integer(this.aQb));
    localASN1EncodableVector.ˊ(new ASN1Integer(this.bdK));
    localASN1EncodableVector.ˊ(new DEROctetString(this.bdL));
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.asn1.McEliecePublicKey
 * JD-Core Version:    0.7.0.1
 */