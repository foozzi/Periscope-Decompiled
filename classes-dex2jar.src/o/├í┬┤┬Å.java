package o;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

final class ᴏ
{
  public static void ˊ(File paramFile, FilenameFilter paramFilenameFilter, int paramInt, Comparator<File> paramComparator)
  {
    paramFile = paramFile.listFiles(paramFilenameFilter);
    if ((paramFile != null) && (paramFile.length > paramInt))
    {
      Arrays.sort(paramFile, paramComparator);
      int j = paramFile.length;
      int k = paramFile.length;
      int i = 0;
      while (i < k)
      {
        paramFilenameFilter = paramFile[i];
        if (j <= paramInt) {
          return;
        }
        paramFilenameFilter.delete();
        j -= 1;
        i += 1;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */