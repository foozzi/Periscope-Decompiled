package org.spongycastle.util.io.pem;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PemObject
  implements PemObjectGenerator
{
  private static final List EMPTY_LIST = Collections.unmodifiableList(new ArrayList());
  private byte[] content;
  private List headers;
  private String type;
  
  public PemObject(String paramString, List paramList, byte[] paramArrayOfByte)
  {
    this.type = paramString;
    this.headers = Collections.unmodifiableList(paramList);
    this.content = paramArrayOfByte;
  }
  
  public PemObject(String paramString, byte[] paramArrayOfByte)
  {
    this(paramString, EMPTY_LIST, paramArrayOfByte);
  }
  
  public List getHeaders()
  {
    return this.headers;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public byte[] te()
  {
    return this.content;
  }
  
  public PemObject tf()
  {
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.io.pem.PemObject
 * JD-Core Version:    0.7.0.1
 */