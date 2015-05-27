package org.spongycastle.crypto.params;

import java.util.Enumeration;
import java.util.Hashtable;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.util.Integers;

public class SkeinParameters
  implements CipherParameters
{
  private Hashtable aQJ;
  
  public SkeinParameters()
  {
    this(new Hashtable());
  }
  
  private SkeinParameters(Hashtable paramHashtable)
  {
    this.aQJ = paramHashtable;
  }
  
  public byte[] getKey()
  {
    return (byte[])this.aQJ.get(Integers.valueOf(0));
  }
  
  public Hashtable lo()
  {
    return this.aQJ;
  }
  
  public static class Builder
  {
    private Hashtable aQJ = new Hashtable();
    
    public Builder() {}
    
    public Builder(Hashtable paramHashtable)
    {
      Enumeration localEnumeration = paramHashtable.keys();
      while (localEnumeration.hasMoreElements())
      {
        Integer localInteger = (Integer)localEnumeration.nextElement();
        this.aQJ.put(localInteger, paramHashtable.get(localInteger));
      }
    }
    
    public SkeinParameters lp()
    {
      return new SkeinParameters(this.aQJ, null);
    }
    
    public Builder ǃ(byte[] paramArrayOfByte)
    {
      return ᐝ(0, paramArrayOfByte);
    }
    
    public Builder ᐝ(int paramInt, byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null) {
        throw new IllegalArgumentException("Parameter value must not be null.");
      }
      if ((paramInt != 0) && ((paramInt <= 4) || (paramInt >= 63) || (paramInt == 48))) {
        throw new IllegalArgumentException("Parameter types must be in the range 0,5..47,49..62.");
      }
      if (paramInt == 4) {
        throw new IllegalArgumentException("Parameter type 4 is reserved for internal use.");
      }
      this.aQJ.put(Integers.valueOf(paramInt), paramArrayOfByte);
      return this;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.SkeinParameters
 * JD-Core Version:    0.7.0.1
 */