package retrofit.converter;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;
import o.fl;
import o.ga;
import retrofit.mime.MimeUtil;
import retrofit.mime.TypedInput;
import retrofit.mime.TypedOutput;

public class GsonConverter
  implements Converter
{
  private String charset;
  private final fl gson;
  
  public GsonConverter(fl paramfl)
  {
    this(paramfl, "UTF-8");
  }
  
  public GsonConverter(fl paramfl, String paramString)
  {
    this.gson = paramfl;
    this.charset = paramString;
  }
  
  public Object fromBody(TypedInput paramTypedInput, Type paramType)
  {
    Object localObject1 = this.charset;
    Object localObject2 = localObject1;
    if (paramTypedInput.mimeType() != null) {
      localObject2 = MimeUtil.parseCharset(paramTypedInput.mimeType(), (String)localObject1);
    }
    TypedInput localTypedInput2 = null;
    localObject1 = null;
    TypedInput localTypedInput1 = null;
    try
    {
      paramTypedInput = new InputStreamReader(paramTypedInput.in(), (String)localObject2);
      localTypedInput1 = paramTypedInput;
      localTypedInput2 = paramTypedInput;
      localObject1 = paramTypedInput;
      paramType = this.gson.ˊ(paramTypedInput, paramType);
      if (paramTypedInput != null) {
        try
        {
          paramTypedInput.close();
          return paramType;
        }
        catch (IOException paramTypedInput) {}
      }
      return paramType;
    }
    catch (IOException paramTypedInput)
    {
      localObject1 = localTypedInput1;
      throw new ConversionException(paramTypedInput);
    }
    catch (ga paramTypedInput)
    {
      localObject1 = localTypedInput2;
      throw new ConversionException(paramTypedInput);
    }
    finally
    {
      if (localObject1 != null) {
        try
        {
          ((InputStreamReader)localObject1).close();
        }
        catch (IOException paramType) {}
      }
    }
  }
  
  public TypedOutput toBody(Object paramObject)
  {
    try
    {
      paramObject = new JsonTypedOutput(this.gson.ᴸ(paramObject).getBytes(this.charset), this.charset);
      return paramObject;
    }
    catch (UnsupportedEncodingException paramObject)
    {
      throw new AssertionError(paramObject);
    }
  }
  
  static class JsonTypedOutput
    implements TypedOutput
  {
    private final byte[] jsonBytes;
    private final String mimeType;
    
    JsonTypedOutput(byte[] paramArrayOfByte, String paramString)
    {
      this.jsonBytes = paramArrayOfByte;
      this.mimeType = ("application/json; charset=" + paramString);
    }
    
    public String fileName()
    {
      return null;
    }
    
    public long length()
    {
      return this.jsonBytes.length;
    }
    
    public String mimeType()
    {
      return this.mimeType;
    }
    
    public void writeTo(OutputStream paramOutputStream)
    {
      paramOutputStream.write(this.jsonBytes);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.converter.GsonConverter
 * JD-Core Version:    0.7.0.1
 */