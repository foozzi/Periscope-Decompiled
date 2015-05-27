package org.spongycastle.pqc.crypto.ntru;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;

public class NTRUSigningPrivateKeyParameters
  extends AsymmetricKeyParameter
{
  private List<Basis> bhF;
  private NTRUSigningPublicKeyParameters bhG;
  
  public NTRUSigningPrivateKeyParameters(List<Basis> paramList, NTRUSigningPublicKeyParameters paramNTRUSigningPublicKeyParameters)
  {
    super(true);
    this.bhF = new ArrayList(paramList);
    this.bhG = paramNTRUSigningPublicKeyParameters;
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
    paramObject = (NTRUSigningPrivateKeyParameters)paramObject;
    if ((this.bhF == null) && (paramObject.bhF != null)) {
      return false;
    }
    if (this.bhF.size() != paramObject.bhF.size()) {
      return false;
    }
    int i = 0;
    while (i < this.bhF.size())
    {
      Basis localBasis1 = (Basis)this.bhF.get(i);
      Basis localBasis2 = (Basis)paramObject.bhF.get(i);
      if (!localBasis1.bhH.equals(localBasis2.bhH)) {
        return false;
      }
      if (!localBasis1.bhI.equals(localBasis2.bhI)) {
        return false;
      }
      if ((i != 0) && (!localBasis1.bhd.equals(localBasis2.bhd))) {
        return false;
      }
      if (!localBasis1.bhB.equals(localBasis2.bhB)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public int hashCode()
  {
    int i;
    if (this.bhF == null) {
      i = 0;
    } else {
      i = this.bhF.hashCode();
    }
    i += 31;
    Iterator localIterator = this.bhF.iterator();
    while (localIterator.hasNext()) {
      i += ((Basis)localIterator.next()).hashCode();
    }
    return i;
  }
  
  public static class Basis
  {
    NTRUSigningKeyGenerationParameters bhB;
    public Polynomial bhH;
    public Polynomial bhI;
    public IntegerPolynomial bhd;
    
    protected Basis(Polynomial paramPolynomial1, Polynomial paramPolynomial2, IntegerPolynomial paramIntegerPolynomial, NTRUSigningKeyGenerationParameters paramNTRUSigningKeyGenerationParameters)
    {
      this.bhH = paramPolynomial1;
      this.bhI = paramPolynomial2;
      this.bhd = paramIntegerPolynomial;
      this.bhB = paramNTRUSigningKeyGenerationParameters;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof Basis)) {
        return false;
      }
      paramObject = (Basis)paramObject;
      if (this.bhH == null)
      {
        if (paramObject.bhH != null) {
          return false;
        }
      }
      else if (!this.bhH.equals(paramObject.bhH)) {
        return false;
      }
      if (this.bhI == null)
      {
        if (paramObject.bhI != null) {
          return false;
        }
      }
      else if (!this.bhI.equals(paramObject.bhI)) {
        return false;
      }
      if (this.bhd == null)
      {
        if (paramObject.bhd != null) {
          return false;
        }
      }
      else if (!this.bhd.equals(paramObject.bhd)) {
        return false;
      }
      if (this.bhB == null)
      {
        if (paramObject.bhB != null) {
          return false;
        }
      }
      else if (!this.bhB.equals(paramObject.bhB)) {
        return false;
      }
      return true;
    }
    
    public int hashCode()
    {
      int i;
      if (this.bhH == null) {
        i = 0;
      } else {
        i = this.bhH.hashCode();
      }
      int j;
      if (this.bhI == null) {
        j = 0;
      } else {
        j = this.bhI.hashCode();
      }
      int k;
      if (this.bhd == null) {
        k = 0;
      } else {
        k = this.bhd.hashCode();
      }
      int m;
      if (this.bhB == null) {
        m = 0;
      } else {
        m = this.bhB.hashCode();
      }
      return (((i + 31) * 31 + j) * 31 + k) * 31 + m;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUSigningPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */