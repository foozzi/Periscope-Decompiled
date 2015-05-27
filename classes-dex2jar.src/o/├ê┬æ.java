package o;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

class ȑ
  extends FileOutputStream
{
  public static final FilenameFilter nw = new ț();
  private boolean closed = false;
  private final String nt;
  private File nu;
  private File nv;
  
  public ȑ(File paramFile, String paramString)
  {
    super(new File(paramFile, paramString + ".cls_temp"));
    this.nt = (paramFile + File.separator + paramString);
    this.nu = new File(this.nt + ".cls_temp");
  }
  
  public void close()
  {
    try
    {
      if (this.closed) {
        return;
      }
      this.closed = true;
      super.flush();
      super.close();
      File localFile = new File(this.nt + ".cls");
      if (this.nu.renameTo(localFile))
      {
        this.nu = null;
        this.nv = localFile;
      }
      else
      {
        String str = "";
        if (localFile.exists()) {
          str = " (target already exists)";
        } else if (!this.nu.exists()) {
          str = " (source does not exist)";
        }
        throw new IOException("Could not rename temp file: " + this.nu + " -> " + localFile + str);
      }
      return;
    }
    finally {}
  }
  
  public void ﮞ()
  {
    if (this.closed) {
      return;
    }
    this.closed = true;
    super.flush();
    super.close();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.È
 * JD-Core Version:    0.7.0.1
 */