package org.spongycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.io.Streams;

public class ASN1InputStream
  extends FilterInputStream
  implements BERTags
{
  private final boolean aao;
  private final byte[][] aap;
  private final int limit;
  
  public ASN1InputStream(InputStream paramInputStream)
  {
    this(paramInputStream, StreamUtil.ʾ(paramInputStream));
  }
  
  public ASN1InputStream(InputStream paramInputStream, int paramInt)
  {
    this(paramInputStream, paramInt, false);
  }
  
  public ASN1InputStream(InputStream paramInputStream, int paramInt, boolean paramBoolean)
  {
    super(paramInputStream);
    this.limit = paramInt;
    this.aao = paramBoolean;
    this.aap = new byte[11][];
  }
  
  public ASN1InputStream(InputStream paramInputStream, boolean paramBoolean)
  {
    this(paramInputStream, StreamUtil.ʾ(paramInputStream), paramBoolean);
  }
  
  public ASN1InputStream(byte[] paramArrayOfByte)
  {
    this(new ByteArrayInputStream(paramArrayOfByte), paramArrayOfByte.length);
  }
  
  public ASN1InputStream(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    this(new ByteArrayInputStream(paramArrayOfByte), paramArrayOfByte.length, paramBoolean);
  }
  
  static ASN1Primitive ˊ(int paramInt, DefiniteLengthInputStream paramDefiniteLengthInputStream, byte[][] paramArrayOfByte)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 3: 
      return DERBitString.ˊ(paramDefiniteLengthInputStream.getRemaining(), paramDefiniteLengthInputStream);
    case 30: 
      return new DERBMPString(ˋ(paramDefiniteLengthInputStream));
    case 1: 
      return ASN1Boolean.ﹳ(ˊ(paramDefiniteLengthInputStream, paramArrayOfByte));
    case 10: 
      return ASN1Enumerated.ﾞ(ˊ(paramDefiniteLengthInputStream, paramArrayOfByte));
    case 24: 
      return new ASN1GeneralizedTime(paramDefiniteLengthInputStream.toByteArray());
    case 27: 
      return new DERGeneralString(paramDefiniteLengthInputStream.toByteArray());
    case 22: 
      return new DERIA5String(paramDefiniteLengthInputStream.toByteArray());
    case 2: 
      return new ASN1Integer(paramDefiniteLengthInputStream.toByteArray(), false);
    case 5: 
      return DERNull.abj;
    case 18: 
      return new DERNumericString(paramDefiniteLengthInputStream.toByteArray());
    case 6: 
      return ASN1ObjectIdentifier.ʹ(ˊ(paramDefiniteLengthInputStream, paramArrayOfByte));
    case 4: 
      return new DEROctetString(paramDefiniteLengthInputStream.toByteArray());
    case 19: 
      return new DERPrintableString(paramDefiniteLengthInputStream.toByteArray());
    case 20: 
      return new DERT61String(paramDefiniteLengthInputStream.toByteArray());
    case 28: 
      return new DERUniversalString(paramDefiniteLengthInputStream.toByteArray());
    case 23: 
      return new ASN1UTCTime(paramDefiniteLengthInputStream.toByteArray());
    case 12: 
      return new DERUTF8String(paramDefiniteLengthInputStream.toByteArray());
    case 26: 
      return new DERVisibleString(paramDefiniteLengthInputStream.toByteArray());
    }
    throw new IOException("unknown tag " + paramInt + " encountered");
  }
  
  private static byte[] ˊ(DefiniteLengthInputStream paramDefiniteLengthInputStream, byte[][] paramArrayOfByte)
  {
    int i = paramDefiniteLengthInputStream.getRemaining();
    if (paramDefiniteLengthInputStream.getRemaining() < paramArrayOfByte.length)
    {
      byte[] arrayOfByte2 = paramArrayOfByte[i];
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 == null)
      {
        arrayOfByte1 = new byte[i];
        paramArrayOfByte[i] = arrayOfByte1;
      }
      Streams.ˎ(paramDefiniteLengthInputStream, arrayOfByte1);
      return arrayOfByte1;
    }
    return paramDefiniteLengthInputStream.toByteArray();
  }
  
  private static char[] ˋ(DefiniteLengthInputStream paramDefiniteLengthInputStream)
  {
    int k = paramDefiniteLengthInputStream.getRemaining() / 2;
    char[] arrayOfChar = new char[k];
    int j;
    for (int i = 0; i < k; i = j)
    {
      int m = paramDefiniteLengthInputStream.read();
      if (m < 0) {
        return arrayOfChar;
      }
      int n = paramDefiniteLengthInputStream.read();
      if (n < 0) {
        return arrayOfChar;
      }
      j = i + 1;
      arrayOfChar[i] = ((char)(m << 8 | n & 0xFF));
    }
    return arrayOfChar;
  }
  
  static int ˎ(InputStream paramInputStream, int paramInt)
  {
    int i = paramInt & 0x1F;
    paramInt = i;
    if (i == 31)
    {
      paramInt = 0;
      int j = paramInputStream.read();
      i = j;
      if ((j & 0x7F) == 0) {
        throw new IOException("corrupted stream - invalid high tag number found");
      }
      while ((i >= 0) && ((i & 0x80) != 0))
      {
        paramInt = (paramInt | i & 0x7F) << 7;
        i = paramInputStream.read();
      }
      if (i < 0) {
        throw new EOFException("EOF found inside tag value.");
      }
      paramInt |= i & 0x7F;
    }
    return paramInt;
  }
  
  static int ˏ(InputStream paramInputStream, int paramInt)
  {
    int i = paramInputStream.read();
    if (i < 0) {
      throw new EOFException("EOF found when length expected");
    }
    if (i == 128) {
      return -1;
    }
    int j = i;
    if (i > 127)
    {
      int k = i & 0x7F;
      if (k > 4) {
        throw new IOException("DER length more than 4 bytes: " + k);
      }
      i = 0;
      j = 0;
      while (j < k)
      {
        int m = paramInputStream.read();
        if (m < 0) {
          throw new EOFException("EOF found reading length");
        }
        i = (i << 8) + m;
        j += 1;
      }
      if (i < 0) {
        throw new IOException("corrupted stream - negative length found");
      }
      j = i;
      if (i >= paramInt) {
        throw new IOException("corrupted stream - out of bounds length found");
      }
    }
    return j;
  }
  
  int eE()
  {
    return this.limit;
  }
  
  protected int eF()
  {
    return ˏ(this, this.limit);
  }
  
  ASN1EncodableVector eG()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    for (;;)
    {
      ASN1Primitive localASN1Primitive = eH();
      if (localASN1Primitive == null) {
        break;
      }
      localASN1EncodableVector.ˊ(localASN1Primitive);
    }
    return localASN1EncodableVector;
  }
  
  public ASN1Primitive eH()
  {
    int j = read();
    if (j <= 0)
    {
      if (j == 0) {
        throw new IOException("unexpected end-of-contents marker");
      }
      return null;
    }
    int k = ˎ(this, j);
    int i;
    if ((j & 0x20) != 0) {
      i = 1;
    } else {
      i = 0;
    }
    int m = eF();
    Object localObject;
    if (m < 0)
    {
      if (i == 0) {
        throw new IOException("indefinite length primitive encoding encountered");
      }
      localObject = new ASN1StreamParser(new IndefiniteLengthInputStream(this, this.limit), this.limit);
      if ((j & 0x40) != 0) {
        return new BERApplicationSpecificParser(k, (ASN1StreamParser)localObject).eN();
      }
      if ((j & 0x80) != 0) {
        return new BERTaggedObjectParser(true, k, (ASN1StreamParser)localObject).eN();
      }
      switch (k)
      {
      default: 
        break;
      case 4: 
        return new BEROctetStringParser((ASN1StreamParser)localObject).eN();
      case 16: 
        return new BERSequenceParser((ASN1StreamParser)localObject).eN();
      case 17: 
        return new BERSetParser((ASN1StreamParser)localObject).eN();
      case 8: 
        return new DERExternalParser((ASN1StreamParser)localObject).eN();
      }
      throw new IOException("unknown BER object encountered");
    }
    try
    {
      localObject = ˉ(j, k, m);
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new ASN1Exception("corrupted stream detected", localIllegalArgumentException);
    }
  }
  
  protected ASN1Primitive ˉ(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool;
    if ((paramInt1 & 0x20) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    Object localObject = new DefiniteLengthInputStream(this, paramInt3);
    if ((paramInt1 & 0x40) != 0) {
      return new DERApplicationSpecific(bool, paramInt2, ((DefiniteLengthInputStream)localObject).toByteArray());
    }
    if ((paramInt1 & 0x80) != 0) {
      return new ASN1StreamParser((InputStream)localObject).ˋ(bool, paramInt2);
    }
    if (bool)
    {
      switch (paramInt2)
      {
      default: 
        break;
      case 4: 
        localObject = ˊ((DefiniteLengthInputStream)localObject);
        ASN1OctetString[] arrayOfASN1OctetString = new ASN1OctetString[((ASN1EncodableVector)localObject).size()];
        paramInt1 = 0;
        while (paramInt1 != arrayOfASN1OctetString.length)
        {
          arrayOfASN1OctetString[paramInt1] = ((ASN1OctetString)((ASN1EncodableVector)localObject).ʱ(paramInt1));
          paramInt1 += 1;
        }
        return new BEROctetString(arrayOfASN1OctetString);
      case 16: 
        if (this.aao) {
          return new LazyEncodedSequence(((DefiniteLengthInputStream)localObject).toByteArray());
        }
        return DERFactory.ˋ(ˊ((DefiniteLengthInputStream)localObject));
      case 17: 
        return DERFactory.ˎ(ˊ((DefiniteLengthInputStream)localObject));
      case 8: 
        return new DERExternal(ˊ((DefiniteLengthInputStream)localObject));
      }
      throw new IOException("unknown tag " + paramInt2 + " encountered");
    }
    return ˊ(paramInt2, (DefiniteLengthInputStream)localObject, this.aap);
  }
  
  ASN1EncodableVector ˊ(DefiniteLengthInputStream paramDefiniteLengthInputStream)
  {
    return new ASN1InputStream(paramDefiniteLengthInputStream).eG();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1InputStream
 * JD-Core Version:    0.7.0.1
 */