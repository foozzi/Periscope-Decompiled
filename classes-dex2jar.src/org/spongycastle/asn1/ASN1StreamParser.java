package org.spongycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

public class ASN1StreamParser
{
  private final InputStream aaA;
  private final int aaB;
  private final byte[][] aap;
  
  public ASN1StreamParser(InputStream paramInputStream)
  {
    this(paramInputStream, StreamUtil.ʾ(paramInputStream));
  }
  
  public ASN1StreamParser(InputStream paramInputStream, int paramInt)
  {
    this.aaA = paramInputStream;
    this.aaB = paramInt;
    this.aap = new byte[11][];
  }
  
  private void ᕽ(boolean paramBoolean)
  {
    if ((this.aaA instanceof IndefiniteLengthInputStream)) {
      ((IndefiniteLengthInputStream)this.aaA).ᘁ(paramBoolean);
    }
  }
  
  public ASN1Encodable eU()
  {
    int i = this.aaA.read();
    if (i == -1) {
      return null;
    }
    ᕽ(false);
    int j = ASN1InputStream.ˎ(this.aaA, i);
    boolean bool;
    if ((i & 0x20) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    int k = ASN1InputStream.ˏ(this.aaA, this.aaB);
    if (k < 0)
    {
      if (!bool) {
        throw new IOException("indefinite length primitive encoding encountered");
      }
      localObject = new ASN1StreamParser(new IndefiniteLengthInputStream(this.aaA, this.aaB), this.aaB);
      if ((i & 0x40) != 0) {
        return new BERApplicationSpecificParser(j, (ASN1StreamParser)localObject);
      }
      if ((i & 0x80) != 0) {
        return new BERTaggedObjectParser(true, j, (ASN1StreamParser)localObject);
      }
      return ((ASN1StreamParser)localObject).ϳ(j);
    }
    Object localObject = new DefiniteLengthInputStream(this.aaA, k);
    if ((i & 0x40) != 0) {
      return new DERApplicationSpecific(bool, j, ((DefiniteLengthInputStream)localObject).toByteArray());
    }
    if ((i & 0x80) != 0) {
      return new BERTaggedObjectParser(bool, j, new ASN1StreamParser((InputStream)localObject));
    }
    if (bool)
    {
      switch (j)
      {
      default: 
        break;
      case 4: 
        return new BEROctetStringParser(new ASN1StreamParser((InputStream)localObject));
      case 16: 
        return new DERSequenceParser(new ASN1StreamParser((InputStream)localObject));
      case 17: 
        return new DERSetParser(new ASN1StreamParser((InputStream)localObject));
      case 8: 
        return new DERExternalParser(new ASN1StreamParser((InputStream)localObject));
      }
      throw new IOException("unknown tag " + j + " encountered");
    }
    switch (j)
    {
    default: 
      break;
    case 4: 
      return new DEROctetStringParser((DefiniteLengthInputStream)localObject);
    }
    try
    {
      localObject = ASN1InputStream.ˊ(j, (DefiniteLengthInputStream)localObject, this.aap);
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new ASN1Exception("corrupted stream detected", localIllegalArgumentException);
    }
  }
  
  ASN1EncodableVector eV()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    for (;;)
    {
      ASN1Encodable localASN1Encodable = eU();
      if (localASN1Encodable == null) {
        break;
      }
      if ((localASN1Encodable instanceof InMemoryRepresentable)) {
        localASN1EncodableVector.ˊ(((InMemoryRepresentable)localASN1Encodable).eN());
      } else {
        localASN1EncodableVector.ˊ(localASN1Encodable.ez());
      }
    }
    return localASN1EncodableVector;
  }
  
  ASN1Primitive ˋ(boolean paramBoolean, int paramInt)
  {
    if (!paramBoolean) {
      return new DERTaggedObject(false, paramInt, new DEROctetString(((DefiniteLengthInputStream)this.aaA).toByteArray()));
    }
    ASN1EncodableVector localASN1EncodableVector = eV();
    if ((this.aaA instanceof IndefiniteLengthInputStream))
    {
      if (localASN1EncodableVector.size() == 1) {
        return new BERTaggedObject(true, paramInt, localASN1EncodableVector.ʱ(0));
      }
      return new BERTaggedObject(false, paramInt, BERFactory.ˊ(localASN1EncodableVector));
    }
    if (localASN1EncodableVector.size() == 1) {
      return new DERTaggedObject(true, paramInt, localASN1EncodableVector.ʱ(0));
    }
    return new DERTaggedObject(false, paramInt, DERFactory.ˋ(localASN1EncodableVector));
  }
  
  ASN1Encodable ϳ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 8: 
      return new DERExternalParser(this);
    case 4: 
      return new BEROctetStringParser(this);
    case 16: 
      return new BERSequenceParser(this);
    case 17: 
      return new BERSetParser(this);
    }
    throw new ASN1Exception("unknown BER object encountered: 0x" + Integer.toHexString(paramInt));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1StreamParser
 * JD-Core Version:    0.7.0.1
 */