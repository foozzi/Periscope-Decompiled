package retrofit.mime;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

public final class FormUrlEncodedTypedOutput
  implements TypedOutput
{
  final ByteArrayOutputStream content = new ByteArrayOutputStream();
  
  public void addField(String paramString1, String paramString2)
  {
    addField(paramString1, true, paramString2, true);
  }
  
  public void addField(String paramString1, boolean paramBoolean1, String paramString2, boolean paramBoolean2)
  {
    if (paramString1 == null) {
      throw new NullPointerException("name");
    }
    if (paramString2 == null) {
      throw new NullPointerException("value");
    }
    if (this.content.size() > 0) {
      this.content.write(38);
    }
    String str = paramString1;
    if (paramBoolean1) {}
    try
    {
      str = URLEncoder.encode(paramString1, "UTF-8");
      paramString1 = paramString2;
      if (paramBoolean2) {
        paramString1 = URLEncoder.encode(paramString2, "UTF-8");
      }
      this.content.write(str.getBytes("UTF-8"));
      this.content.write(61);
      this.content.write(paramString1.getBytes("UTF-8"));
      return;
    }
    catch (IOException paramString1)
    {
      throw new RuntimeException(paramString1);
    }
  }
  
  public String fileName()
  {
    return null;
  }
  
  public long length()
  {
    return this.content.size();
  }
  
  public String mimeType()
  {
    return "application/x-www-form-urlencoded; charset=UTF-8";
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.write(this.content.toByteArray());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.mime.FormUrlEncodedTypedOutput
 * JD-Core Version:    0.7.0.1
 */