package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

public class McElieceCCA2PrivateKey
  extends ASN1Object
{
  private int aQb;
  private ASN1ObjectIdentifier aiV;
  private int avM;
  private byte[] bdF;
  private byte[] bdG;
  private byte[] bdH;
  private byte[] bdI;
  private byte[][] bdJ;
  
  public McElieceCCA2PrivateKey(ASN1ObjectIdentifier paramASN1ObjectIdentifier, int paramInt1, int paramInt2, GF2mField paramGF2mField, PolynomialGF2mSmallM paramPolynomialGF2mSmallM, Permutation paramPermutation, GF2Matrix paramGF2Matrix, PolynomialGF2mSmallM[] paramArrayOfPolynomialGF2mSmallM)
  {
    this.aiV = paramASN1ObjectIdentifier;
    this.aQb = paramInt1;
    this.avM = paramInt2;
    this.bdF = paramGF2mField.getEncoded();
    this.bdG = paramPolynomialGF2mSmallM.getEncoded();
    this.bdH = paramPermutation.getEncoded();
    this.bdI = paramGF2Matrix.getEncoded();
    this.bdJ = new byte[paramArrayOfPolynomialGF2mSmallM.length][];
    paramInt1 = 0;
    while (paramInt1 != paramArrayOfPolynomialGF2mSmallM.length)
    {
      this.bdJ[paramInt1] = paramArrayOfPolynomialGF2mSmallM[paramInt1].getEncoded();
      paramInt1 += 1;
    }
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    localASN1EncodableVector1.ˊ(this.aiV);
    localASN1EncodableVector1.ˊ(new ASN1Integer(this.aQb));
    localASN1EncodableVector1.ˊ(new ASN1Integer(this.avM));
    localASN1EncodableVector1.ˊ(new DEROctetString(this.bdF));
    localASN1EncodableVector1.ˊ(new DEROctetString(this.bdG));
    localASN1EncodableVector1.ˊ(new DEROctetString(this.bdH));
    localASN1EncodableVector1.ˊ(new DEROctetString(this.bdI));
    ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
    int i = 0;
    while (i < this.bdJ.length)
    {
      localASN1EncodableVector2.ˊ(new DEROctetString(this.bdJ[i]));
      i += 1;
    }
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    return new DERSequence(localASN1EncodableVector1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.asn1.McElieceCCA2PrivateKey
 * JD-Core Version:    0.7.0.1
 */