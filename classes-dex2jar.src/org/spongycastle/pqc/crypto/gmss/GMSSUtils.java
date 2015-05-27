package org.spongycastle.pqc.crypto.gmss;

import java.util.Enumeration;
import java.util.Vector;
import org.spongycastle.util.Arrays;

class GMSSUtils
{
  static Vector[] ˊ(Vector[] paramArrayOfVector)
  {
    if (paramArrayOfVector == null) {
      return null;
    }
    Vector[] arrayOfVector = new Vector[paramArrayOfVector.length];
    int i = 0;
    while (i != paramArrayOfVector.length)
    {
      arrayOfVector[i] = new Vector();
      Enumeration localEnumeration = paramArrayOfVector[i].elements();
      while (localEnumeration.hasMoreElements()) {
        arrayOfVector[i].addElement(localEnumeration.nextElement());
      }
      i += 1;
    }
    return arrayOfVector;
  }
  
  static Treehash[] ˊ(Treehash[] paramArrayOfTreehash)
  {
    if (paramArrayOfTreehash == null) {
      return null;
    }
    Treehash[] arrayOfTreehash = new Treehash[paramArrayOfTreehash.length];
    System.arraycopy(paramArrayOfTreehash, 0, arrayOfTreehash, 0, paramArrayOfTreehash.length);
    return arrayOfTreehash;
  }
  
  static byte[][] ˊ(byte[][] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    byte[][] arrayOfByte = new byte[paramArrayOfByte.length][];
    int i = 0;
    while (i != paramArrayOfByte.length)
    {
      arrayOfByte[i] = Arrays.І(paramArrayOfByte[i]);
      i += 1;
    }
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSUtils
 * JD-Core Version:    0.7.0.1
 */