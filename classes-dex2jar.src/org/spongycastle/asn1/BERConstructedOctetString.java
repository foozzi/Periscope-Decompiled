package org.spongycastle.asn1;

import java.util.Enumeration;
import java.util.Vector;

public class BERConstructedOctetString
  extends BEROctetString
{
  private Vector aaH;
  
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
  
  public byte[] eM()
  {
    return this.aas;
  }
  
  public Enumeration eT()
  {
    if (this.aaH == null) {
      return fb().elements();
    }
    return this.aaH.elements();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BERConstructedOctetString
 * JD-Core Version:    0.7.0.1
 */