package o;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

public final class up
{
  private static final Logger logger = Logger.getLogger(up.class.getName());
  
  public static uz appendingSink(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return ᐝ(new FileOutputStream(paramFile, true));
  }
  
  public static uz sink(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return ᐝ(new FileOutputStream(paramFile));
  }
  
  public static va source(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return ι(new FileInputStream(paramFile));
  }
  
  public static uh ˊ(uz paramuz)
  {
    if (paramuz == null) {
      throw new IllegalArgumentException("sink == null");
    }
    return new ut(paramuz);
  }
  
  private static uz ˊ(OutputStream paramOutputStream, vb paramvb)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("out == null");
    }
    if (paramvb == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    return new uq(paramvb, paramOutputStream);
  }
  
  public static uz ˊ(Socket paramSocket)
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    ua localua = ˎ(paramSocket);
    return localua.sink(ˊ(paramSocket.getOutputStream(), localua));
  }
  
  private static va ˊ(InputStream paramInputStream, vb paramvb)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("in == null");
    }
    if (paramvb == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    return new ur(paramvb, paramInputStream);
  }
  
  public static ui ˋ(va paramva)
  {
    if (paramva == null) {
      throw new IllegalArgumentException("source == null");
    }
    return new uv(paramva);
  }
  
  public static va ˋ(Socket paramSocket)
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    ua localua = ˎ(paramSocket);
    return localua.source(ˊ(paramSocket.getInputStream(), localua));
  }
  
  private static ua ˎ(Socket paramSocket)
  {
    return new us(paramSocket);
  }
  
  public static uz ᐝ(OutputStream paramOutputStream)
  {
    return ˊ(paramOutputStream, new vb());
  }
  
  public static va ι(InputStream paramInputStream)
  {
    return ˊ(paramInputStream, new vb());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.up
 * JD-Core Version:    0.7.0.1
 */