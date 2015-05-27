package org.spongycastle.pqc.asn1;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;

public class RainbowPublicKey
  extends ASN1Object
{
  private ASN1Integer aek;
  private ASN1ObjectIdentifier aiV;
  private ASN1Integer ben;
  private byte[][] beo;
  private byte[][] bep;
  private byte[] beq;
  
  public RainbowPublicKey(int paramInt, short[][] paramArrayOfShort1, short[][] paramArrayOfShort2, short[] paramArrayOfShort)
  {
    this.aek = new ASN1Integer(0L);
    this.ben = new ASN1Integer(paramInt);
    this.beo = RainbowUtil.ˋ(paramArrayOfShort1);
    this.bep = RainbowUtil.ˋ(paramArrayOfShort2);
    this.beq = RainbowUtil.ˏ(paramArrayOfShort);
  }
  
  private RainbowPublicKey(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.ϲ(0) instanceof ASN1Integer)) {
      this.aek = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(0));
    } else {
      this.aiV = ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(0));
    }
    this.ben = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(1));
    ASN1Sequence localASN1Sequence = ASN1Sequence.ﹾ(paramASN1Sequence.ϲ(2));
    this.beo = new byte[localASN1Sequence.size()][];
    int i = 0;
    while (i < localASN1Sequence.size())
    {
      this.beo[i] = ASN1OctetString.ﹸ(localASN1Sequence.ϲ(i)).eM();
      i += 1;
    }
    localASN1Sequence = (ASN1Sequence)paramASN1Sequence.ϲ(3);
    this.bep = new byte[localASN1Sequence.size()][];
    i = 0;
    while (i < localASN1Sequence.size())
    {
      this.bep[i] = ASN1OctetString.ﹸ(localASN1Sequence.ϲ(i)).eM();
      i += 1;
    }
    this.beq = ASN1OctetString.ﹸ(((ASN1Sequence)paramASN1Sequence.ϲ(4)).ϲ(0)).eM();
  }
  
  public static RainbowPublicKey ȋ(Object paramObject)
  {
    if ((paramObject instanceof RainbowPublicKey)) {
      return (RainbowPublicKey)paramObject;
    }
    if (paramObject != null) {
      return new RainbowPublicKey(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    if (this.aek != null) {
      localASN1EncodableVector1.ˊ(this.aek);
    } else {
      localASN1EncodableVector1.ˊ(this.aiV);
    }
    localASN1EncodableVector1.ˊ(this.ben);
    ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
    int i = 0;
    while (i < this.beo.length)
    {
      localASN1EncodableVector2.ˊ(new DEROctetString(this.beo[i]));
      i += 1;
    }
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    localASN1EncodableVector2 = new ASN1EncodableVector();
    i = 0;
    while (i < this.bep.length)
    {
      localASN1EncodableVector2.ˊ(new DEROctetString(this.bep[i]));
      i += 1;
    }
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    localASN1EncodableVector2 = new ASN1EncodableVector();
    localASN1EncodableVector2.ˊ(new DEROctetString(this.beq));
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    return new DERSequence(localASN1EncodableVector1);
  }
  
  public int qD()
  {
    return this.ben.eA().intValue();
  }
  
  public short[][] qE()
  {
    return RainbowUtil.ˎ(this.beo);
  }
  
  public short[][] qF()
  {
    return RainbowUtil.ˎ(this.bep);
  }
  
  public short[] qG()
  {
    return RainbowUtil.ﻧ(this.beq);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.asn1.RainbowPublicKey
 * JD-Core Version:    0.7.0.1
 */