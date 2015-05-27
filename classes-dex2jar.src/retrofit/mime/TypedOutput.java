package retrofit.mime;

import java.io.OutputStream;

public abstract interface TypedOutput
{
  public abstract String fileName();
  
  public abstract long length();
  
  public abstract String mimeType();
  
  public abstract void writeTo(OutputStream paramOutputStream);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.mime.TypedOutput
 * JD-Core Version:    0.7.0.1
 */