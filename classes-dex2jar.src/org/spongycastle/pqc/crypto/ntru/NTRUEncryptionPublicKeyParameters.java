package org.spongycastle.pqc.crypto.ntru;

import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;

public class NTRUEncryptionPublicKeyParameters
  extends NTRUEncryptionKeyParameters
{
  public IntegerPolynomial bhd;
  
  public NTRUEncryptionPublicKeyParameters(IntegerPolynomial paramIntegerPolynomial, NTRUEncryptionParameters paramNTRUEncryptionParameters)
  {
    super(false, paramNTRUEncryptionParameters);
    this.bhd = paramIntegerPolynomial;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (!(paramObject instanceof NTRUEncryptionPublicKeyParameters)) {
      return false;
    }
    paramObject = (NTRUEncryptionPublicKeyParameters)paramObject;
    if (this.bhd == null)
    {
      if (paramObject.bhd != null) {
        return false;
      }
    }
    else if (!this.bhd.equals(paramObject.bhd)) {
      return false;
    }
    if (this.bha == null)
    {
      if (paramObject.bha != null) {
        return false;
      }
    }
    else if (!this.bha.equals(paramObject.bha)) {
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
    if (this.bha == null) {
      j = 0;
    } else {
      j = this.bha.hashCode();
    }
    return (i + 31) * 31 + j;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUEncryptionPublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */