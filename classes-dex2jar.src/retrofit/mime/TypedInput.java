package retrofit.mime;

import java.io.InputStream;

public abstract interface TypedInput
{
  public abstract InputStream in();
  
  public abstract long length();
  
  public abstract String mimeType();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.mime.TypedInput
 * JD-Core Version:    0.7.0.1
 */