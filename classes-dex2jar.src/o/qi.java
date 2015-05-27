package o;

import java.io.File;
import java.util.Comparator;

final class qi
  implements Comparator<File>
{
  public int ˊ(File paramFile1, File paramFile2)
  {
    return (int)(paramFile1.lastModified() - paramFile2.lastModified());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qi
 * JD-Core Version:    0.7.0.1
 */