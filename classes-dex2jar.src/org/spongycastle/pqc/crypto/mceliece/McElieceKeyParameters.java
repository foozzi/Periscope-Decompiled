package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public class McElieceKeyParameters
  extends AsymmetricKeyParameter
{
  private McElieceParameters bge;
  
  public McElieceKeyParameters(boolean paramBoolean, McElieceParameters paramMcElieceParameters)
  {
    super(paramBoolean);
    this.bge = paramMcElieceParameters;
  }
  
  public McElieceParameters rr()
  {
    return this.bge;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceKeyParameters
 * JD-Core Version:    0.7.0.1
 */