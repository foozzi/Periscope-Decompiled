package org.spongycastle.jcajce.provider.asymmetric.util;

import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OutputStream;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

public class PKCS12BagAttributeCarrierImpl
  implements PKCS12BagAttributeCarrier
{
  private Hashtable aXO;
  private Vector aXP;
  
  public PKCS12BagAttributeCarrierImpl()
  {
    this(new Hashtable(), new Vector());
  }
  
  PKCS12BagAttributeCarrierImpl(Hashtable paramHashtable, Vector paramVector)
  {
    this.aXO = paramHashtable;
    this.aXP = paramVector;
  }
  
  public Enumeration nA()
  {
    return this.aXP.elements();
  }
  
  public void readObject(ObjectInputStream paramObjectInputStream)
  {
    Object localObject = paramObjectInputStream.readObject();
    if ((localObject instanceof Hashtable))
    {
      this.aXO = ((Hashtable)localObject);
      this.aXP = ((Vector)paramObjectInputStream.readObject());
      return;
    }
    paramObjectInputStream = new ASN1InputStream((byte[])localObject);
    for (;;)
    {
      localObject = (ASN1ObjectIdentifier)paramObjectInputStream.eH();
      if (localObject == null) {
        break;
      }
      ˋ((ASN1ObjectIdentifier)localObject, paramObjectInputStream.eH());
    }
  }
  
  public void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    if (this.aXP.size() == 0)
    {
      paramObjectOutputStream.writeObject(new Hashtable());
      paramObjectOutputStream.writeObject(new Vector());
      return;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ASN1OutputStream localASN1OutputStream = new ASN1OutputStream(localByteArrayOutputStream);
    Enumeration localEnumeration = nA();
    while (localEnumeration.hasMoreElements())
    {
      ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
      localASN1OutputStream.ˋ(localASN1ObjectIdentifier);
      localASN1OutputStream.ˋ((ASN1Encodable)this.aXO.get(localASN1ObjectIdentifier));
    }
    paramObjectOutputStream.writeObject(localByteArrayOutputStream.toByteArray());
  }
  
  public void ˋ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    if (this.aXO.containsKey(paramASN1ObjectIdentifier))
    {
      this.aXO.put(paramASN1ObjectIdentifier, paramASN1Encodable);
      return;
    }
    this.aXO.put(paramASN1ObjectIdentifier, paramASN1Encodable);
    this.aXP.addElement(paramASN1ObjectIdentifier);
  }
  
  public ASN1Encodable ͺ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    return (ASN1Encodable)this.aXO.get(paramASN1ObjectIdentifier);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl
 * JD-Core Version:    0.7.0.1
 */