package org.spongycastle.jce.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralSubtree;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Strings;

public class PKIXNameConstraintValidator
{
  private Set bbA;
  private Set bbB;
  private Set bbC;
  private Set bbt = new HashSet();
  private Set bbu = new HashSet();
  private Set bbv = new HashSet();
  private Set bbw = new HashSet();
  private Set bbx = new HashSet();
  private Set bby;
  private Set bbz;
  
  private boolean equals(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == paramObject2) {
      return true;
    }
    if ((paramObject1 == null) || (paramObject2 == null)) {
      return false;
    }
    if (((paramObject1 instanceof byte[])) && ((paramObject2 instanceof byte[]))) {
      return Arrays.ﹺ((byte[])paramObject1, (byte[])paramObject2);
    }
    return paramObject1.equals(paramObject2);
  }
  
  private boolean ʳ(String paramString1, String paramString2)
  {
    String str = paramString1.substring(paramString1.indexOf('@') + 1);
    if (paramString2.indexOf('@') != -1)
    {
      if (paramString1.equalsIgnoreCase(paramString2)) {
        return true;
      }
    }
    else if (paramString2.charAt(0) != '.')
    {
      if (str.equalsIgnoreCase(paramString2)) {
        return true;
      }
    }
    else if (ʴ(str, paramString2)) {
      return true;
    }
    return false;
  }
  
  private boolean ʴ(String paramString1, String paramString2)
  {
    String str = paramString2;
    if (paramString2.startsWith(".")) {
      str = paramString2.substring(1);
    }
    paramString2 = Strings.ˊ(str, '.');
    paramString1 = Strings.ˊ(paramString1, '.');
    if (paramString1.length <= paramString2.length) {
      return false;
    }
    int j = paramString1.length - paramString2.length;
    int i = -1;
    while (i < paramString2.length)
    {
      if (i == -1)
      {
        if (paramString1[(i + j)].equals("")) {
          return false;
        }
      }
      else if (!paramString2[i].equalsIgnoreCase(paramString1[(i + j)])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static byte[] ʹ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    while (i < paramArrayOfByte1.length)
    {
      if ((paramArrayOfByte1[i] & 0xFFFF) > (paramArrayOfByte2[i] & 0xFFFF)) {
        return paramArrayOfByte1;
      }
      i += 1;
    }
    return paramArrayOfByte2;
  }
  
  private void ʼ(Set paramSet, String paramString)
  {
    if (paramSet.isEmpty()) {
      return;
    }
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      if (ˆ(paramString, (String)paramSet.next())) {
        throw new PKIXNameConstraintValidatorException("URI is from an excluded subtree.");
      }
    }
  }
  
  private Set ʽ(Set paramSet, String paramString)
  {
    if (paramSet.isEmpty())
    {
      if (paramString == null) {
        return paramSet;
      }
      paramSet.add(paramString);
      return paramSet;
    }
    HashSet localHashSet = new HashSet();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      ˋ((String)paramSet.next(), paramString, localHashSet);
    }
    return localHashSet;
  }
  
  private boolean ˆ(String paramString1, String paramString2)
  {
    paramString1 = ﻨ(paramString1);
    if (!paramString2.startsWith("."))
    {
      if (paramString1.equalsIgnoreCase(paramString2)) {
        return true;
      }
    }
    else if (ʴ(paramString1, paramString2)) {
      return true;
    }
    return false;
  }
  
  private Set ˊ(Set paramSet, String paramString)
  {
    if (paramSet.isEmpty())
    {
      if (paramString == null) {
        return paramSet;
      }
      paramSet.add(paramString);
      return paramSet;
    }
    HashSet localHashSet = new HashSet();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      ˊ((String)paramSet.next(), paramString, localHashSet);
    }
    return localHashSet;
  }
  
  private Set ˊ(Set paramSet1, Set paramSet2)
  {
    HashSet localHashSet = new HashSet();
    paramSet2 = paramSet2.iterator();
    while (paramSet2.hasNext())
    {
      ASN1Sequence localASN1Sequence1 = ASN1Sequence.ﹾ(((GeneralSubtree)paramSet2.next()).hC().hw().ez());
      if (paramSet1 == null)
      {
        if (localASN1Sequence1 != null) {
          localHashSet.add(localASN1Sequence1);
        }
      }
      else
      {
        Iterator localIterator = paramSet1.iterator();
        while (localIterator.hasNext())
        {
          ASN1Sequence localASN1Sequence2 = (ASN1Sequence)localIterator.next();
          if (ˊ(localASN1Sequence1, localASN1Sequence2)) {
            localHashSet.add(localASN1Sequence1);
          } else if (ˊ(localASN1Sequence2, localASN1Sequence1)) {
            localHashSet.add(localASN1Sequence2);
          }
        }
      }
    }
    return localHashSet;
  }
  
  private Set ˊ(Set paramSet, byte[] paramArrayOfByte)
  {
    if (paramSet.isEmpty())
    {
      if (paramArrayOfByte == null) {
        return paramSet;
      }
      paramSet.add(paramArrayOfByte);
      return paramSet;
    }
    HashSet localHashSet = new HashSet();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localHashSet.addAll(ـ((byte[])paramSet.next(), paramArrayOfByte));
    }
    return localHashSet;
  }
  
  private void ˊ(String paramString1, String paramString2, Set paramSet)
  {
    if (paramString1.indexOf('@') != -1)
    {
      String str = paramString1.substring(paramString1.indexOf('@') + 1);
      if (paramString2.indexOf('@') != -1)
      {
        if (paramString1.equalsIgnoreCase(paramString2))
        {
          paramSet.add(paramString1);
        }
        else
        {
          paramSet.add(paramString1);
          paramSet.add(paramString2);
        }
      }
      else if (paramString2.startsWith("."))
      {
        if (ʴ(str, paramString2))
        {
          paramSet.add(paramString2);
        }
        else
        {
          paramSet.add(paramString1);
          paramSet.add(paramString2);
        }
      }
      else if (str.equalsIgnoreCase(paramString2))
      {
        paramSet.add(paramString2);
      }
      else
      {
        paramSet.add(paramString1);
        paramSet.add(paramString2);
      }
      return;
    }
    if (paramString1.startsWith("."))
    {
      if (paramString2.indexOf('@') != -1)
      {
        if (ʴ(paramString2.substring(paramString1.indexOf('@') + 1), paramString1))
        {
          paramSet.add(paramString1);
        }
        else
        {
          paramSet.add(paramString1);
          paramSet.add(paramString2);
        }
        return;
      }
      if (paramString2.startsWith("."))
      {
        if ((ʴ(paramString1, paramString2)) || (paramString1.equalsIgnoreCase(paramString2)))
        {
          paramSet.add(paramString2);
          return;
        }
        if (ʴ(paramString2, paramString1))
        {
          paramSet.add(paramString1);
          return;
        }
        paramSet.add(paramString1);
        paramSet.add(paramString2);
        return;
      }
      if (ʴ(paramString2, paramString1))
      {
        paramSet.add(paramString1);
        return;
      }
      paramSet.add(paramString1);
      paramSet.add(paramString2);
      return;
    }
    if (paramString2.indexOf('@') != -1)
    {
      if (paramString2.substring(paramString1.indexOf('@') + 1).equalsIgnoreCase(paramString1))
      {
        paramSet.add(paramString1);
      }
      else
      {
        paramSet.add(paramString1);
        paramSet.add(paramString2);
      }
      return;
    }
    if (paramString2.startsWith("."))
    {
      if (ʴ(paramString1, paramString2))
      {
        paramSet.add(paramString2);
        return;
      }
      paramSet.add(paramString1);
      paramSet.add(paramString2);
      return;
    }
    if (paramString1.equalsIgnoreCase(paramString2))
    {
      paramSet.add(paramString1);
      return;
    }
    paramSet.add(paramString1);
    paramSet.add(paramString2);
  }
  
  private void ˊ(Set paramSet, ASN1Sequence paramASN1Sequence)
  {
    if (paramSet == null) {
      return;
    }
    if ((paramSet.isEmpty()) && (paramASN1Sequence.size() == 0)) {
      return;
    }
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      if (ˊ(paramASN1Sequence, (ASN1Sequence)paramSet.next())) {
        return;
      }
    }
    throw new PKIXNameConstraintValidatorException("Subject distinguished name is not from a permitted subtree");
  }
  
  private boolean ˊ(Collection paramCollection1, Collection paramCollection2)
  {
    if (paramCollection1 == paramCollection2) {
      return true;
    }
    if ((paramCollection1 == null) || (paramCollection2 == null)) {
      return false;
    }
    if (paramCollection1.size() != paramCollection2.size()) {
      return false;
    }
    paramCollection1 = paramCollection1.iterator();
    while (paramCollection1.hasNext())
    {
      Object localObject = paramCollection1.next();
      Iterator localIterator = paramCollection2.iterator();
      int j = 0;
      int i;
      for (;;)
      {
        i = j;
        if (!localIterator.hasNext()) {
          break;
        }
        if (equals(localObject, localIterator.next()))
        {
          i = 1;
          break;
        }
      }
      if (i == 0) {
        return false;
      }
    }
    return true;
  }
  
  private static boolean ˊ(ASN1Sequence paramASN1Sequence1, ASN1Sequence paramASN1Sequence2)
  {
    if (paramASN1Sequence2.size() < 1) {
      return false;
    }
    if (paramASN1Sequence2.size() > paramASN1Sequence1.size()) {
      return false;
    }
    int i = paramASN1Sequence2.size() - 1;
    while (i >= 0)
    {
      if (!paramASN1Sequence2.ϲ(i).equals(paramASN1Sequence1.ϲ(i))) {
        return false;
      }
      i -= 1;
    }
    return true;
  }
  
  private Set ˋ(Set paramSet1, Set paramSet2)
  {
    HashSet localHashSet = new HashSet();
    paramSet2 = paramSet2.iterator();
    while (paramSet2.hasNext())
    {
      String str = ˎ(((GeneralSubtree)paramSet2.next()).hC());
      if (paramSet1 == null)
      {
        if (str != null) {
          localHashSet.add(str);
        }
      }
      else
      {
        Iterator localIterator = paramSet1.iterator();
        while (localIterator.hasNext()) {
          ˎ(str, (String)localIterator.next(), localHashSet);
        }
      }
    }
    return localHashSet;
  }
  
  private void ˋ(String paramString1, String paramString2, Set paramSet)
  {
    if (paramString1.indexOf('@') != -1)
    {
      String str = paramString1.substring(paramString1.indexOf('@') + 1);
      if (paramString2.indexOf('@') != -1)
      {
        if (paramString1.equalsIgnoreCase(paramString2))
        {
          paramSet.add(paramString1);
        }
        else
        {
          paramSet.add(paramString1);
          paramSet.add(paramString2);
        }
      }
      else if (paramString2.startsWith("."))
      {
        if (ʴ(str, paramString2))
        {
          paramSet.add(paramString2);
        }
        else
        {
          paramSet.add(paramString1);
          paramSet.add(paramString2);
        }
      }
      else if (str.equalsIgnoreCase(paramString2))
      {
        paramSet.add(paramString2);
      }
      else
      {
        paramSet.add(paramString1);
        paramSet.add(paramString2);
      }
      return;
    }
    if (paramString1.startsWith("."))
    {
      if (paramString2.indexOf('@') != -1)
      {
        if (ʴ(paramString2.substring(paramString1.indexOf('@') + 1), paramString1))
        {
          paramSet.add(paramString1);
        }
        else
        {
          paramSet.add(paramString1);
          paramSet.add(paramString2);
        }
        return;
      }
      if (paramString2.startsWith("."))
      {
        if ((ʴ(paramString1, paramString2)) || (paramString1.equalsIgnoreCase(paramString2)))
        {
          paramSet.add(paramString2);
          return;
        }
        if (ʴ(paramString2, paramString1))
        {
          paramSet.add(paramString1);
          return;
        }
        paramSet.add(paramString1);
        paramSet.add(paramString2);
        return;
      }
      if (ʴ(paramString2, paramString1))
      {
        paramSet.add(paramString1);
        return;
      }
      paramSet.add(paramString1);
      paramSet.add(paramString2);
      return;
    }
    if (paramString2.indexOf('@') != -1)
    {
      if (paramString2.substring(paramString1.indexOf('@') + 1).equalsIgnoreCase(paramString1))
      {
        paramSet.add(paramString1);
      }
      else
      {
        paramSet.add(paramString1);
        paramSet.add(paramString2);
      }
      return;
    }
    if (paramString2.startsWith("."))
    {
      if (ʴ(paramString1, paramString2))
      {
        paramSet.add(paramString2);
        return;
      }
      paramSet.add(paramString1);
      paramSet.add(paramString2);
      return;
    }
    if (paramString1.equalsIgnoreCase(paramString2))
    {
      paramSet.add(paramString1);
      return;
    }
    paramSet.add(paramString1);
    paramSet.add(paramString2);
  }
  
  private void ˋ(Set paramSet, String paramString)
  {
    if (paramSet == null) {
      return;
    }
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext()) {
      if (ʳ(paramString, (String)localIterator.next())) {
        return;
      }
    }
    if ((paramString.length() == 0) && (paramSet.size() == 0)) {
      return;
    }
    throw new PKIXNameConstraintValidatorException("Subject email address is not from a permitted subtree.");
  }
  
  private void ˋ(Set paramSet, ASN1Sequence paramASN1Sequence)
  {
    if (paramSet.isEmpty()) {
      return;
    }
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      if (ˊ(paramASN1Sequence, (ASN1Sequence)paramSet.next())) {
        throw new PKIXNameConstraintValidatorException("Subject distinguished name is from an excluded subtree");
      }
    }
  }
  
  private void ˋ(Set paramSet, byte[] paramArrayOfByte)
  {
    if (paramSet == null) {
      return;
    }
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext()) {
      if (ﾞ(paramArrayOfByte, (byte[])localIterator.next())) {
        return;
      }
    }
    if ((paramArrayOfByte.length == 0) && (paramSet.size() == 0)) {
      return;
    }
    throw new PKIXNameConstraintValidatorException("IP is not from a permitted subtree.");
  }
  
  private byte[][] ˋ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    int j = paramArrayOfByte1.length;
    byte[] arrayOfByte1 = new byte[j];
    byte[] arrayOfByte2 = new byte[j];
    byte[] arrayOfByte3 = new byte[j];
    byte[] arrayOfByte4 = new byte[j];
    int i = 0;
    while (i < j)
    {
      arrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] & paramArrayOfByte2[i]));
      arrayOfByte2[i] = ((byte)(paramArrayOfByte1[i] & paramArrayOfByte2[i] | paramArrayOfByte2[i] ^ 0xFFFFFFFF));
      arrayOfByte3[i] = ((byte)(paramArrayOfByte3[i] & paramArrayOfByte4[i]));
      arrayOfByte4[i] = ((byte)(paramArrayOfByte3[i] & paramArrayOfByte4[i] | paramArrayOfByte4[i] ^ 0xFFFFFFFF));
      i += 1;
    }
    return new byte[][] { arrayOfByte1, arrayOfByte2, arrayOfByte3, arrayOfByte4 };
  }
  
  private String ˎ(Set paramSet)
  {
    Object localObject = "" + "[";
    Iterator localIterator = paramSet.iterator();
    for (paramSet = (Set)localObject; localIterator.hasNext(); paramSet = paramSet + ᔋ((byte[])localIterator.next()) + ",") {}
    localObject = paramSet;
    if (paramSet.length() > 1) {
      localObject = paramSet.substring(0, paramSet.length() - 1);
    }
    return (String)localObject + "]";
  }
  
  private String ˎ(GeneralName paramGeneralName)
  {
    return DERIA5String.ˀ(paramGeneralName.hw()).getString();
  }
  
  private Set ˎ(Set paramSet1, Set paramSet2)
  {
    HashSet localHashSet = new HashSet();
    paramSet2 = paramSet2.iterator();
    while (paramSet2.hasNext())
    {
      byte[] arrayOfByte = ASN1OctetString.ﹸ(((GeneralSubtree)paramSet2.next()).hC().hw()).eM();
      if (paramSet1 == null)
      {
        if (arrayOfByte != null) {
          localHashSet.add(arrayOfByte);
        }
      }
      else
      {
        Iterator localIterator = paramSet1.iterator();
        while (localIterator.hasNext()) {
          localHashSet.addAll(ᐧ((byte[])localIterator.next(), arrayOfByte));
        }
      }
    }
    return localHashSet;
  }
  
  private Set ˎ(Set paramSet, ASN1Sequence paramASN1Sequence)
  {
    if (paramSet.isEmpty())
    {
      if (paramASN1Sequence == null) {
        return paramSet;
      }
      paramSet.add(paramASN1Sequence);
      return paramSet;
    }
    HashSet localHashSet = new HashSet();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      ASN1Sequence localASN1Sequence = (ASN1Sequence)paramSet.next();
      if (ˊ(paramASN1Sequence, localASN1Sequence))
      {
        localHashSet.add(localASN1Sequence);
      }
      else if (ˊ(localASN1Sequence, paramASN1Sequence))
      {
        localHashSet.add(paramASN1Sequence);
      }
      else
      {
        localHashSet.add(localASN1Sequence);
        localHashSet.add(paramASN1Sequence);
      }
    }
    return localHashSet;
  }
  
  private void ˎ(String paramString1, String paramString2, Set paramSet)
  {
    if (paramString1.indexOf('@') != -1)
    {
      String str = paramString1.substring(paramString1.indexOf('@') + 1);
      if (paramString2.indexOf('@') != -1)
      {
        if (paramString1.equalsIgnoreCase(paramString2)) {
          paramSet.add(paramString1);
        }
      }
      else if (paramString2.startsWith("."))
      {
        if (ʴ(str, paramString2)) {
          paramSet.add(paramString1);
        }
      }
      else if (str.equalsIgnoreCase(paramString2)) {
        paramSet.add(paramString1);
      }
      return;
    }
    if (paramString1.startsWith("."))
    {
      if (paramString2.indexOf('@') != -1)
      {
        if (ʴ(paramString2.substring(paramString1.indexOf('@') + 1), paramString1)) {
          paramSet.add(paramString2);
        }
        return;
      }
      if (paramString2.startsWith("."))
      {
        if ((ʴ(paramString1, paramString2)) || (paramString1.equalsIgnoreCase(paramString2)))
        {
          paramSet.add(paramString1);
          return;
        }
        if (ʴ(paramString2, paramString1)) {
          paramSet.add(paramString2);
        }
      }
      else if (ʴ(paramString2, paramString1))
      {
        paramSet.add(paramString2);
      }
    }
    else
    {
      if (paramString2.indexOf('@') != -1)
      {
        if (paramString2.substring(paramString2.indexOf('@') + 1).equalsIgnoreCase(paramString1)) {
          paramSet.add(paramString2);
        }
        return;
      }
      if (paramString2.startsWith("."))
      {
        if (ʴ(paramString1, paramString2)) {
          paramSet.add(paramString1);
        }
      }
      else if (paramString1.equalsIgnoreCase(paramString2)) {
        paramSet.add(paramString1);
      }
    }
  }
  
  private void ˎ(Set paramSet, String paramString)
  {
    if (paramSet.isEmpty()) {
      return;
    }
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      if (ʳ(paramString, (String)paramSet.next())) {
        throw new PKIXNameConstraintValidatorException("Email address is from an excluded subtree.");
      }
    }
  }
  
  private void ˎ(Set paramSet, byte[] paramArrayOfByte)
  {
    if (paramSet.isEmpty()) {
      return;
    }
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      if (ﾞ(paramArrayOfByte, (byte[])paramSet.next())) {
        throw new PKIXNameConstraintValidatorException("IP is from an excluded subtree.");
      }
    }
  }
  
  private int ˏ(Collection paramCollection)
  {
    if (paramCollection == null) {
      return 0;
    }
    int i = 0;
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject = paramCollection.next();
      if ((localObject instanceof byte[])) {
        i += Arrays.hashCode((byte[])localObject);
      } else {
        i += localObject.hashCode();
      }
    }
    return i;
  }
  
  private Set ˏ(Set paramSet1, Set paramSet2)
  {
    HashSet localHashSet = new HashSet();
    paramSet2 = paramSet2.iterator();
    while (paramSet2.hasNext())
    {
      String str1 = ˎ(((GeneralSubtree)paramSet2.next()).hC());
      if (paramSet1 == null)
      {
        if (str1 != null) {
          localHashSet.add(str1);
        }
      }
      else
      {
        Iterator localIterator = paramSet1.iterator();
        while (localIterator.hasNext())
        {
          String str2 = (String)localIterator.next();
          if (ʴ(str2, str1)) {
            localHashSet.add(str2);
          } else if (ʴ(str1, str2)) {
            localHashSet.add(str1);
          }
        }
      }
    }
    return localHashSet;
  }
  
  private void ˏ(String paramString1, String paramString2, Set paramSet)
  {
    if (paramString1.indexOf('@') != -1)
    {
      String str = paramString1.substring(paramString1.indexOf('@') + 1);
      if (paramString2.indexOf('@') != -1)
      {
        if (paramString1.equalsIgnoreCase(paramString2)) {
          paramSet.add(paramString1);
        }
      }
      else if (paramString2.startsWith("."))
      {
        if (ʴ(str, paramString2)) {
          paramSet.add(paramString1);
        }
      }
      else if (str.equalsIgnoreCase(paramString2)) {
        paramSet.add(paramString1);
      }
      return;
    }
    if (paramString1.startsWith("."))
    {
      if (paramString2.indexOf('@') != -1)
      {
        if (ʴ(paramString2.substring(paramString1.indexOf('@') + 1), paramString1)) {
          paramSet.add(paramString2);
        }
        return;
      }
      if (paramString2.startsWith("."))
      {
        if ((ʴ(paramString1, paramString2)) || (paramString1.equalsIgnoreCase(paramString2)))
        {
          paramSet.add(paramString1);
          return;
        }
        if (ʴ(paramString2, paramString1)) {
          paramSet.add(paramString2);
        }
      }
      else if (ʴ(paramString2, paramString1))
      {
        paramSet.add(paramString2);
      }
    }
    else
    {
      if (paramString2.indexOf('@') != -1)
      {
        if (paramString2.substring(paramString2.indexOf('@') + 1).equalsIgnoreCase(paramString1)) {
          paramSet.add(paramString2);
        }
        return;
      }
      if (paramString2.startsWith("."))
      {
        if (ʴ(paramString1, paramString2)) {
          paramSet.add(paramString1);
        }
      }
      else if (paramString1.equalsIgnoreCase(paramString2)) {
        paramSet.add(paramString1);
      }
    }
  }
  
  private void ˏ(Set paramSet, String paramString)
  {
    if (paramSet == null) {
      return;
    }
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((ʴ(paramString, str)) || (paramString.equalsIgnoreCase(str))) {
        return;
      }
    }
    if ((paramString.length() == 0) && (paramSet.size() == 0)) {
      return;
    }
    throw new PKIXNameConstraintValidatorException("DNS is not from a permitted subtree.");
  }
  
  private void ͺ(Set paramSet, String paramString)
  {
    if (paramSet == null) {
      return;
    }
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext()) {
      if (ˆ(paramString, (String)localIterator.next())) {
        return;
      }
    }
    if ((paramString.length() == 0) && (paramSet.size() == 0)) {
      return;
    }
    throw new PKIXNameConstraintValidatorException("URI is not from a permitted subtree.");
  }
  
  private static byte[] ՙ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    while (i < paramArrayOfByte1.length)
    {
      if ((paramArrayOfByte1[i] & 0xFFFF) < (paramArrayOfByte2[i] & 0xFFFF)) {
        return paramArrayOfByte1;
      }
      i += 1;
    }
    return paramArrayOfByte2;
  }
  
  private static int י(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (Arrays.ﹺ(paramArrayOfByte1, paramArrayOfByte2)) {
      return 0;
    }
    if (Arrays.ﹺ(ʹ(paramArrayOfByte1, paramArrayOfByte2), paramArrayOfByte1)) {
      return 1;
    }
    return -1;
  }
  
  private Set ـ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    HashSet localHashSet = new HashSet();
    if (Arrays.ﹺ(paramArrayOfByte1, paramArrayOfByte2))
    {
      localHashSet.add(paramArrayOfByte1);
      return localHashSet;
    }
    localHashSet.add(paramArrayOfByte1);
    localHashSet.add(paramArrayOfByte2);
    return localHashSet;
  }
  
  private static byte[] ٴ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length];
    int i = 0;
    while (i < paramArrayOfByte1.length)
    {
      arrayOfByte[i] = ((byte)(paramArrayOfByte1[i] | paramArrayOfByte2[i]));
      i += 1;
    }
    return arrayOfByte;
  }
  
  private Set ᐝ(Set paramSet1, Set paramSet2)
  {
    HashSet localHashSet = new HashSet();
    paramSet2 = paramSet2.iterator();
    while (paramSet2.hasNext())
    {
      String str = ˎ(((GeneralSubtree)paramSet2.next()).hC());
      if (paramSet1 == null)
      {
        if (str != null) {
          localHashSet.add(str);
        }
      }
      else
      {
        Iterator localIterator = paramSet1.iterator();
        while (localIterator.hasNext()) {
          ˏ((String)localIterator.next(), str, localHashSet);
        }
      }
    }
    return localHashSet;
  }
  
  private void ᐝ(Set paramSet, String paramString)
  {
    if (paramSet.isEmpty()) {
      return;
    }
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      String str = (String)paramSet.next();
      if ((ʴ(paramString, str)) || (paramString.equalsIgnoreCase(str))) {
        throw new PKIXNameConstraintValidatorException("DNS is from an excluded subtree.");
      }
    }
  }
  
  private Set ᐧ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1.length != paramArrayOfByte2.length) {
      return Collections.EMPTY_SET;
    }
    paramArrayOfByte2 = ﹳ(paramArrayOfByte1, paramArrayOfByte2);
    byte b1 = paramArrayOfByte2[0];
    paramArrayOfByte1 = paramArrayOfByte2[1];
    byte b2 = paramArrayOfByte2[2];
    paramArrayOfByte2 = paramArrayOfByte2[3];
    byte[][] arrayOfByte = ˋ(b1, paramArrayOfByte1, b2, paramArrayOfByte2);
    byte[] arrayOfByte1 = ՙ(arrayOfByte[1], arrayOfByte[3]);
    if (י(ʹ(arrayOfByte[0], arrayOfByte[2]), arrayOfByte1) == 1) {
      return Collections.EMPTY_SET;
    }
    return Collections.singleton(ᐨ(ٴ(arrayOfByte[0], arrayOfByte[2]), ٴ(paramArrayOfByte1, paramArrayOfByte2)));
  }
  
  private byte[] ᐨ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = paramArrayOfByte1.length;
    byte[] arrayOfByte = new byte[i * 2];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, i);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, i, i);
    return arrayOfByte;
  }
  
  private String ᔋ(byte[] paramArrayOfByte)
  {
    String str = "";
    int i = 0;
    while (i < paramArrayOfByte.length / 2)
    {
      str = str + Integer.toString(paramArrayOfByte[i] & 0xFF) + ".";
      i += 1;
    }
    str = str.substring(0, str.length() - 1);
    str = str + "/";
    i = paramArrayOfByte.length / 2;
    while (i < paramArrayOfByte.length)
    {
      str = str + Integer.toString(paramArrayOfByte[i] & 0xFF) + ".";
      i += 1;
    }
    return str.substring(0, str.length() - 1);
  }
  
  private byte[][] ﹳ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = paramArrayOfByte1.length / 2;
    byte[] arrayOfByte1 = new byte[i];
    byte[] arrayOfByte2 = new byte[i];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte1, 0, i);
    System.arraycopy(paramArrayOfByte1, i, arrayOfByte2, 0, i);
    paramArrayOfByte1 = new byte[i];
    byte[] arrayOfByte3 = new byte[i];
    System.arraycopy(paramArrayOfByte2, 0, paramArrayOfByte1, 0, i);
    System.arraycopy(paramArrayOfByte2, i, arrayOfByte3, 0, i);
    return new byte[][] { arrayOfByte1, arrayOfByte2, paramArrayOfByte1, arrayOfByte3 };
  }
  
  private static String ﻨ(String paramString)
  {
    String str = paramString.substring(paramString.indexOf(':') + 1);
    paramString = str;
    if (str.indexOf("//") != -1) {
      paramString = str.substring(str.indexOf("//") + 2);
    }
    str = paramString;
    if (paramString.lastIndexOf(':') != -1) {
      str = paramString.substring(0, paramString.lastIndexOf(':'));
    }
    paramString = str.substring(str.indexOf(':') + 1);
    str = paramString.substring(paramString.indexOf('@') + 1);
    paramString = str;
    if (str.indexOf('/') != -1) {
      paramString = str.substring(0, str.indexOf('/'));
    }
    return paramString;
  }
  
  private boolean ﾞ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = paramArrayOfByte1.length;
    if (j != paramArrayOfByte2.length / 2) {
      return false;
    }
    byte[] arrayOfByte1 = new byte[j];
    System.arraycopy(paramArrayOfByte2, j, arrayOfByte1, 0, j);
    byte[] arrayOfByte2 = new byte[j];
    byte[] arrayOfByte3 = new byte[j];
    int i = 0;
    while (i < j)
    {
      arrayOfByte2[i] = ((byte)(paramArrayOfByte2[i] & arrayOfByte1[i]));
      arrayOfByte3[i] = ((byte)(paramArrayOfByte1[i] & arrayOfByte1[i]));
      i += 1;
    }
    return Arrays.ﹺ(arrayOfByte2, arrayOfByte3);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PKIXNameConstraintValidator)) {
      return false;
    }
    paramObject = (PKIXNameConstraintValidator)paramObject;
    return (ˊ(paramObject.bbt, this.bbt)) && (ˊ(paramObject.bbu, this.bbu)) && (ˊ(paramObject.bbv, this.bbv)) && (ˊ(paramObject.bbx, this.bbx)) && (ˊ(paramObject.bbw, this.bbw)) && (ˊ(paramObject.bby, this.bby)) && (ˊ(paramObject.bbz, this.bbz)) && (ˊ(paramObject.bbA, this.bbA)) && (ˊ(paramObject.bbC, this.bbC)) && (ˊ(paramObject.bbB, this.bbB));
  }
  
  public int hashCode()
  {
    return ˏ(this.bbt) + ˏ(this.bbu) + ˏ(this.bbv) + ˏ(this.bbx) + ˏ(this.bbw) + ˏ(this.bby) + ˏ(this.bbz) + ˏ(this.bbA) + ˏ(this.bbC) + ˏ(this.bbB);
  }
  
  public String toString()
  {
    Object localObject2 = "" + "permitted:\n";
    Object localObject1 = localObject2;
    if (this.bby != null)
    {
      localObject1 = (String)localObject2 + "DN:\n";
      localObject1 = (String)localObject1 + this.bby.toString() + "\n";
    }
    localObject2 = localObject1;
    if (this.bbz != null)
    {
      localObject1 = (String)localObject1 + "DNS:\n";
      localObject2 = (String)localObject1 + this.bbz.toString() + "\n";
    }
    localObject1 = localObject2;
    if (this.bbA != null)
    {
      localObject1 = (String)localObject2 + "Email:\n";
      localObject1 = (String)localObject1 + this.bbA.toString() + "\n";
    }
    localObject2 = localObject1;
    if (this.bbB != null)
    {
      localObject1 = (String)localObject1 + "URI:\n";
      localObject2 = (String)localObject1 + this.bbB.toString() + "\n";
    }
    localObject1 = localObject2;
    if (this.bbC != null)
    {
      localObject1 = (String)localObject2 + "IP:\n";
      localObject1 = (String)localObject1 + ˎ(this.bbC) + "\n";
    }
    localObject2 = (String)localObject1 + "excluded:\n";
    localObject1 = localObject2;
    if (!this.bbt.isEmpty())
    {
      localObject1 = (String)localObject2 + "DN:\n";
      localObject1 = (String)localObject1 + this.bbt.toString() + "\n";
    }
    localObject2 = localObject1;
    if (!this.bbu.isEmpty())
    {
      localObject1 = (String)localObject1 + "DNS:\n";
      localObject2 = (String)localObject1 + this.bbu.toString() + "\n";
    }
    localObject1 = localObject2;
    if (!this.bbv.isEmpty())
    {
      localObject1 = (String)localObject2 + "Email:\n";
      localObject1 = (String)localObject1 + this.bbv.toString() + "\n";
    }
    localObject2 = localObject1;
    if (!this.bbw.isEmpty())
    {
      localObject1 = (String)localObject1 + "URI:\n";
      localObject2 = (String)localObject1 + this.bbw.toString() + "\n";
    }
    localObject1 = localObject2;
    if (!this.bbx.isEmpty())
    {
      localObject1 = (String)localObject2 + "IP:\n";
      localObject1 = (String)localObject1 + ˎ(this.bbx) + "\n";
    }
    return localObject1;
  }
  
  protected Set ʻ(Set paramSet, String paramString)
  {
    if (paramSet.isEmpty())
    {
      if (paramString == null) {
        return paramSet;
      }
      paramSet.add(paramString);
      return paramSet;
    }
    HashSet localHashSet = new HashSet();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      String str = (String)paramSet.next();
      if (ʴ(str, paramString))
      {
        localHashSet.add(paramString);
      }
      else if (ʴ(paramString, str))
      {
        localHashSet.add(str);
      }
      else
      {
        localHashSet.add(str);
        localHashSet.add(paramString);
      }
    }
    return localHashSet;
  }
  
  public void ʻ(ASN1Sequence paramASN1Sequence)
  {
    ˋ(this.bbt, paramASN1Sequence);
  }
  
  public void ˊ(GeneralName paramGeneralName)
  {
    switch (paramGeneralName.eW())
    {
    default: 
    case 1: 
      ˋ(this.bbA, ˎ(paramGeneralName));
      return;
    case 2: 
      ˏ(this.bbz, DERIA5String.ˀ(paramGeneralName.hw()).getString());
      return;
    case 4: 
      ᐝ(ASN1Sequence.ﹾ(paramGeneralName.hw().ez()));
      return;
    case 6: 
      ͺ(this.bbB, DERIA5String.ˀ(paramGeneralName.hw()).getString());
      return;
    case 7: 
      paramGeneralName = ASN1OctetString.ﹸ(paramGeneralName.hw()).eM();
      ˋ(this.bbC, paramGeneralName);
    }
  }
  
  public void ˊ(GeneralSubtree paramGeneralSubtree)
  {
    paramGeneralSubtree = paramGeneralSubtree.hC();
    switch (paramGeneralSubtree.eW())
    {
    default: 
    case 1: 
      this.bbv = ˊ(this.bbv, ˎ(paramGeneralSubtree));
      return;
    case 2: 
      this.bbu = ʻ(this.bbu, ˎ(paramGeneralSubtree));
      return;
    case 4: 
      this.bbt = ˎ(this.bbt, (ASN1Sequence)paramGeneralSubtree.hw().ez());
      return;
    case 6: 
      this.bbw = ʽ(this.bbw, ˎ(paramGeneralSubtree));
      return;
    case 7: 
      this.bbx = ˊ(this.bbx, ASN1OctetString.ﹸ(paramGeneralSubtree.hw()).eM());
    }
  }
  
  public void ˊ(GeneralSubtree[] paramArrayOfGeneralSubtree)
  {
    Object localObject = new HashMap();
    int i = 0;
    while (i != paramArrayOfGeneralSubtree.length)
    {
      GeneralSubtree localGeneralSubtree = paramArrayOfGeneralSubtree[i];
      Integer localInteger = Integers.valueOf(localGeneralSubtree.hC().eW());
      if (((Map)localObject).get(localInteger) == null) {
        ((Map)localObject).put(localInteger, new HashSet());
      }
      ((Set)((Map)localObject).get(localInteger)).add(localGeneralSubtree);
      i += 1;
    }
    paramArrayOfGeneralSubtree = ((Map)localObject).entrySet().iterator();
    while (paramArrayOfGeneralSubtree.hasNext())
    {
      localObject = (Map.Entry)paramArrayOfGeneralSubtree.next();
      switch (((Integer)((Map.Entry)localObject).getKey()).intValue())
      {
      default: 
        break;
      case 1: 
        this.bbA = ˋ(this.bbA, (Set)((Map.Entry)localObject).getValue());
        break;
      case 2: 
        this.bbz = ˏ(this.bbz, (Set)((Map.Entry)localObject).getValue());
        break;
      case 4: 
        this.bby = ˊ(this.bby, (Set)((Map.Entry)localObject).getValue());
        break;
      case 6: 
        this.bbB = ᐝ(this.bbB, (Set)((Map.Entry)localObject).getValue());
        break;
      case 7: 
        this.bbC = ˎ(this.bbC, (Set)((Map.Entry)localObject).getValue());
      }
    }
  }
  
  public void ˋ(GeneralName paramGeneralName)
  {
    switch (paramGeneralName.eW())
    {
    default: 
    case 1: 
      ˎ(this.bbv, ˎ(paramGeneralName));
      return;
    case 2: 
      ᐝ(this.bbu, DERIA5String.ˀ(paramGeneralName.hw()).getString());
      return;
    case 4: 
      ʻ(ASN1Sequence.ﹾ(paramGeneralName.hw().ez()));
      return;
    case 6: 
      ʼ(this.bbw, DERIA5String.ˀ(paramGeneralName.hw()).getString());
      return;
    case 7: 
      paramGeneralName = ASN1OctetString.ﹸ(paramGeneralName.hw()).eM();
      ˎ(this.bbx, paramGeneralName);
    }
  }
  
  public void ᐝ(ASN1Sequence paramASN1Sequence)
  {
    ˊ(this.bby, paramASN1Sequence);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.PKIXNameConstraintValidator
 * JD-Core Version:    0.7.0.1
 */