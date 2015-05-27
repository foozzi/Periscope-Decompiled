package o;

import java.io.File;
import java.io.InputStream;

class ﱢ$if
  implements ﺀ<InputStream, File>
{
  public String getId()
  {
    return "";
  }
  
  public ڔ<File> ˊ(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    throw new Error("You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï±¢.if
 * JD-Core Version:    0.7.0.1
 */