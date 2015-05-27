package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.io.Streams;

public class DERBitString
  extends ASN1Primitive
  implements ASN1String
{
  private static final char[] abb = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  protected int abc;
  public byte[] fw;
  
  public DERBitString(int paramInt)
  {
    this.fw = getBytes(paramInt);
    this.abc = с(paramInt);
  }
  
  public DERBitString(ASN1Encodable paramASN1Encodable)
  {
    this.fw = paramASN1Encodable.ez().getEncoded("DER");
    this.abc = 0;
  }
  
  public DERBitString(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, 0);
  }
  
  public DERBitString(byte[] paramArrayOfByte, int paramInt)
  {
    this.fw = paramArrayOfByte;
    this.abc = paramInt;
  }
  
  protected static byte[] getBytes(int paramInt)
  {
    int i = 4;
    int j = 3;
    while ((j >= 1) && ((255 << j * 8 & paramInt) == 0))
    {
      i -= 1;
      j -= 1;
    }
    byte[] arrayOfByte = new byte[i];
    j = 0;
    while (j < i)
    {
      arrayOfByte[j] = ((byte)(paramInt >> j * 8 & 0xFF));
      j += 1;
    }
    return arrayOfByte;
  }
  
  public static DERBitString ʸ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof DERBitString))) {
      return (DERBitString)paramObject;
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  public static DERBitString ʽ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    paramASN1TaggedObject = paramASN1TaggedObject.eY();
    if ((paramBoolean) || ((paramASN1TaggedObject instanceof DERBitString))) {
      return ʸ(paramASN1TaggedObject);
    }
    return ٴ(((ASN1OctetString)paramASN1TaggedObject).eM());
  }
  
  static DERBitString ˊ(int paramInt, InputStream paramInputStream)
  {
    if (paramInt < 1) {
      throw new IllegalArgumentException("truncated BIT STRING detected");
    }
    int i = paramInputStream.read();
    byte[] arrayOfByte = new byte[paramInt - 1];
    if ((arrayOfByte.length != 0) && (Streams.ˎ(paramInputStream, arrayOfByte) != arrayOfByte.length)) {
      throw new EOFException("EOF encountered in middle of BIT STRING");
    }
    return new DERBitString(arrayOfByte, i);
  }
  
  protected static int с(int paramInt)
  {
    int k = 0;
    int j = 3;
    int i;
    for (;;)
    {
      i = k;
      if (j < 0) {
        break;
      }
      if (j != 0)
      {
        if (paramInt >> j * 8 != 0)
        {
          i = paramInt >> j * 8 & 0xFF;
          break;
        }
      }
      else if (paramInt != 0)
      {
        i = paramInt & 0xFF;
        break;
      }
      j -= 1;
    }
    if (i == 0) {
      return 7;
    }
    paramInt = 1;
    for (;;)
    {
      j = i << 1;
      i = j;
      if ((j & 0xFF) == 0) {
        break;
      }
      paramInt += 1;
    }
    return 8 - paramInt;
  }
  
  static DERBitString ٴ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < 1) {
      throw new IllegalArgumentException("truncated BIT STRING detected");
    }
    int i = paramArrayOfByte[0];
    byte[] arrayOfByte = new byte[paramArrayOfByte.length - 1];
    if (arrayOfByte.length != 0) {
      System.arraycopy(paramArrayOfByte, 1, arrayOfByte, 0, paramArrayOfByte.length - 1);
    }
    return new DERBitString(arrayOfByte, i);
  }
  
  boolean ex()
  {
    return false;
  }
  
  int ey()
  {
    return StreamUtil.х(this.fw.length + 1) + 1 + this.fw.length + 1;
  }
  
  public int ff()
  {
    return this.abc;
  }
  
  public byte[] getBytes()
  {
    return this.fw;
  }
  
  public String getString()
  {
    StringBuffer localStringBuffer = new StringBuffer("#");
    Object localObject = new ByteArrayOutputStream();
    ASN1OutputStream localASN1OutputStream = new ASN1OutputStream((OutputStream)localObject);
    try
    {
      localASN1OutputStream.ˋ(this);
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("internal error encoding BitString");
    }
    localObject = ((ByteArrayOutputStream)localObject).toByteArray();
    int i = 0;
    while (i != localObject.length)
    {
      localIOException.append(abb[(localObject[i] >>> 4 & 0xF)]);
      localIOException.append(abb[(localObject[i] & 0xF)]);
      i += 1;
    }
    return localIOException.toString();
  }
  
  public int hashCode()
  {
    return this.abc ^ Arrays.hashCode(this.fw);
  }
  
  public int intValue()
  {
    int j = 0;
    int i = 0;
    while ((i != this.fw.length) && (i != 4))
    {
      j |= (this.fw[i] & 0xFF) << i * 8;
      i += 1;
    }
    return j;
  }
  
  public String toString()
  {
    return getString();
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    byte[] arrayOfByte = new byte[getBytes().length + 1];
    arrayOfByte[0] = ((byte)ff());
    System.arraycopy(getBytes(), 0, arrayOfByte, 1, arrayOfByte.length - 1);
    paramASN1OutputStream.ˊ(3, arrayOfByte);
  }
  
  protected boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof DERBitString)) {
      return false;
    }
    paramASN1Primitive = (DERBitString)paramASN1Primitive;
    return (this.abc == paramASN1Primitive.abc) && (Arrays.ﹺ(this.fw, paramASN1Primitive.fw));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERBitString
 * JD-Core Version:    0.7.0.1
 */