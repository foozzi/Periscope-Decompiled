package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.pqc.crypto.rainbow.Layer;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;

public class RainbowPrivateKey
  extends ASN1Object
{
  private ASN1Integer aek;
  private ASN1ObjectIdentifier aiV;
  private byte[][] beh;
  private byte[] bei;
  private byte[][] bej;
  private byte[] bek;
  private byte[] bel;
  private Layer[] bem;
  
  private RainbowPrivateKey(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.ϲ(0) instanceof ASN1Integer)) {
      this.aek = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(0));
    } else {
      this.aiV = ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(0));
    }
    Object localObject1 = (ASN1Sequence)paramASN1Sequence.ϲ(1);
    this.beh = new byte[((ASN1Sequence)localObject1).size()][];
    int i = 0;
    while (i < ((ASN1Sequence)localObject1).size())
    {
      this.beh[i] = ((ASN1OctetString)((ASN1Sequence)localObject1).ϲ(i)).eM();
      i += 1;
    }
    this.bei = ((ASN1OctetString)((ASN1Sequence)paramASN1Sequence.ϲ(2)).ϲ(0)).eM();
    localObject1 = (ASN1Sequence)paramASN1Sequence.ϲ(3);
    this.bej = new byte[((ASN1Sequence)localObject1).size()][];
    i = 0;
    while (i < ((ASN1Sequence)localObject1).size())
    {
      this.bej[i] = ((ASN1OctetString)((ASN1Sequence)localObject1).ϲ(i)).eM();
      i += 1;
    }
    this.bek = ((ASN1OctetString)((ASN1Sequence)paramASN1Sequence.ϲ(4)).ϲ(0)).eM();
    this.bel = ((ASN1OctetString)((ASN1Sequence)paramASN1Sequence.ϲ(5)).ϲ(0)).eM();
    Object localObject2 = (ASN1Sequence)paramASN1Sequence.ϲ(6);
    paramASN1Sequence = new byte[((ASN1Sequence)localObject2).size()][][][];
    localObject1 = new byte[((ASN1Sequence)localObject2).size()][][][];
    byte[][][] arrayOfByte = new byte[((ASN1Sequence)localObject2).size()][][];
    byte[][] arrayOfByte1 = new byte[((ASN1Sequence)localObject2).size()][];
    i = 0;
    while (i < ((ASN1Sequence)localObject2).size())
    {
      ASN1Sequence localASN1Sequence1 = (ASN1Sequence)((ASN1Sequence)localObject2).ϲ(i);
      ASN1Sequence localASN1Sequence2 = (ASN1Sequence)localASN1Sequence1.ϲ(0);
      paramASN1Sequence[i] = new byte[localASN1Sequence2.size()][][];
      j = 0;
      ASN1Sequence localASN1Sequence3;
      int k;
      while (j < localASN1Sequence2.size())
      {
        localASN1Sequence3 = (ASN1Sequence)localASN1Sequence2.ϲ(j);
        paramASN1Sequence[i][j] = new byte[localASN1Sequence3.size()][];
        k = 0;
        while (k < localASN1Sequence3.size())
        {
          paramASN1Sequence[i][j][k] = ((ASN1OctetString)localASN1Sequence3.ϲ(k)).eM();
          k += 1;
        }
        j += 1;
      }
      localASN1Sequence2 = (ASN1Sequence)localASN1Sequence1.ϲ(1);
      localObject1[i] = new byte[localASN1Sequence2.size()][][];
      j = 0;
      while (j < localASN1Sequence2.size())
      {
        localASN1Sequence3 = (ASN1Sequence)localASN1Sequence2.ϲ(j);
        localObject1[i][j] = new byte[localASN1Sequence3.size()][];
        k = 0;
        while (k < localASN1Sequence3.size())
        {
          localObject1[i][j][k] = ((ASN1OctetString)localASN1Sequence3.ϲ(k)).eM();
          k += 1;
        }
        j += 1;
      }
      localASN1Sequence2 = (ASN1Sequence)localASN1Sequence1.ϲ(2);
      arrayOfByte[i] = new byte[localASN1Sequence2.size()][];
      j = 0;
      while (j < localASN1Sequence2.size())
      {
        arrayOfByte[i][j] = ((ASN1OctetString)localASN1Sequence2.ϲ(j)).eM();
        j += 1;
      }
      arrayOfByte1[i] = ((ASN1OctetString)localASN1Sequence1.ϲ(3)).eM();
      i += 1;
    }
    int j = this.bel.length - 1;
    this.bem = new Layer[j];
    i = 0;
    while (i < j)
    {
      localObject2 = new Layer(this.bel[i], this.bel[(i + 1)], RainbowUtil.ˊ(paramASN1Sequence[i]), RainbowUtil.ˊ(localObject1[i]), RainbowUtil.ˎ(arrayOfByte[i]), RainbowUtil.ﻧ(arrayOfByte1[i]));
      this.bem[i] = localObject2;
      i += 1;
    }
  }
  
  public RainbowPrivateKey(short[][] paramArrayOfShort1, short[] paramArrayOfShort2, short[][] paramArrayOfShort3, short[] paramArrayOfShort4, int[] paramArrayOfInt, Layer[] paramArrayOfLayer)
  {
    this.aek = new ASN1Integer(1L);
    this.beh = RainbowUtil.ˋ(paramArrayOfShort1);
    this.bei = RainbowUtil.ˏ(paramArrayOfShort2);
    this.bej = RainbowUtil.ˋ(paramArrayOfShort3);
    this.bek = RainbowUtil.ˏ(paramArrayOfShort4);
    this.bel = RainbowUtil.ՙ(paramArrayOfInt);
    this.bem = paramArrayOfLayer;
  }
  
  public static RainbowPrivateKey Ȉ(Object paramObject)
  {
    if ((paramObject instanceof RainbowPrivateKey)) {
      return (RainbowPrivateKey)paramObject;
    }
    if (paramObject != null) {
      return new RainbowPrivateKey(ASN1Sequence.ﹾ(paramObject));
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
    ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
    int i = 0;
    while (i < this.beh.length)
    {
      localASN1EncodableVector2.ˊ(new DEROctetString(this.beh[i]));
      i += 1;
    }
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    localASN1EncodableVector2 = new ASN1EncodableVector();
    localASN1EncodableVector2.ˊ(new DEROctetString(this.bei));
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    localASN1EncodableVector2 = new ASN1EncodableVector();
    i = 0;
    while (i < this.bej.length)
    {
      localASN1EncodableVector2.ˊ(new DEROctetString(this.bej[i]));
      i += 1;
    }
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    localASN1EncodableVector2 = new ASN1EncodableVector();
    localASN1EncodableVector2.ˊ(new DEROctetString(this.bek));
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    localASN1EncodableVector2 = new ASN1EncodableVector();
    localASN1EncodableVector2.ˊ(new DEROctetString(this.bel));
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    localASN1EncodableVector2 = new ASN1EncodableVector();
    i = 0;
    while (i < this.bem.length)
    {
      ASN1EncodableVector localASN1EncodableVector3 = new ASN1EncodableVector();
      Object localObject = RainbowUtil.ˋ(this.bem[i].rL());
      ASN1EncodableVector localASN1EncodableVector4 = new ASN1EncodableVector();
      int j = 0;
      ASN1EncodableVector localASN1EncodableVector5;
      int k;
      while (j < localObject.length)
      {
        localASN1EncodableVector5 = new ASN1EncodableVector();
        k = 0;
        while (k < localObject[j].length)
        {
          localASN1EncodableVector5.ˊ(new DEROctetString(localObject[j][k]));
          k += 1;
        }
        localASN1EncodableVector4.ˊ(new DERSequence(localASN1EncodableVector5));
        j += 1;
      }
      localASN1EncodableVector3.ˊ(new DERSequence(localASN1EncodableVector4));
      localObject = RainbowUtil.ˋ(this.bem[i].rM());
      localASN1EncodableVector4 = new ASN1EncodableVector();
      j = 0;
      while (j < localObject.length)
      {
        localASN1EncodableVector5 = new ASN1EncodableVector();
        k = 0;
        while (k < localObject[j].length)
        {
          localASN1EncodableVector5.ˊ(new DEROctetString(localObject[j][k]));
          k += 1;
        }
        localASN1EncodableVector4.ˊ(new DERSequence(localASN1EncodableVector5));
        j += 1;
      }
      localASN1EncodableVector3.ˊ(new DERSequence(localASN1EncodableVector4));
      localObject = RainbowUtil.ˋ(this.bem[i].rN());
      localASN1EncodableVector4 = new ASN1EncodableVector();
      j = 0;
      while (j < localObject.length)
      {
        localASN1EncodableVector4.ˊ(new DEROctetString(localObject[j]));
        j += 1;
      }
      localASN1EncodableVector3.ˊ(new DERSequence(localASN1EncodableVector4));
      localASN1EncodableVector3.ˊ(new DEROctetString(RainbowUtil.ˏ(this.bem[i].rO())));
      localASN1EncodableVector2.ˊ(new DERSequence(localASN1EncodableVector3));
      i += 1;
    }
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    return new DERSequence(localASN1EncodableVector1);
  }
  
  public short[][] qA()
  {
    return RainbowUtil.ˎ(this.bej);
  }
  
  public Layer[] qB()
  {
    return this.bem;
  }
  
  public int[] qC()
  {
    return RainbowUtil.ﺑ(this.bel);
  }
  
  public short[][] qx()
  {
    return RainbowUtil.ˎ(this.beh);
  }
  
  public short[] qy()
  {
    return RainbowUtil.ﻧ(this.bei);
  }
  
  public short[] qz()
  {
    return RainbowUtil.ﻧ(this.bek);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.asn1.RainbowPrivateKey
 * JD-Core Version:    0.7.0.1
 */