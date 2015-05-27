package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.spongycastle.util.Arrays;

public class DERApplicationSpecific
  extends ASN1Primitive
{
  private final boolean aaY;
  private final byte[] aaZ;
  private final int tag;
  
  public DERApplicationSpecific(int paramInt, ASN1EncodableVector paramASN1EncodableVector)
  {
    this.tag = paramInt;
    this.aaY = true;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramInt = 0;
    while (paramInt != paramASN1EncodableVector.size())
    {
      try
      {
        localByteArrayOutputStream.write(((ASN1Object)paramASN1EncodableVector.ʱ(paramInt)).getEncoded("DER"));
      }
      catch (IOException paramASN1EncodableVector)
      {
        throw new ASN1ParsingException("malformed object: " + paramASN1EncodableVector, paramASN1EncodableVector);
      }
      paramInt += 1;
    }
    this.aaZ = localByteArrayOutputStream.toByteArray();
  }
  
  public DERApplicationSpecific(boolean paramBoolean, int paramInt, ASN1Encodable paramASN1Encodable)
  {
    Object localObject = paramASN1Encodable.ez();
    paramASN1Encodable = ((ASN1Primitive)localObject).getEncoded("DER");
    boolean bool;
    if ((paramBoolean) || ((localObject instanceof ASN1Set)) || ((localObject instanceof ASN1Sequence))) {
      bool = true;
    } else {
      bool = false;
    }
    this.aaY = bool;
    this.tag = paramInt;
    if (paramBoolean)
    {
      this.aaZ = paramASN1Encodable;
      return;
    }
    paramInt = י(paramASN1Encodable);
    localObject = new byte[paramASN1Encodable.length - paramInt];
    System.arraycopy(paramASN1Encodable, paramInt, localObject, 0, localObject.length);
    this.aaZ = ((byte[])localObject);
  }
  
  DERApplicationSpecific(boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    this.aaY = paramBoolean;
    this.tag = paramInt;
    this.aaZ = paramArrayOfByte;
  }
  
  private byte[] ˋ(int paramInt, byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte[0];
    int i = 1;
    if ((j & 0x1F) == 31)
    {
      j = 0;
      i = 1 + 1;
      int m = paramArrayOfByte[1] & 0xFF;
      int k = m;
      if ((m & 0x7F) == 0) {
        throw new ASN1ParsingException("corrupted stream - invalid high tag number found");
      }
      while ((k >= 0) && ((k & 0x80) != 0))
      {
        j = (j | k & 0x7F) << 7;
        k = i + 1;
        m = paramArrayOfByte[i] & 0xFF;
        i = k;
        k = m;
      }
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte.length - i + 1];
    System.arraycopy(paramArrayOfByte, i, arrayOfByte, 1, arrayOfByte.length - 1);
    arrayOfByte[0] = ((byte)paramInt);
    return arrayOfByte;
  }
  
  private int י(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte[1] & 0xFF;
    if (i == 128) {
      return 2;
    }
    if (i > 127)
    {
      i &= 0x7F;
      if (i > 4) {
        throw new IllegalStateException("DER length more than 4 bytes: " + i);
      }
      return i + 2;
    }
    return 2;
  }
  
  public boolean ex()
  {
    return this.aaY;
  }
  
  int ey()
  {
    return StreamUtil.ј(this.tag) + StreamUtil.х(this.aaZ.length) + this.aaZ.length;
  }
  
  public byte[] fd()
  {
    return this.aaZ;
  }
  
  public int fe()
  {
    return this.tag;
  }
  
  public int hashCode()
  {
    int i;
    if (this.aaY) {
      i = 1;
    } else {
      i = 0;
    }
    return i ^ this.tag ^ Arrays.hashCode(this.aaZ);
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    int i = 64;
    if (this.aaY) {
      i = 96;
    }
    paramASN1OutputStream.ˊ(i, this.tag, this.aaZ);
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof DERApplicationSpecific)) {
      return false;
    }
    paramASN1Primitive = (DERApplicationSpecific)paramASN1Primitive;
    return (this.aaY == paramASN1Primitive.aaY) && (this.tag == paramASN1Primitive.tag) && (Arrays.ﹺ(this.aaZ, paramASN1Primitive.aaZ));
  }
  
  public ASN1Primitive Ј(int paramInt)
  {
    if (paramInt >= 31) {
      throw new IOException("unsupported tag number");
    }
    byte[] arrayOfByte1 = getEncoded();
    byte[] arrayOfByte2 = ˋ(paramInt, arrayOfByte1);
    if ((arrayOfByte1[0] & 0x20) != 0) {
      arrayOfByte2[0] = ((byte)(arrayOfByte2[0] | 0x20));
    }
    return new ASN1InputStream(arrayOfByte2).eH();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERApplicationSpecific
 * JD-Core Version:    0.7.0.1
 */