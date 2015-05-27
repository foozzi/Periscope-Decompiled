package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.util.Arrays;

public class ASN1ObjectIdentifier
  extends ASN1Primitive
{
  private static ASN1ObjectIdentifier[][] aar = new ASN1ObjectIdentifier[256][];
  String TF;
  private byte[] aaq;
  
  public ASN1ObjectIdentifier(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("'identifier' cannot be null");
    }
    if (!İ(paramString)) {
      throw new IllegalArgumentException("string " + paramString + " not an OID");
    }
    this.TF = paramString;
  }
  
  ASN1ObjectIdentifier(ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
  {
    if (!ˏ(paramString, 0)) {
      throw new IllegalArgumentException("string " + paramString + " not a valid OID branch");
    }
    this.TF = (paramASN1ObjectIdentifier.getId() + "." + paramString);
  }
  
  ASN1ObjectIdentifier(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    long l1 = 0L;
    Object localObject1 = null;
    int i = 1;
    int k = 0;
    while (k != paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[k] & 0xFF;
      if (l1 <= 72057594037927808L)
      {
        l1 += (j & 0x7F);
        if ((j & 0x80) == 0)
        {
          long l2 = l1;
          j = i;
          if (i != 0)
          {
            if (l1 < 40L)
            {
              localStringBuffer.append('0');
            }
            else if (l1 < 80L)
            {
              localStringBuffer.append('1');
              l1 -= 40L;
            }
            else
            {
              localStringBuffer.append('2');
              l1 -= 80L;
            }
            j = 0;
            l2 = l1;
          }
          localStringBuffer.append('.');
          localStringBuffer.append(l2);
          l1 = 0L;
          i = j;
        }
        else
        {
          l1 <<= 7;
        }
      }
      else
      {
        Object localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = BigInteger.valueOf(l1);
        }
        localObject2 = ((BigInteger)localObject2).or(BigInteger.valueOf(j & 0x7F));
        if ((j & 0x80) == 0)
        {
          localObject1 = localObject2;
          j = i;
          if (i != 0)
          {
            localStringBuffer.append('2');
            localObject1 = ((BigInteger)localObject2).subtract(BigInteger.valueOf(80L));
            j = 0;
          }
          localStringBuffer.append('.');
          localStringBuffer.append(localObject1);
          localObject1 = null;
          l1 = 0L;
          i = j;
        }
        else
        {
          localObject1 = ((BigInteger)localObject2).shiftLeft(7);
        }
      }
      k += 1;
    }
    this.TF = localStringBuffer.toString();
    this.aaq = Arrays.І(paramArrayOfByte);
  }
  
  private static boolean İ(String paramString)
  {
    if ((paramString.length() < 3) || (paramString.charAt(1) != '.')) {
      return false;
    }
    int i = paramString.charAt(0);
    if ((i < 48) || (i > 50)) {
      return false;
    }
    return ˏ(paramString, 2);
  }
  
  static ASN1ObjectIdentifier ʹ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < 3) {
      return new ASN1ObjectIdentifier(paramArrayOfByte);
    }
    int j = paramArrayOfByte[(paramArrayOfByte.length - 2)] & 0xFF;
    int i = paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0x7F;
    Object localObject2;
    synchronized (aar)
    {
      localObject2 = aar[j];
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = aar;
        localObject1 = new ASN1ObjectIdentifier[''];
        localObject2[j] = localObject1;
      }
      localObject2 = localObject1[i];
      if (localObject2 == null)
      {
        paramArrayOfByte = new ASN1ObjectIdentifier(paramArrayOfByte);
        localObject1[i] = paramArrayOfByte;
        return paramArrayOfByte;
      }
      boolean bool = Arrays.ﹺ(paramArrayOfByte, ((ASN1ObjectIdentifier)localObject2).eK());
      if (bool) {
        return localObject2;
      }
      j = j + 1 & 0xFF;
      localObject2 = aar[j];
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = aar;
        localObject1 = new ASN1ObjectIdentifier[''];
        localObject2[j] = localObject1;
      }
      localObject2 = localObject1[i];
      if (localObject2 == null)
      {
        paramArrayOfByte = new ASN1ObjectIdentifier(paramArrayOfByte);
        localObject1[i] = paramArrayOfByte;
        return paramArrayOfByte;
      }
      bool = Arrays.ﹺ(paramArrayOfByte, ((ASN1ObjectIdentifier)localObject2).eK());
      if (bool) {
        return localObject2;
      }
      i = i + 1 & 0x7F;
      localObject2 = localObject1[i];
      if (localObject2 == null)
      {
        paramArrayOfByte = new ASN1ObjectIdentifier(paramArrayOfByte);
        localObject1[i] = paramArrayOfByte;
        return paramArrayOfByte;
      }
    }
    if (Arrays.ﹺ(paramArrayOfByte, ((ASN1ObjectIdentifier)localObject2).eK())) {
      return localObject2;
    }
    return new ASN1ObjectIdentifier(paramArrayOfByte);
  }
  
  private void ˊ(ByteArrayOutputStream paramByteArrayOutputStream)
  {
    OIDTokenizer localOIDTokenizer = new OIDTokenizer(this.TF);
    int i = Integer.parseInt(localOIDTokenizer.nextToken()) * 40;
    String str = localOIDTokenizer.nextToken();
    if (str.length() <= 18) {
      ˊ(paramByteArrayOutputStream, i + Long.parseLong(str));
    } else {
      ˊ(paramByteArrayOutputStream, new BigInteger(str).add(BigInteger.valueOf(i)));
    }
    while (localOIDTokenizer.hasMoreTokens())
    {
      str = localOIDTokenizer.nextToken();
      if (str.length() <= 18) {
        ˊ(paramByteArrayOutputStream, Long.parseLong(str));
      } else {
        ˊ(paramByteArrayOutputStream, new BigInteger(str));
      }
    }
  }
  
  private void ˊ(ByteArrayOutputStream paramByteArrayOutputStream, long paramLong)
  {
    byte[] arrayOfByte = new byte[9];
    int i = 8;
    arrayOfByte[8] = ((byte)((int)paramLong & 0x7F));
    while (paramLong >= 128L)
    {
      paramLong >>= 7;
      i -= 1;
      arrayOfByte[i] = ((byte)((int)paramLong & 0x7F | 0x80));
    }
    paramByteArrayOutputStream.write(arrayOfByte, i, 9 - i);
  }
  
  private void ˊ(ByteArrayOutputStream paramByteArrayOutputStream, BigInteger paramBigInteger)
  {
    int j = (paramBigInteger.bitLength() + 6) / 7;
    if (j == 0)
    {
      paramByteArrayOutputStream.write(0);
      return;
    }
    byte[] arrayOfByte = new byte[j];
    int i = j - 1;
    while (i >= 0)
    {
      arrayOfByte[i] = ((byte)(paramBigInteger.intValue() & 0x7F | 0x80));
      paramBigInteger = paramBigInteger.shiftRight(7);
      i -= 1;
    }
    i = j - 1;
    arrayOfByte[i] = ((byte)(arrayOfByte[i] & 0x7F));
    paramByteArrayOutputStream.write(arrayOfByte, 0, arrayOfByte.length);
  }
  
  public static ASN1ObjectIdentifier ˎ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    ASN1Primitive localASN1Primitive = paramASN1TaggedObject.eY();
    if ((paramBoolean) || ((localASN1Primitive instanceof ASN1ObjectIdentifier))) {
      return ﹴ(localASN1Primitive);
    }
    return ʹ(ASN1OctetString.ﹸ(paramASN1TaggedObject.eY()).eM());
  }
  
  private static boolean ˏ(String paramString, int paramInt)
  {
    boolean bool = false;
    int i = paramString.length();
    for (;;)
    {
      i -= 1;
      if (i < paramInt) {
        break label62;
      }
      int j = paramString.charAt(i);
      if ((48 <= j) && (j <= 57))
      {
        bool = true;
      }
      else
      {
        if (j != 46) {
          break;
        }
        if (!bool) {
          return false;
        }
        bool = false;
      }
    }
    return false;
    label62:
    return bool;
  }
  
  public static ASN1ObjectIdentifier ﹴ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ASN1ObjectIdentifier))) {
      return (ASN1ObjectIdentifier)paramObject;
    }
    if (((paramObject instanceof ASN1Encodable)) && ((((ASN1Encodable)paramObject).ez() instanceof ASN1ObjectIdentifier))) {
      return (ASN1ObjectIdentifier)((ASN1Encodable)paramObject).ez();
    }
    if ((paramObject instanceof byte[]))
    {
      paramObject = (byte[])paramObject;
      try
      {
        paramObject = (ASN1ObjectIdentifier)ՙ(paramObject);
        return paramObject;
      }
      catch (IOException paramObject)
      {
        throw new IllegalArgumentException("failed to construct object identifier from byte[]: " + paramObject.getMessage());
      }
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  protected byte[] eK()
  {
    try
    {
      if (this.aaq == null)
      {
        localObject1 = new ByteArrayOutputStream();
        ˊ((ByteArrayOutputStream)localObject1);
        this.aaq = ((ByteArrayOutputStream)localObject1).toByteArray();
      }
      Object localObject1 = this.aaq;
      return localObject1;
    }
    finally {}
  }
  
  boolean ex()
  {
    return false;
  }
  
  int ey()
  {
    int i = eK().length;
    return StreamUtil.х(i) + 1 + i;
  }
  
  public String getId()
  {
    return this.TF;
  }
  
  public int hashCode()
  {
    return this.TF.hashCode();
  }
  
  public String toString()
  {
    return getId();
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    byte[] arrayOfByte = eK();
    paramASN1OutputStream.write(6);
    paramASN1OutputStream.Ί(arrayOfByte.length);
    paramASN1OutputStream.write(arrayOfByte);
  }
  
  public boolean ˊ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    String str = getId();
    paramASN1ObjectIdentifier = paramASN1ObjectIdentifier.getId();
    return (str.length() > paramASN1ObjectIdentifier.length()) && (str.charAt(paramASN1ObjectIdentifier.length()) == '.') && (str.startsWith(paramASN1ObjectIdentifier));
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof ASN1ObjectIdentifier)) {
      return false;
    }
    return this.TF.equals(((ASN1ObjectIdentifier)paramASN1Primitive).TF);
  }
  
  public ASN1ObjectIdentifier ﾆ(String paramString)
  {
    return new ASN1ObjectIdentifier(this, paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1ObjectIdentifier
 * JD-Core Version:    0.7.0.1
 */