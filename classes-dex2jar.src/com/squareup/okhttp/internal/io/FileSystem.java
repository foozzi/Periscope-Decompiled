package com.squareup.okhttp.internal.io;

import java.io.File;
import o.uz;
import o.va;

public abstract interface FileSystem
{
  public static final FileSystem SYSTEM = new FileSystem.1();
  
  public abstract uz appendingSink(File paramFile);
  
  public abstract void delete(File paramFile);
  
  public abstract void deleteContents(File paramFile);
  
  public abstract boolean exists(File paramFile);
  
  public abstract void rename(File paramFile1, File paramFile2);
  
  public abstract uz sink(File paramFile);
  
  public abstract long size(File paramFile);
  
  public abstract va source(File paramFile);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.io.FileSystem
 * JD-Core Version:    0.7.0.1
 */