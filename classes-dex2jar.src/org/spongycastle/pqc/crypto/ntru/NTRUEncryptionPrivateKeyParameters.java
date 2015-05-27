package org.spongycastle.pqc.crypto.ntru;

import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;

public class NTRUEncryptionPrivateKeyParameters
  extends NTRUEncryptionKeyParameters
{
  public Polynomial bhb;
  public IntegerPolynomial bhc;
  public IntegerPolynomial bhd;
  
  public NTRUEncryptionPrivateKeyParameters(IntegerPolynomial paramIntegerPolynomial1, Polynomial paramPolynomial, IntegerPolynomial paramIntegerPolynomial2, NTRUEncryptionParameters paramNTRUEncryptionParameters)
  {
    super(true, paramNTRUEncryptionParameters);
    this.bhd = paramIntegerPolynomial1;
    this.bhb = paramPolynomial;
    this.bhc = paramIntegerPolynomial2;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (!(paramObject instanceof NTRUEncryptionPrivateKeyParameters)) {
      return false;
    }
    paramObject = (NTRUEncryptionPrivateKeyParameters)paramObject;
    if (this.bha == null)
    {
      if (paramObject.bha != null) {
        return false;
      }
    }
    else if (!this.bha.equals(paramObject.bha)) {
      return false;
    }
    if (this.bhb == null)
    {
      if (paramObject.bhb != null) {
        return false;
      }
    }
    else if (!this.bhb.equals(paramObject.bhb)) {
      return false;
    }
    return this.bhd.equals(paramObject.bhd);
  }
  
  public int hashCode()
  {
    int i;
    if (this.bha == null) {
      i = 0;
    } else {
      i = this.bha.hashCode();
    }
    int j;
    if (this.bhb == null) {
      j = 0;
    } else {
      j = this.bhb.hashCode();
    }
    int k;
    if (this.bhd == null) {
      k = 0;
    } else {
      k = this.bhd.hashCode();
    }
    return ((i + 31) * 31 + j) * 31 + k;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUEncryptionPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */