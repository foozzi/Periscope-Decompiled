package org.spongycastle.i18n;

public class LocalizedMessage
{
  protected final String aWe;
  protected String aWf;
  protected FilteredArguments aWg;
  protected FilteredArguments aWh;
  protected final String id;
  protected ClassLoader ﺀ;
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("Resource: \"").append(this.aWe);
    localStringBuffer.append("\" Id: \"").append(this.id).append("\"");
    localStringBuffer.append(" Arguments: ").append(this.aWg.ny().length).append(" normal");
    if ((this.aWh != null) && (this.aWh.ny().length > 0)) {
      localStringBuffer.append(", ").append(this.aWh.ny().length).append(" extra");
    }
    localStringBuffer.append(" Encoding: ").append(this.aWf);
    localStringBuffer.append(" ClassLoader: ").append(this.ﺀ);
    return localStringBuffer.toString();
  }
  
  public class FilteredArguments
  {
    protected Object[] aWi;
    
    public Object[] ny()
    {
      return this.aWi;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.i18n.LocalizedMessage
 * JD-Core Version:    0.7.0.1
 */