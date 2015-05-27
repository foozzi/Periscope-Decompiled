package org.spongycastle.util.io.pem;

import java.io.BufferedWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.util.encoders.Base64;

public class PemWriter
  extends BufferedWriter
{
  private final int bkl;
  private char[] buf = new char[64];
  
  public PemWriter(Writer paramWriter)
  {
    super(paramWriter);
    paramWriter = System.getProperty("line.separator");
    if (paramWriter != null)
    {
      this.bkl = paramWriter.length();
      return;
    }
    this.bkl = 2;
  }
  
  private void г(String paramString)
  {
    write("-----BEGIN " + paramString + "-----");
    newLine();
  }
  
  private void ذ(String paramString)
  {
    write("-----END " + paramString + "-----");
    newLine();
  }
  
  private void ᑉ(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = Base64.ײ(paramArrayOfByte);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = 0;
      while ((j != this.buf.length) && (i + j < paramArrayOfByte.length))
      {
        this.buf[j] = ((char)paramArrayOfByte[(i + j)]);
        j += 1;
      }
      write(this.buf, 0, j);
      newLine();
      i += this.buf.length;
    }
  }
  
  public void ˊ(PemObjectGenerator paramPemObjectGenerator)
  {
    paramPemObjectGenerator = paramPemObjectGenerator.tf();
    г(paramPemObjectGenerator.getType());
    if (!paramPemObjectGenerator.getHeaders().isEmpty())
    {
      Iterator localIterator = paramPemObjectGenerator.getHeaders().iterator();
      while (localIterator.hasNext())
      {
        PemHeader localPemHeader = (PemHeader)localIterator.next();
        write(localPemHeader.getName());
        write(": ");
        write(localPemHeader.getValue());
        newLine();
      }
      newLine();
    }
    ᑉ(paramPemObjectGenerator.te());
    ذ(paramPemObjectGenerator.getType());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.io.pem.PemWriter
 * JD-Core Version:    0.7.0.1
 */