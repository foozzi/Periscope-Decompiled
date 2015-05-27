package org.spongycastle.asn1.x509;

import java.io.IOException;
import java.util.StringTokenizer;
import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.util.IPAddress;

public class GeneralName
  extends ASN1Object
  implements ASN1Choice
{
  private ASN1Encodable aaF;
  private int tag;
  
  public GeneralName(int paramInt, String paramString)
  {
    this.tag = paramInt;
    if ((paramInt == 1) || (paramInt == 2) || (paramInt == 6))
    {
      this.aaF = new DERIA5String(paramString);
      return;
    }
    if (paramInt == 8)
    {
      this.aaF = new ASN1ObjectIdentifier(paramString);
      return;
    }
    if (paramInt == 4)
    {
      this.aaF = new X500Name(paramString);
      return;
    }
    if (paramInt == 7)
    {
      paramString = า(paramString);
      if (paramString != null) {
        this.aaF = new DEROctetString(paramString);
      } else {
        throw new IllegalArgumentException("IP Address is invalid");
      }
      return;
    }
    throw new IllegalArgumentException("can't process String for tag: " + paramInt);
  }
  
  public GeneralName(int paramInt, ASN1Encodable paramASN1Encodable)
  {
    this.aaF = paramASN1Encodable;
    this.tag = paramInt;
  }
  
  public GeneralName(X500Name paramX500Name)
  {
    this.aaF = paramX500Name;
    this.tag = 4;
  }
  
  public GeneralName(X509Name paramX509Name)
  {
    this.aaF = X500Name.ᒾ(paramX509Name);
    this.tag = 4;
  }
  
  private void ˊ(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    int j = Integer.parseInt(paramString);
    int i = 0;
    while (i != j)
    {
      int k = i / 8 + paramInt;
      paramArrayOfByte[k] = ((byte)(paramArrayOfByte[k] | 1 << 7 - i % 8));
      i += 1;
    }
  }
  
  private void ˊ(int[] paramArrayOfInt, byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    while (i != paramArrayOfInt.length)
    {
      paramArrayOfByte[(i * 2 + paramInt)] = ((byte)(paramArrayOfInt[i] >> 8));
      paramArrayOfByte[(i * 2 + 1 + paramInt)] = ((byte)paramArrayOfInt[i]);
      i += 1;
    }
  }
  
  private void ˋ(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    paramString = new StringTokenizer(paramString, "./");
    int j;
    for (int i = 0; paramString.hasMoreTokens(); i = j)
    {
      j = i + 1;
      paramArrayOfByte[(i + paramInt)] = ((byte)Integer.parseInt(paramString.nextToken()));
    }
  }
  
  public static GeneralName ˌ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return ﻳ(ASN1TaggedObject.ʼ(paramASN1TaggedObject, true));
  }
  
  private byte[] า(String paramString)
  {
    int i;
    byte[] arrayOfByte;
    if ((IPAddress.ɪ(paramString)) || (IPAddress.ɾ(paramString)))
    {
      i = paramString.indexOf('/');
      if (i < 0)
      {
        arrayOfByte = new byte[16];
        ˊ(ᒃ(paramString), arrayOfByte, 0);
        return arrayOfByte;
      }
      arrayOfByte = new byte[32];
      ˊ(ᒃ(paramString.substring(0, i)), arrayOfByte, 0);
      paramString = paramString.substring(i + 1);
      if (paramString.indexOf(':') > 0) {
        paramString = ᒃ(paramString);
      } else {
        paramString = ᐥ(paramString);
      }
      ˊ(paramString, arrayOfByte, 16);
      return arrayOfByte;
    }
    if ((IPAddress.ɨ(paramString)) || (IPAddress.ȋ(paramString)))
    {
      i = paramString.indexOf('/');
      if (i < 0)
      {
        arrayOfByte = new byte[4];
        ˋ(paramString, arrayOfByte, 0);
        return arrayOfByte;
      }
      arrayOfByte = new byte[8];
      ˋ(paramString.substring(0, i), arrayOfByte, 0);
      paramString = paramString.substring(i + 1);
      if (paramString.indexOf('.') > 0)
      {
        ˋ(paramString, arrayOfByte, 4);
        return arrayOfByte;
      }
      ˊ(paramString, arrayOfByte, 4);
      return arrayOfByte;
    }
    return null;
  }
  
  private int[] ᐥ(String paramString)
  {
    int[] arrayOfInt = new int[8];
    int j = Integer.parseInt(paramString);
    int i = 0;
    while (i != j)
    {
      int k = i / 16;
      arrayOfInt[k] |= 1 << 15 - i % 16;
      i += 1;
    }
    return arrayOfInt;
  }
  
  private int[] ᒃ(String paramString)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ":", true);
    int i = 0;
    int[] arrayOfInt = new int[8];
    if ((paramString.charAt(0) == ':') && (paramString.charAt(1) == ':')) {
      localStringTokenizer.nextToken();
    }
    int k;
    for (int j = -1; localStringTokenizer.hasMoreTokens(); j = k)
    {
      paramString = localStringTokenizer.nextToken();
      if (paramString.equals(":"))
      {
        k = i;
        j = i + 1;
        arrayOfInt[i] = 0;
        i = j;
      }
      else if (paramString.indexOf('.') < 0)
      {
        int m = i + 1;
        arrayOfInt[i] = Integer.parseInt(paramString, 16);
        i = m;
        k = j;
        if (localStringTokenizer.hasMoreTokens())
        {
          localStringTokenizer.nextToken();
          i = m;
          k = j;
        }
      }
      else
      {
        paramString = new StringTokenizer(paramString, ".");
        k = i + 1;
        arrayOfInt[i] = (Integer.parseInt(paramString.nextToken()) << 8 | Integer.parseInt(paramString.nextToken()));
        i = k + 1;
        arrayOfInt[k] = (Integer.parseInt(paramString.nextToken()) << 8 | Integer.parseInt(paramString.nextToken()));
        k = j;
      }
    }
    if (i != arrayOfInt.length)
    {
      System.arraycopy(arrayOfInt, j, arrayOfInt, arrayOfInt.length - (i - j), i - j);
      k = j;
      while (k != arrayOfInt.length - (i - j))
      {
        arrayOfInt[k] = 0;
        k += 1;
      }
    }
    return arrayOfInt;
  }
  
  public static GeneralName ﻳ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof GeneralName))) {
      return (GeneralName)paramObject;
    }
    if ((paramObject instanceof ASN1TaggedObject))
    {
      ASN1TaggedObject localASN1TaggedObject = (ASN1TaggedObject)paramObject;
      int i = localASN1TaggedObject.eW();
      switch (i)
      {
      default: 
        break;
      case 0: 
        return new GeneralName(i, ASN1Sequence.ᐝ(localASN1TaggedObject, false));
      case 1: 
        return new GeneralName(i, DERIA5String.ͺ(localASN1TaggedObject, false));
      case 2: 
        return new GeneralName(i, DERIA5String.ͺ(localASN1TaggedObject, false));
      case 3: 
        throw new IllegalArgumentException("unknown tag: " + i);
      case 4: 
        return new GeneralName(i, X500Name.ʾ(localASN1TaggedObject, true));
      case 5: 
        return new GeneralName(i, ASN1Sequence.ᐝ(localASN1TaggedObject, false));
      case 6: 
        return new GeneralName(i, DERIA5String.ͺ(localASN1TaggedObject, false));
      case 7: 
        return new GeneralName(i, ASN1OctetString.ˏ(localASN1TaggedObject, false));
      case 8: 
        return new GeneralName(i, ASN1ObjectIdentifier.ˎ(localASN1TaggedObject, false));
      }
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = ﻳ(ASN1Primitive.ՙ((byte[])paramObject));
        return paramObject;
      }
      catch (IOException paramObject)
      {
        throw new IllegalArgumentException("unable to parse encoded general name");
      }
    }
    throw new IllegalArgumentException("unknown object in getInstance: " + paramObject.getClass().getName());
  }
  
  public int eW()
  {
    return this.tag;
  }
  
  public ASN1Primitive ez()
  {
    if (this.tag == 4) {
      return new DERTaggedObject(true, this.tag, this.aaF);
    }
    return new DERTaggedObject(false, this.tag, this.aaF);
  }
  
  public ASN1Encodable hw()
  {
    return this.aaF;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(this.tag);
    localStringBuffer.append(": ");
    switch (this.tag)
    {
    default: 
      break;
    case 1: 
    case 2: 
    case 6: 
      localStringBuffer.append(DERIA5String.ˀ(this.aaF).getString());
      break;
    case 4: 
      localStringBuffer.append(X500Name.ᒾ(this.aaF).toString());
      break;
    }
    localStringBuffer.append(this.aaF.toString());
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.GeneralName
 * JD-Core Version:    0.7.0.1
 */