package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public class BEROctetString
  extends ASN1OctetString
{
  private ASN1OctetString[] aaM;
  
  public BEROctetString(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  public BEROctetString(ASN1OctetString[] paramArrayOfASN1OctetString)
  {
    super(ˊ(paramArrayOfASN1OctetString));
    this.aaM = paramArrayOfASN1OctetString;
  }
  
  private Vector fb()
  {
    Vector localVector = new Vector();
    int i = 0;
    while (i < this.aas.length)
    {
      int j;
      if (i + 1000 > this.aas.length) {
        j = this.aas.length;
      } else {
        j = i + 1000;
      }
      byte[] arrayOfByte = new byte[j - i];
      System.arraycopy(this.aas, i, arrayOfByte, 0, arrayOfByte.length);
      localVector.addElement(new DEROctetString(arrayOfByte));
      i += 1000;
    }
    return localVector;
  }
  
  static BEROctetString ˊ(ASN1Sequence paramASN1Sequence)
  {
    ASN1OctetString[] arrayOfASN1OctetString = new ASN1OctetString[paramASN1Sequence.size()];
    paramASN1Sequence = paramASN1Sequence.eT();
    int j;
    for (int i = 0; paramASN1Sequence.hasMoreElements(); i = j)
    {
      j = i + 1;
      arrayOfASN1OctetString[i] = ((ASN1OctetString)paramASN1Sequence.nextElement());
    }
    return new BEROctetString(arrayOfASN1OctetString);
  }
  
  private static byte[] ˊ(ASN1OctetString[] paramArrayOfASN1OctetString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    while (i != paramArrayOfASN1OctetString.length)
    {
      try
      {
        localByteArrayOutputStream.write(((DEROctetString)paramArrayOfASN1OctetString[i]).eM());
      }
      catch (ClassCastException localClassCastException)
      {
        throw new IllegalArgumentException(paramArrayOfASN1OctetString[i].getClass().getName() + " found in input should only contain DEROctetString");
      }
      catch (IOException paramArrayOfASN1OctetString)
      {
        throw new IllegalArgumentException("exception converting octets " + paramArrayOfASN1OctetString.toString());
      }
      i += 1;
    }
    return localClassCastException.toByteArray();
  }
  
  public byte[] eM()
  {
    return this.aas;
  }
  
  public Enumeration eT()
  {
    if (this.aaM == null) {
      return fb().elements();
    }
    return new BEROctetString.1(this);
  }
  
  boolean ex()
  {
    return true;
  }
  
  int ey()
  {
    int i = 0;
    Enumeration localEnumeration = eT();
    while (localEnumeration.hasMoreElements()) {
      i += ((ASN1Encodable)localEnumeration.nextElement()).ez().ey();
    }
    return i + 2 + 2;
  }
  
  public void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.write(36);
    paramASN1OutputStream.write(128);
    Enumeration localEnumeration = eT();
    while (localEnumeration.hasMoreElements()) {
      paramASN1OutputStream.ˋ((ASN1Encodable)localEnumeration.nextElement());
    }
    paramASN1OutputStream.write(0);
    paramASN1OutputStream.write(0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BEROctetString
 * JD-Core Version:    0.7.0.1
 */