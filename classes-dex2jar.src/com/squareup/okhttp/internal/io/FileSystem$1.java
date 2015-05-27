package com.squareup.okhttp.internal.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import o.up;
import o.uz;
import o.va;

final class FileSystem$1
  implements FileSystem
{
  public uz appendingSink(File paramFile)
  {
    try
    {
      uz localuz = up.appendingSink(paramFile);
      return localuz;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      paramFile.getParentFile().mkdirs();
    }
    return up.appendingSink(paramFile);
  }
  
  public void delete(File paramFile)
  {
    if ((!paramFile.delete()) && (paramFile.exists())) {
      throw new IOException("failed to delete " + paramFile);
    }
  }
  
  public void deleteContents(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      throw new IOException("not a readable directory: " + paramFile);
    }
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      paramFile = arrayOfFile[i];
      if (paramFile.isDirectory()) {
        deleteContents(paramFile);
      }
      if (!paramFile.delete()) {
        throw new IOException("failed to delete " + paramFile);
      }
      i += 1;
    }
  }
  
  public boolean exists(File paramFile)
  {
    return paramFile.exists();
  }
  
  public void rename(File paramFile1, File paramFile2)
  {
    delete(paramFile2);
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException("failed to rename " + paramFile1 + " to " + paramFile2);
    }
  }
  
  public uz sink(File paramFile)
  {
    try
    {
      uz localuz = up.sink(paramFile);
      return localuz;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      paramFile.getParentFile().mkdirs();
    }
    return up.sink(paramFile);
  }
  
  public long size(File paramFile)
  {
    return paramFile.length();
  }
  
  public va source(File paramFile)
  {
    return up.source(paramFile);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.io.FileSystem.1
 * JD-Core Version:    0.7.0.1
 */