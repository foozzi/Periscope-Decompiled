package org.spongycastle.pqc.crypto.ntru;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;

public class NTRUSigningPublicKeyParameters
  extends AsymmetricKeyParameter
{
  private NTRUSigningParameters bhJ;
  public IntegerPolynomial bhd;
  
  public NTRUSigningPublicKeyParameters(IntegerPolynomial paramIntegerPolynomial, NTRUSigningParameters paramNTRUSigningParameters)
  {
    super(false);
    this.bhd = paramIntegerPolynomial;
    this.bhJ = paramNTRUSigningParameters;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (NTRUSigningPublicKeyParameters)paramObject;
    if (this.bhd == null)
    {
      if (paramObject.bhd != null) {
        return false;
      }
    }
    else if (!this.bhd.equals(paramObject.bhd)) {
      return false;
    }
    if (this.bhJ == null)
    {
      if (paramObject.bhJ != null) {
        return false;
      }
    }
    else if (!this.bhJ.equals(paramObject.bhJ)) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    int i;
    if (this.bhd == null) {
      i = 0;
    } else {
      i = this.bhd.hashCode();
    }
    int j;
    if (this.bhJ == null) {
      j = 0;
    } else {
      j = this.bhJ.hashCode();
    }
    return (i + 31) * 31 + j;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUSigningPublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */