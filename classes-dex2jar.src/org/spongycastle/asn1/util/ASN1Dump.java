package org.spongycastle.asn1.util;

import java.io.IOException;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.ASN1UTCTime;
import org.spongycastle.asn1.BERApplicationSpecific;
import org.spongycastle.asn1.BEROctetString;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.BERSet;
import org.spongycastle.asn1.BERTaggedObject;
import org.spongycastle.asn1.DERApplicationSpecific;
import org.spongycastle.asn1.DERBMPString;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERExternal;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERT61String;
import org.spongycastle.asn1.DERUTF8String;
import org.spongycastle.asn1.DERVisibleString;
import org.spongycastle.util.encoders.Hex;

public class ASN1Dump
{
  private static String ˊ(String paramString1, String paramString2, boolean paramBoolean, ASN1Primitive paramASN1Primitive, String paramString3)
  {
    DERApplicationSpecific localDERApplicationSpecific = (DERApplicationSpecific)paramASN1Primitive;
    paramASN1Primitive = new StringBuffer();
    if (localDERApplicationSpecific.ex())
    {
      try
      {
        ASN1Sequence localASN1Sequence = ASN1Sequence.ﹾ(localDERApplicationSpecific.Ј(16));
        paramASN1Primitive.append(paramString2 + paramString1 + " ApplicationSpecific[" + localDERApplicationSpecific.fe() + "]" + paramString3);
        paramString1 = localASN1Sequence.eT();
        while (paramString1.hasMoreElements()) {
          ˊ(paramString2 + "    ", paramBoolean, (ASN1Primitive)paramString1.nextElement(), paramASN1Primitive);
        }
      }
      catch (IOException paramString1)
      {
        paramASN1Primitive.append(paramString1);
      }
      return paramASN1Primitive.toString();
    }
    return paramString2 + paramString1 + " ApplicationSpecific[" + localDERApplicationSpecific.fe() + "] (" + new String(Hex.ײ(localDERApplicationSpecific.fd())) + ")" + paramString3;
  }
  
  private static String ˊ(String paramString, byte[] paramArrayOfByte)
  {
    String str = System.getProperty("line.separator");
    StringBuffer localStringBuffer = new StringBuffer();
    paramString = paramString + "    ";
    localStringBuffer.append(str);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      if (paramArrayOfByte.length - i > 32)
      {
        localStringBuffer.append(paramString);
        localStringBuffer.append(new String(Hex.ᑊ(paramArrayOfByte, i, 32)));
        localStringBuffer.append("    ");
        localStringBuffer.append(ˍ(paramArrayOfByte, i, 32));
        localStringBuffer.append(str);
      }
      else
      {
        localStringBuffer.append(paramString);
        localStringBuffer.append(new String(Hex.ᑊ(paramArrayOfByte, i, paramArrayOfByte.length - i)));
        int j = paramArrayOfByte.length - i;
        while (j != 32)
        {
          localStringBuffer.append("  ");
          j += 1;
        }
        localStringBuffer.append("    ");
        localStringBuffer.append(ˍ(paramArrayOfByte, i, paramArrayOfByte.length - i));
        localStringBuffer.append(str);
      }
      i += 32;
    }
    return localStringBuffer.toString();
  }
  
  static void ˊ(String paramString, boolean paramBoolean, ASN1Primitive paramASN1Primitive, StringBuffer paramStringBuffer)
  {
    String str1 = System.getProperty("line.separator");
    Object localObject;
    String str2;
    if ((paramASN1Primitive instanceof ASN1Sequence))
    {
      localObject = ((ASN1Sequence)paramASN1Primitive).eT();
      str2 = paramString + "    ";
      paramStringBuffer.append(paramString);
      if ((paramASN1Primitive instanceof BERSequence)) {
        paramStringBuffer.append("BER Sequence");
      } else if ((paramASN1Primitive instanceof DERSequence)) {
        paramStringBuffer.append("DER Sequence");
      } else {
        paramStringBuffer.append("Sequence");
      }
      paramStringBuffer.append(str1);
      while (((Enumeration)localObject).hasMoreElements())
      {
        paramString = ((Enumeration)localObject).nextElement();
        if ((paramString == null) || (paramString.equals(DERNull.abj)))
        {
          paramStringBuffer.append(str2);
          paramStringBuffer.append("NULL");
          paramStringBuffer.append(str1);
        }
        else if ((paramString instanceof ASN1Primitive))
        {
          ˊ(str2, paramBoolean, (ASN1Primitive)paramString, paramStringBuffer);
        }
        else
        {
          ˊ(str2, paramBoolean, ((ASN1Encodable)paramString).ez(), paramStringBuffer);
        }
      }
      return;
    }
    if ((paramASN1Primitive instanceof ASN1TaggedObject))
    {
      localObject = paramString + "    ";
      paramStringBuffer.append(paramString);
      if ((paramASN1Primitive instanceof BERTaggedObject)) {
        paramStringBuffer.append("BER Tagged [");
      } else {
        paramStringBuffer.append("Tagged [");
      }
      paramString = (ASN1TaggedObject)paramASN1Primitive;
      paramStringBuffer.append(Integer.toString(paramString.eW()));
      paramStringBuffer.append(']');
      if (!paramString.eX()) {
        paramStringBuffer.append(" IMPLICIT ");
      }
      paramStringBuffer.append(str1);
      if (paramString.isEmpty())
      {
        paramStringBuffer.append((String)localObject);
        paramStringBuffer.append("EMPTY");
        paramStringBuffer.append(str1);
      }
      else
      {
        ˊ((String)localObject, paramBoolean, paramString.eY(), paramStringBuffer);
      }
      return;
    }
    if ((paramASN1Primitive instanceof ASN1Set))
    {
      localObject = ((ASN1Set)paramASN1Primitive).eT();
      str2 = paramString + "    ";
      paramStringBuffer.append(paramString);
      if ((paramASN1Primitive instanceof BERSet)) {
        paramStringBuffer.append("BER Set");
      } else {
        paramStringBuffer.append("DER Set");
      }
      paramStringBuffer.append(str1);
      while (((Enumeration)localObject).hasMoreElements())
      {
        paramString = ((Enumeration)localObject).nextElement();
        if (paramString == null)
        {
          paramStringBuffer.append(str2);
          paramStringBuffer.append("NULL");
          paramStringBuffer.append(str1);
        }
        else if ((paramString instanceof ASN1Primitive))
        {
          ˊ(str2, paramBoolean, (ASN1Primitive)paramString, paramStringBuffer);
        }
        else
        {
          ˊ(str2, paramBoolean, ((ASN1Encodable)paramString).ez(), paramStringBuffer);
        }
      }
      return;
    }
    if ((paramASN1Primitive instanceof ASN1OctetString))
    {
      localObject = (ASN1OctetString)paramASN1Primitive;
      if ((paramASN1Primitive instanceof BEROctetString)) {
        paramStringBuffer.append(paramString + "BER Constructed Octet String" + "[" + ((ASN1OctetString)localObject).eM().length + "] ");
      } else {
        paramStringBuffer.append(paramString + "DER Octet String" + "[" + ((ASN1OctetString)localObject).eM().length + "] ");
      }
      if (paramBoolean) {
        paramStringBuffer.append(ˊ(paramString, ((ASN1OctetString)localObject).eM()));
      } else {
        paramStringBuffer.append(str1);
      }
      return;
    }
    if ((paramASN1Primitive instanceof ASN1ObjectIdentifier))
    {
      paramStringBuffer.append(paramString + "ObjectIdentifier(" + ((ASN1ObjectIdentifier)paramASN1Primitive).getId() + ")" + str1);
      return;
    }
    if ((paramASN1Primitive instanceof ASN1Boolean))
    {
      paramStringBuffer.append(paramString + "Boolean(" + ((ASN1Boolean)paramASN1Primitive).ew() + ")" + str1);
      return;
    }
    if ((paramASN1Primitive instanceof ASN1Integer))
    {
      paramStringBuffer.append(paramString + "Integer(" + ((ASN1Integer)paramASN1Primitive).eA() + ")" + str1);
      return;
    }
    if ((paramASN1Primitive instanceof DERBitString))
    {
      paramASN1Primitive = (DERBitString)paramASN1Primitive;
      paramStringBuffer.append(paramString + "DER Bit String" + "[" + paramASN1Primitive.getBytes().length + ", " + paramASN1Primitive.ff() + "] ");
      if (paramBoolean) {
        paramStringBuffer.append(ˊ(paramString, paramASN1Primitive.getBytes()));
      } else {
        paramStringBuffer.append(str1);
      }
      return;
    }
    if ((paramASN1Primitive instanceof DERIA5String))
    {
      paramStringBuffer.append(paramString + "IA5String(" + ((DERIA5String)paramASN1Primitive).getString() + ") " + str1);
      return;
    }
    if ((paramASN1Primitive instanceof DERUTF8String))
    {
      paramStringBuffer.append(paramString + "UTF8String(" + ((DERUTF8String)paramASN1Primitive).getString() + ") " + str1);
      return;
    }
    if ((paramASN1Primitive instanceof DERPrintableString))
    {
      paramStringBuffer.append(paramString + "PrintableString(" + ((DERPrintableString)paramASN1Primitive).getString() + ") " + str1);
      return;
    }
    if ((paramASN1Primitive instanceof DERVisibleString))
    {
      paramStringBuffer.append(paramString + "VisibleString(" + ((DERVisibleString)paramASN1Primitive).getString() + ") " + str1);
      return;
    }
    if ((paramASN1Primitive instanceof DERBMPString))
    {
      paramStringBuffer.append(paramString + "BMPString(" + ((DERBMPString)paramASN1Primitive).getString() + ") " + str1);
      return;
    }
    if ((paramASN1Primitive instanceof DERT61String))
    {
      paramStringBuffer.append(paramString + "T61String(" + ((DERT61String)paramASN1Primitive).getString() + ") " + str1);
      return;
    }
    if ((paramASN1Primitive instanceof ASN1UTCTime))
    {
      paramStringBuffer.append(paramString + "UTCTime(" + ((ASN1UTCTime)paramASN1Primitive).eB() + ") " + str1);
      return;
    }
    if ((paramASN1Primitive instanceof ASN1GeneralizedTime))
    {
      paramStringBuffer.append(paramString + "GeneralizedTime(" + ((ASN1GeneralizedTime)paramASN1Primitive).eB() + ") " + str1);
      return;
    }
    if ((paramASN1Primitive instanceof BERApplicationSpecific))
    {
      paramStringBuffer.append(ˊ("BER", paramString, paramBoolean, paramASN1Primitive, str1));
      return;
    }
    if ((paramASN1Primitive instanceof DERApplicationSpecific))
    {
      paramStringBuffer.append(ˊ("DER", paramString, paramBoolean, paramASN1Primitive, str1));
      return;
    }
    if ((paramASN1Primitive instanceof ASN1Enumerated))
    {
      paramASN1Primitive = (ASN1Enumerated)paramASN1Primitive;
      paramStringBuffer.append(paramString + "DER Enumerated(" + paramASN1Primitive.eA() + ")" + str1);
      return;
    }
    if ((paramASN1Primitive instanceof DERExternal))
    {
      paramASN1Primitive = (DERExternal)paramASN1Primitive;
      paramStringBuffer.append(paramString + "External " + str1);
      paramString = paramString + "    ";
      if (paramASN1Primitive.fh() != null) {
        paramStringBuffer.append(paramString + "Direct Reference: " + paramASN1Primitive.fh().getId() + str1);
      }
      if (paramASN1Primitive.fj() != null) {
        paramStringBuffer.append(paramString + "Indirect Reference: " + paramASN1Primitive.fj().toString() + str1);
      }
      if (paramASN1Primitive.fg() != null) {
        ˊ(paramString, paramBoolean, paramASN1Primitive.fg(), paramStringBuffer);
      }
      paramStringBuffer.append(paramString + "Encoding: " + paramASN1Primitive.getEncoding() + str1);
      ˊ(paramString, paramBoolean, paramASN1Primitive.fi(), paramStringBuffer);
      return;
    }
    paramStringBuffer.append(paramString + paramASN1Primitive.toString() + str1);
  }
  
  private static String ˍ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramInt1;
    while (i != paramInt1 + paramInt2)
    {
      if ((paramArrayOfByte[i] >= 32) && (paramArrayOfByte[i] <= 126)) {
        localStringBuffer.append((char)paramArrayOfByte[i]);
      }
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public static String ˏ(Object paramObject, boolean paramBoolean)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if ((paramObject instanceof ASN1Primitive)) {
      ˊ("", paramBoolean, (ASN1Primitive)paramObject, localStringBuffer);
    } else if ((paramObject instanceof ASN1Encodable)) {
      ˊ("", paramBoolean, ((ASN1Encodable)paramObject).ez(), localStringBuffer);
    } else {
      return "unknown object type " + paramObject.toString();
    }
    return localStringBuffer.toString();
  }
  
  public static String ᑉ(Object paramObject)
  {
    return ˏ(paramObject, false);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.util.ASN1Dump
 * JD-Core Version:    0.7.0.1
 */