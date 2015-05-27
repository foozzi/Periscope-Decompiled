package org.spongycastle.jcajce.provider.symmetric.util;

import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

public class BCPBEKey
  implements PBEKey
{
  CipherParameters aKY;
  String aWI;
  int aYT;
  int aYU;
  PBEKeySpec aZc;
  boolean aZd = false;
  int ahI;
  ASN1ObjectIdentifier aiV;
  int type;
  
  public BCPBEKey(String paramString, ASN1ObjectIdentifier paramASN1ObjectIdentifier, int paramInt1, int paramInt2, int paramInt3, int paramInt4, PBEKeySpec paramPBEKeySpec, CipherParameters paramCipherParameters)
  {
    this.aWI = paramString;
    this.aiV = paramASN1ObjectIdentifier;
    this.type = paramInt1;
    this.aYT = paramInt2;
    this.ahI = paramInt3;
    this.aYU = paramInt4;
    this.aZc = paramPBEKeySpec;
    this.aKY = paramCipherParameters;
  }
  
  public String getAlgorithm()
  {
    return this.aWI;
  }
  
  public byte[] getEncoded()
  {
    if (this.aKY != null)
    {
      KeyParameter localKeyParameter;
      if ((this.aKY instanceof ParametersWithIV)) {
        localKeyParameter = (KeyParameter)((ParametersWithIV)this.aKY).lh();
      } else {
        localKeyParameter = (KeyParameter)this.aKY;
      }
      return localKeyParameter.getKey();
    }
    if (this.type == 2) {
      return PBEParametersGenerator.ˏ(this.aZc.getPassword());
    }
    if (this.type == 5) {
      return PBEParametersGenerator.ˎ(this.aZc.getPassword());
    }
    return PBEParametersGenerator.ˋ(this.aZc.getPassword());
  }
  
  public String getFormat()
  {
    return "RAW";
  }
  
  public int getIterationCount()
  {
    return this.aZc.getIterationCount();
  }
  
  int getKeySize()
  {
    return this.ahI;
  }
  
  public char[] getPassword()
  {
    return this.aZc.getPassword();
  }
  
  public byte[] getSalt()
  {
    return this.aZc.getSalt();
  }
  
  int getType()
  {
    return this.type;
  }
  
  int nS()
  {
    return this.aYT;
  }
  
  public int nT()
  {
    return this.aYU;
  }
  
  public CipherParameters nU()
  {
    return this.aKY;
  }
  
  public ASN1ObjectIdentifier nV()
  {
    return this.aiV;
  }
  
  boolean nW()
  {
    return this.aZd;
  }
  
  public void ﻧ(boolean paramBoolean)
  {
    this.aZd = paramBoolean;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.BCPBEKey
 * JD-Core Version:    0.7.0.1
 */