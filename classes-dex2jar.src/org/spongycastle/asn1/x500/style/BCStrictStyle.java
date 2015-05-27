package org.spongycastle.asn1.x500.style;

import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;

public class BCStrictStyle
  extends BCStyle
{
  public static final X500NameStyle awn = new BCStrictStyle();
  
  public boolean ˊ(X500Name paramX500Name1, X500Name paramX500Name2)
  {
    paramX500Name1 = paramX500Name1.gK();
    paramX500Name2 = paramX500Name2.gK();
    if (paramX500Name1.length != paramX500Name2.length) {
      return false;
    }
    int i = 0;
    while (i != paramX500Name1.length)
    {
      if (!ˊ(paramX500Name1[i], paramX500Name2[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.style.BCStrictStyle
 * JD-Core Version:    0.7.0.1
 */