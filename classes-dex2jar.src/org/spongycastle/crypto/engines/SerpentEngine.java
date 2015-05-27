package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class SerpentEngine
  implements BlockCipher
{
  private boolean aIY;
  private int[] aLF;
  private int aLN;
  private int aLO;
  private int aLP;
  private int aLQ;
  
  private void jI()
  {
    int i = rotateLeft(this.aLN, 13);
    int j = rotateLeft(this.aLP, 3);
    int k = this.aLO;
    int m = this.aLQ;
    this.aLO = rotateLeft(k ^ i ^ j, 1);
    this.aLQ = rotateLeft(m ^ j ^ i << 3, 7);
    this.aLN = rotateLeft(this.aLO ^ i ^ this.aLQ, 5);
    this.aLP = rotateLeft(this.aLQ ^ j ^ this.aLO << 7, 22);
  }
  
  private void jJ()
  {
    int i = rotateRight(this.aLP, 22) ^ this.aLQ ^ this.aLO << 7;
    int j = rotateRight(this.aLN, 5) ^ this.aLO ^ this.aLQ;
    int k = rotateRight(this.aLQ, 7);
    int m = rotateRight(this.aLO, 1);
    this.aLQ = (k ^ i ^ j << 3);
    this.aLO = (m ^ j ^ i);
    this.aLP = rotateRight(i, 3);
    this.aLN = rotateRight(j, 13);
  }
  
  private int rotateLeft(int paramInt1, int paramInt2)
  {
    return paramInt1 << paramInt2 | paramInt1 >>> -paramInt2;
  }
  
  private int rotateRight(int paramInt1, int paramInt2)
  {
    return paramInt1 >>> paramInt2 | paramInt1 << -paramInt2;
  }
  
  private void ʹ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt3 ^ 0xFFFFFFFF;
    int m = paramInt4 ^ paramInt2 & i;
    int j = paramInt1 & m;
    this.aLQ = (j ^ paramInt2 ^ i);
    int k = paramInt2 | this.aLQ;
    this.aLO = (m ^ paramInt1 & k);
    paramInt4 = paramInt1 | paramInt4;
    this.aLN = (paramInt4 ^ i ^ k);
    this.aLP = (paramInt2 & paramInt4 ^ (paramInt1 ^ paramInt3 | j));
  }
  
  private void ʿ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int k = paramInt1 ^ paramInt4;
    int i = paramInt3 ^ k;
    int j = paramInt2 ^ i;
    this.aLQ = (paramInt1 & paramInt4 ^ j);
    paramInt1 ^= paramInt2 & k;
    this.aLP = ((paramInt3 | paramInt1) ^ j);
    paramInt2 = this.aLQ & (i ^ paramInt1);
    this.aLO = (i ^ 0xFFFFFFFF ^ paramInt2);
    this.aLN = (paramInt1 ^ 0xFFFFFFFF ^ paramInt2);
  }
  
  private void ˈ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt1 ^ 0xFFFFFFFF;
    int j = paramInt1 ^ paramInt2;
    paramInt2 = paramInt4 ^ (i | j);
    paramInt3 ^= paramInt2;
    this.aLP = (j ^ paramInt3);
    paramInt4 = i ^ paramInt4 & j;
    this.aLO = (this.aLP & paramInt4 ^ paramInt2);
    this.aLQ = (paramInt1 & paramInt2 ^ (this.aLO | paramInt3));
    this.aLN = (this.aLQ ^ paramInt3 ^ paramInt4);
  }
  
  private void ˉ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt2 ^ paramInt1 ^ 0xFFFFFFFF;
    paramInt1 = paramInt3 ^ (paramInt1 | i);
    this.aLP = (paramInt4 ^ paramInt1);
    paramInt2 ^= (paramInt4 | i);
    paramInt3 = i ^ this.aLP;
    this.aLQ = (paramInt1 & paramInt2 ^ paramInt3);
    paramInt2 = paramInt1 ^ paramInt2;
    this.aLO = (this.aLQ ^ paramInt2);
    this.aLN = (paramInt3 & paramInt2 ^ paramInt1);
  }
  
  private void ˋ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    this.aLQ = ᐧ(paramArrayOfByte1, paramInt1);
    this.aLP = ᐧ(paramArrayOfByte1, paramInt1 + 4);
    this.aLO = ᐧ(paramArrayOfByte1, paramInt1 + 8);
    this.aLN = ᐧ(paramArrayOfByte1, paramInt1 + 12);
    ʿ(this.aLF[0] ^ this.aLN, this.aLF[1] ^ this.aLO, this.aLF[2] ^ this.aLP, this.aLF[3] ^ this.aLQ);
    jI();
    ˉ(this.aLF[4] ^ this.aLN, this.aLF[5] ^ this.aLO, this.aLF[6] ^ this.aLP, this.aLF[7] ^ this.aLQ);
    jI();
    ˍ(this.aLF[8] ^ this.aLN, this.aLF[9] ^ this.aLO, this.aLF[10] ^ this.aLP, this.aLF[11] ^ this.aLQ);
    jI();
    ـ(this.aLF[12] ^ this.aLN, this.aLF[13] ^ this.aLO, this.aLF[14] ^ this.aLP, this.aLF[15] ^ this.aLQ);
    jI();
    ᐨ(this.aLF[16] ^ this.aLN, this.aLF[17] ^ this.aLO, this.aLF[18] ^ this.aLP, this.aLF[19] ^ this.aLQ);
    jI();
    ﾞ(this.aLF[20] ^ this.aLN, this.aLF[21] ^ this.aLO, this.aLF[22] ^ this.aLP, this.aLF[23] ^ this.aLQ);
    jI();
    ՙ(this.aLF[24] ^ this.aLN, this.aLF[25] ^ this.aLO, this.aLF[26] ^ this.aLP, this.aLF[27] ^ this.aLQ);
    jI();
    ٴ(this.aLF[28] ^ this.aLN, this.aLF[29] ^ this.aLO, this.aLF[30] ^ this.aLP, this.aLF[31] ^ this.aLQ);
    jI();
    ʿ(this.aLF[32] ^ this.aLN, this.aLF[33] ^ this.aLO, this.aLF[34] ^ this.aLP, this.aLF[35] ^ this.aLQ);
    jI();
    ˉ(this.aLF[36] ^ this.aLN, this.aLF[37] ^ this.aLO, this.aLF[38] ^ this.aLP, this.aLF[39] ^ this.aLQ);
    jI();
    ˍ(this.aLF[40] ^ this.aLN, this.aLF[41] ^ this.aLO, this.aLF[42] ^ this.aLP, this.aLF[43] ^ this.aLQ);
    jI();
    ـ(this.aLF[44] ^ this.aLN, this.aLF[45] ^ this.aLO, this.aLF[46] ^ this.aLP, this.aLF[47] ^ this.aLQ);
    jI();
    ᐨ(this.aLF[48] ^ this.aLN, this.aLF[49] ^ this.aLO, this.aLF[50] ^ this.aLP, this.aLF[51] ^ this.aLQ);
    jI();
    ﾞ(this.aLF[52] ^ this.aLN, this.aLF[53] ^ this.aLO, this.aLF[54] ^ this.aLP, this.aLF[55] ^ this.aLQ);
    jI();
    ՙ(this.aLF[56] ^ this.aLN, this.aLF[57] ^ this.aLO, this.aLF[58] ^ this.aLP, this.aLF[59] ^ this.aLQ);
    jI();
    ٴ(this.aLF[60] ^ this.aLN, this.aLF[61] ^ this.aLO, this.aLF[62] ^ this.aLP, this.aLF[63] ^ this.aLQ);
    jI();
    ʿ(this.aLF[64] ^ this.aLN, this.aLF[65] ^ this.aLO, this.aLF[66] ^ this.aLP, this.aLF[67] ^ this.aLQ);
    jI();
    ˉ(this.aLF[68] ^ this.aLN, this.aLF[69] ^ this.aLO, this.aLF[70] ^ this.aLP, this.aLF[71] ^ this.aLQ);
    jI();
    ˍ(this.aLF[72] ^ this.aLN, this.aLF[73] ^ this.aLO, this.aLF[74] ^ this.aLP, this.aLF[75] ^ this.aLQ);
    jI();
    ـ(this.aLF[76] ^ this.aLN, this.aLF[77] ^ this.aLO, this.aLF[78] ^ this.aLP, this.aLF[79] ^ this.aLQ);
    jI();
    ᐨ(this.aLF[80] ^ this.aLN, this.aLF[81] ^ this.aLO, this.aLF[82] ^ this.aLP, this.aLF[83] ^ this.aLQ);
    jI();
    ﾞ(this.aLF[84] ^ this.aLN, this.aLF[85] ^ this.aLO, this.aLF[86] ^ this.aLP, this.aLF[87] ^ this.aLQ);
    jI();
    ՙ(this.aLF[88] ^ this.aLN, this.aLF[89] ^ this.aLO, this.aLF[90] ^ this.aLP, this.aLF[91] ^ this.aLQ);
    jI();
    ٴ(this.aLF[92] ^ this.aLN, this.aLF[93] ^ this.aLO, this.aLF[94] ^ this.aLP, this.aLF[95] ^ this.aLQ);
    jI();
    ʿ(this.aLF[96] ^ this.aLN, this.aLF[97] ^ this.aLO, this.aLF[98] ^ this.aLP, this.aLF[99] ^ this.aLQ);
    jI();
    ˉ(this.aLF[100] ^ this.aLN, this.aLF[101] ^ this.aLO, this.aLF[102] ^ this.aLP, this.aLF[103] ^ this.aLQ);
    jI();
    ˍ(this.aLF[104] ^ this.aLN, this.aLF[105] ^ this.aLO, this.aLF[106] ^ this.aLP, this.aLF[107] ^ this.aLQ);
    jI();
    ـ(this.aLF[108] ^ this.aLN, this.aLF[109] ^ this.aLO, this.aLF[110] ^ this.aLP, this.aLF[111] ^ this.aLQ);
    jI();
    ᐨ(this.aLF[112] ^ this.aLN, this.aLF[113] ^ this.aLO, this.aLF[114] ^ this.aLP, this.aLF[115] ^ this.aLQ);
    jI();
    ﾞ(this.aLF[116] ^ this.aLN, this.aLF[117] ^ this.aLO, this.aLF[118] ^ this.aLP, this.aLF[119] ^ this.aLQ);
    jI();
    ՙ(this.aLF[120] ^ this.aLN, this.aLF[121] ^ this.aLO, this.aLF[122] ^ this.aLP, this.aLF[123] ^ this.aLQ);
    jI();
    ٴ(this.aLF[124] ^ this.aLN, this.aLF[125] ^ this.aLO, this.aLF[126] ^ this.aLP, this.aLF[127] ^ this.aLQ);
    ᐝ(this.aLF[''] ^ this.aLQ, paramArrayOfByte2, paramInt2);
    ᐝ(this.aLF[''] ^ this.aLP, paramArrayOfByte2, paramInt2 + 4);
    ᐝ(this.aLF[''] ^ this.aLO, paramArrayOfByte2, paramInt2 + 8);
    ᐝ(this.aLF[''] ^ this.aLN, paramArrayOfByte2, paramInt2 + 12);
  }
  
  private void ˌ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt4 = paramInt2 ^ paramInt4;
    int i = paramInt1 ^ paramInt2 & paramInt4;
    paramInt1 = paramInt4 ^ i;
    this.aLQ = (paramInt3 ^ paramInt1);
    paramInt2 ^= paramInt4 & i;
    this.aLO = (i ^ (this.aLQ | paramInt2));
    paramInt3 = this.aLO ^ 0xFFFFFFFF;
    paramInt2 = this.aLQ ^ paramInt2;
    this.aLN = (paramInt3 ^ paramInt2);
    this.aLP = ((paramInt3 | paramInt2) ^ paramInt1);
  }
  
  private void ˍ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt1 ^ 0xFFFFFFFF;
    int j = paramInt2 ^ paramInt4;
    this.aLN = (j ^ paramInt3 & i);
    int k = paramInt3 ^ i;
    paramInt2 &= (paramInt3 ^ this.aLN);
    this.aLQ = (k ^ paramInt2);
    this.aLP = ((paramInt4 | paramInt2) & (this.aLN | k) ^ paramInt1);
    this.aLO = (this.aLQ ^ j ^ this.aLP ^ (paramInt4 | i));
  }
  
  private void ˎ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    this.aLQ = (this.aLF[''] ^ ᐧ(paramArrayOfByte1, paramInt1));
    this.aLP = (this.aLF[''] ^ ᐧ(paramArrayOfByte1, paramInt1 + 4));
    this.aLO = (this.aLF[''] ^ ᐧ(paramArrayOfByte1, paramInt1 + 8));
    this.aLN = (this.aLF[''] ^ ᐧ(paramArrayOfByte1, paramInt1 + 12));
    ᴵ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[124];
    this.aLO ^= this.aLF[125];
    this.aLP ^= this.aLF[126];
    this.aLQ ^= this.aLF[127];
    jJ();
    י(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[120];
    this.aLO ^= this.aLF[121];
    this.aLP ^= this.aLF[122];
    this.aLQ ^= this.aLF[123];
    jJ();
    ʹ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[116];
    this.aLO ^= this.aLF[117];
    this.aLP ^= this.aLF[118];
    this.aLQ ^= this.aLF[119];
    jJ();
    ﹳ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[112];
    this.aLO ^= this.aLF[113];
    this.aLP ^= this.aLF[114];
    this.aLQ ^= this.aLF[115];
    jJ();
    ᐧ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[108];
    this.aLO ^= this.aLF[109];
    this.aLP ^= this.aLF[110];
    this.aLQ ^= this.aLF[111];
    jJ();
    ˑ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[104];
    this.aLO ^= this.aLF[105];
    this.aLP ^= this.aLF[106];
    this.aLQ ^= this.aLF[107];
    jJ();
    ˌ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[100];
    this.aLO ^= this.aLF[101];
    this.aLP ^= this.aLF[102];
    this.aLQ ^= this.aLF[103];
    jJ();
    ˈ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[96];
    this.aLO ^= this.aLF[97];
    this.aLP ^= this.aLF[98];
    this.aLQ ^= this.aLF[99];
    jJ();
    ᴵ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[92];
    this.aLO ^= this.aLF[93];
    this.aLP ^= this.aLF[94];
    this.aLQ ^= this.aLF[95];
    jJ();
    י(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[88];
    this.aLO ^= this.aLF[89];
    this.aLP ^= this.aLF[90];
    this.aLQ ^= this.aLF[91];
    jJ();
    ʹ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[84];
    this.aLO ^= this.aLF[85];
    this.aLP ^= this.aLF[86];
    this.aLQ ^= this.aLF[87];
    jJ();
    ﹳ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[80];
    this.aLO ^= this.aLF[81];
    this.aLP ^= this.aLF[82];
    this.aLQ ^= this.aLF[83];
    jJ();
    ᐧ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[76];
    this.aLO ^= this.aLF[77];
    this.aLP ^= this.aLF[78];
    this.aLQ ^= this.aLF[79];
    jJ();
    ˑ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[72];
    this.aLO ^= this.aLF[73];
    this.aLP ^= this.aLF[74];
    this.aLQ ^= this.aLF[75];
    jJ();
    ˌ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[68];
    this.aLO ^= this.aLF[69];
    this.aLP ^= this.aLF[70];
    this.aLQ ^= this.aLF[71];
    jJ();
    ˈ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[64];
    this.aLO ^= this.aLF[65];
    this.aLP ^= this.aLF[66];
    this.aLQ ^= this.aLF[67];
    jJ();
    ᴵ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[60];
    this.aLO ^= this.aLF[61];
    this.aLP ^= this.aLF[62];
    this.aLQ ^= this.aLF[63];
    jJ();
    י(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[56];
    this.aLO ^= this.aLF[57];
    this.aLP ^= this.aLF[58];
    this.aLQ ^= this.aLF[59];
    jJ();
    ʹ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[52];
    this.aLO ^= this.aLF[53];
    this.aLP ^= this.aLF[54];
    this.aLQ ^= this.aLF[55];
    jJ();
    ﹳ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[48];
    this.aLO ^= this.aLF[49];
    this.aLP ^= this.aLF[50];
    this.aLQ ^= this.aLF[51];
    jJ();
    ᐧ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[44];
    this.aLO ^= this.aLF[45];
    this.aLP ^= this.aLF[46];
    this.aLQ ^= this.aLF[47];
    jJ();
    ˑ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[40];
    this.aLO ^= this.aLF[41];
    this.aLP ^= this.aLF[42];
    this.aLQ ^= this.aLF[43];
    jJ();
    ˌ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[36];
    this.aLO ^= this.aLF[37];
    this.aLP ^= this.aLF[38];
    this.aLQ ^= this.aLF[39];
    jJ();
    ˈ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[32];
    this.aLO ^= this.aLF[33];
    this.aLP ^= this.aLF[34];
    this.aLQ ^= this.aLF[35];
    jJ();
    ᴵ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[28];
    this.aLO ^= this.aLF[29];
    this.aLP ^= this.aLF[30];
    this.aLQ ^= this.aLF[31];
    jJ();
    י(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[24];
    this.aLO ^= this.aLF[25];
    this.aLP ^= this.aLF[26];
    this.aLQ ^= this.aLF[27];
    jJ();
    ʹ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[20];
    this.aLO ^= this.aLF[21];
    this.aLP ^= this.aLF[22];
    this.aLQ ^= this.aLF[23];
    jJ();
    ﹳ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[16];
    this.aLO ^= this.aLF[17];
    this.aLP ^= this.aLF[18];
    this.aLQ ^= this.aLF[19];
    jJ();
    ᐧ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[12];
    this.aLO ^= this.aLF[13];
    this.aLP ^= this.aLF[14];
    this.aLQ ^= this.aLF[15];
    jJ();
    ˑ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[8];
    this.aLO ^= this.aLF[9];
    this.aLP ^= this.aLF[10];
    this.aLQ ^= this.aLF[11];
    jJ();
    ˌ(this.aLN, this.aLO, this.aLP, this.aLQ);
    this.aLN ^= this.aLF[4];
    this.aLO ^= this.aLF[5];
    this.aLP ^= this.aLF[6];
    this.aLQ ^= this.aLF[7];
    jJ();
    ˈ(this.aLN, this.aLO, this.aLP, this.aLQ);
    ᐝ(this.aLQ ^ this.aLF[3], paramArrayOfByte2, paramInt2);
    ᐝ(this.aLP ^ this.aLF[2], paramArrayOfByte2, paramInt2 + 4);
    ᐝ(this.aLO ^ this.aLF[1], paramArrayOfByte2, paramInt2 + 8);
    ᐝ(this.aLN ^ this.aLF[0], paramArrayOfByte2, paramInt2 + 12);
  }
  
  private void ˑ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = paramInt2 ^ paramInt4;
    int i = paramInt1 ^ paramInt3;
    paramInt3 ^= j;
    this.aLN = (i ^ paramInt2 & paramInt3);
    this.aLQ = (j ^ (i | paramInt4 ^ (paramInt1 | j ^ 0xFFFFFFFF)));
    paramInt1 = paramInt3 ^ 0xFFFFFFFF;
    paramInt2 = this.aLN | this.aLQ;
    this.aLO = (paramInt1 ^ paramInt2);
    this.aLP = (paramInt4 & paramInt1 ^ i ^ paramInt2);
  }
  
  private void ՙ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = paramInt1 ^ paramInt4;
    int i = paramInt2 ^ j;
    paramInt1 = paramInt3 ^ (paramInt1 ^ 0xFFFFFFFF | j);
    this.aLO = (paramInt2 ^ paramInt1);
    paramInt2 = paramInt4 ^ (j | this.aLO);
    this.aLP = (i ^ paramInt1 & paramInt2);
    paramInt2 = paramInt1 ^ paramInt2;
    this.aLN = (this.aLP ^ paramInt2);
    this.aLQ = (paramInt1 ^ 0xFFFFFFFF ^ i & paramInt2);
  }
  
  private void י(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt1 ^ 0xFFFFFFFF;
    int j = paramInt1 ^ paramInt2;
    paramInt1 = paramInt3 ^ j;
    paramInt3 = paramInt4 ^ (paramInt3 | i);
    this.aLO = (paramInt1 ^ paramInt3);
    j ^= paramInt1 & paramInt3;
    this.aLQ = (paramInt3 ^ (paramInt2 | j));
    paramInt2 |= this.aLQ;
    this.aLN = (j ^ paramInt2);
    this.aLP = (paramInt4 & i ^ paramInt1 ^ paramInt2);
  }
  
  private void ـ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = paramInt1 ^ paramInt2;
    int k = paramInt1 | paramInt4;
    int i = paramInt3 ^ paramInt4;
    paramInt1 = paramInt1 & paramInt3 | j & k;
    this.aLP = (i ^ paramInt1);
    paramInt1 ^= paramInt2 ^ k;
    this.aLN = (j ^ i & paramInt1);
    paramInt3 = this.aLP & this.aLN;
    this.aLO = (paramInt1 ^ paramInt3);
    this.aLQ = ((paramInt2 | paramInt4) ^ i ^ paramInt3);
  }
  
  private void ٴ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt2 ^ paramInt3;
    paramInt3 = paramInt4 ^ paramInt3 & i;
    int j = paramInt1 ^ paramInt3;
    this.aLO = (paramInt2 ^ j & (paramInt4 | i));
    paramInt2 = this.aLO;
    this.aLQ = (i ^ paramInt1 & j);
    paramInt1 = j ^ (paramInt3 | paramInt2);
    this.aLP = (paramInt3 ^ this.aLQ & paramInt1);
    this.aLN = (paramInt1 ^ 0xFFFFFFFF ^ this.aLQ & this.aLP);
  }
  
  private void ᐝ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)paramInt1);
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 24));
  }
  
  private int ᐧ(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[paramInt] & 0xFF) << 24 | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8 | paramArrayOfByte[(paramInt + 3)] & 0xFF;
  }
  
  private void ᐧ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = paramInt2 ^ paramInt3;
    int i = paramInt1 ^ paramInt2 & j;
    int k = paramInt4 | i;
    this.aLN = (j ^ k);
    paramInt4 ^= (j | k);
    this.aLP = (paramInt3 ^ i ^ paramInt4);
    paramInt1 = (paramInt1 | paramInt2) ^ paramInt4;
    this.aLQ = (i ^ this.aLN & paramInt1);
    this.aLO = (this.aLQ ^ this.aLN ^ paramInt1);
  }
  
  private void ᐨ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt1 ^ paramInt4;
    paramInt3 ^= paramInt4 & i;
    paramInt4 = paramInt2 | paramInt3;
    this.aLQ = (i ^ paramInt4);
    int j = paramInt2 ^ 0xFFFFFFFF;
    this.aLN = (paramInt3 ^ (i | j));
    paramInt2 = this.aLN;
    i ^= j;
    this.aLP = (paramInt1 & paramInt2 ^ paramInt4 & i);
    this.aLO = (paramInt1 ^ paramInt3 ^ this.aLP & i);
  }
  
  private void ᴵ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt3 | paramInt1 & paramInt2;
    int j = paramInt4 & (paramInt1 | paramInt2);
    this.aLQ = (i ^ j);
    paramInt2 ^= j;
    this.aLO = (paramInt1 ^ (paramInt2 | this.aLQ ^ paramInt4 ^ 0xFFFFFFFF));
    this.aLN = (paramInt3 ^ paramInt2 ^ (this.aLO | paramInt4));
    this.aLP = (this.aLO ^ i ^ this.aLN ^ this.aLQ & paramInt1);
  }
  
  private int[] ᵣ(byte[] paramArrayOfByte)
  {
    int[] arrayOfInt = new int[16];
    int i = 0;
    int j = paramArrayOfByte.length - 4;
    while (j > 0)
    {
      int k = i + 1;
      arrayOfInt[i] = ᐧ(paramArrayOfByte, j);
      j -= 4;
      i = k;
    }
    if (j == 0)
    {
      j = i + 1;
      arrayOfInt[i] = ᐧ(paramArrayOfByte, 0);
      if (j < 8) {
        arrayOfInt[j] = 1;
      }
    }
    else
    {
      throw new IllegalArgumentException("key must be a multiple of 4 bytes");
    }
    paramArrayOfByte = new int[''];
    i = 8;
    while (i < 16)
    {
      arrayOfInt[i] = rotateLeft(arrayOfInt[(i - 8)] ^ arrayOfInt[(i - 5)] ^ arrayOfInt[(i - 3)] ^ arrayOfInt[(i - 1)] ^ 0x9E3779B9 ^ i - 8, 11);
      i += 1;
    }
    System.arraycopy(arrayOfInt, 8, paramArrayOfByte, 0, 8);
    i = 8;
    while (i < 132)
    {
      paramArrayOfByte[i] = rotateLeft(paramArrayOfByte[(i - 8)] ^ paramArrayOfByte[(i - 5)] ^ paramArrayOfByte[(i - 3)] ^ paramArrayOfByte[(i - 1)] ^ 0x9E3779B9 ^ i, 11);
      i += 1;
    }
    ـ(paramArrayOfByte[0], paramArrayOfByte[1], paramArrayOfByte[2], paramArrayOfByte[3]);
    paramArrayOfByte[0] = this.aLN;
    paramArrayOfByte[1] = this.aLO;
    paramArrayOfByte[2] = this.aLP;
    paramArrayOfByte[3] = this.aLQ;
    ˍ(paramArrayOfByte[4], paramArrayOfByte[5], paramArrayOfByte[6], paramArrayOfByte[7]);
    paramArrayOfByte[4] = this.aLN;
    paramArrayOfByte[5] = this.aLO;
    paramArrayOfByte[6] = this.aLP;
    paramArrayOfByte[7] = this.aLQ;
    ˉ(paramArrayOfByte[8], paramArrayOfByte[9], paramArrayOfByte[10], paramArrayOfByte[11]);
    paramArrayOfByte[8] = this.aLN;
    paramArrayOfByte[9] = this.aLO;
    paramArrayOfByte[10] = this.aLP;
    paramArrayOfByte[11] = this.aLQ;
    ʿ(paramArrayOfByte[12], paramArrayOfByte[13], paramArrayOfByte[14], paramArrayOfByte[15]);
    paramArrayOfByte[12] = this.aLN;
    paramArrayOfByte[13] = this.aLO;
    paramArrayOfByte[14] = this.aLP;
    paramArrayOfByte[15] = this.aLQ;
    ٴ(paramArrayOfByte[16], paramArrayOfByte[17], paramArrayOfByte[18], paramArrayOfByte[19]);
    paramArrayOfByte[16] = this.aLN;
    paramArrayOfByte[17] = this.aLO;
    paramArrayOfByte[18] = this.aLP;
    paramArrayOfByte[19] = this.aLQ;
    ՙ(paramArrayOfByte[20], paramArrayOfByte[21], paramArrayOfByte[22], paramArrayOfByte[23]);
    paramArrayOfByte[20] = this.aLN;
    paramArrayOfByte[21] = this.aLO;
    paramArrayOfByte[22] = this.aLP;
    paramArrayOfByte[23] = this.aLQ;
    ﾞ(paramArrayOfByte[24], paramArrayOfByte[25], paramArrayOfByte[26], paramArrayOfByte[27]);
    paramArrayOfByte[24] = this.aLN;
    paramArrayOfByte[25] = this.aLO;
    paramArrayOfByte[26] = this.aLP;
    paramArrayOfByte[27] = this.aLQ;
    ᐨ(paramArrayOfByte[28], paramArrayOfByte[29], paramArrayOfByte[30], paramArrayOfByte[31]);
    paramArrayOfByte[28] = this.aLN;
    paramArrayOfByte[29] = this.aLO;
    paramArrayOfByte[30] = this.aLP;
    paramArrayOfByte[31] = this.aLQ;
    ـ(paramArrayOfByte[32], paramArrayOfByte[33], paramArrayOfByte[34], paramArrayOfByte[35]);
    paramArrayOfByte[32] = this.aLN;
    paramArrayOfByte[33] = this.aLO;
    paramArrayOfByte[34] = this.aLP;
    paramArrayOfByte[35] = this.aLQ;
    ˍ(paramArrayOfByte[36], paramArrayOfByte[37], paramArrayOfByte[38], paramArrayOfByte[39]);
    paramArrayOfByte[36] = this.aLN;
    paramArrayOfByte[37] = this.aLO;
    paramArrayOfByte[38] = this.aLP;
    paramArrayOfByte[39] = this.aLQ;
    ˉ(paramArrayOfByte[40], paramArrayOfByte[41], paramArrayOfByte[42], paramArrayOfByte[43]);
    paramArrayOfByte[40] = this.aLN;
    paramArrayOfByte[41] = this.aLO;
    paramArrayOfByte[42] = this.aLP;
    paramArrayOfByte[43] = this.aLQ;
    ʿ(paramArrayOfByte[44], paramArrayOfByte[45], paramArrayOfByte[46], paramArrayOfByte[47]);
    paramArrayOfByte[44] = this.aLN;
    paramArrayOfByte[45] = this.aLO;
    paramArrayOfByte[46] = this.aLP;
    paramArrayOfByte[47] = this.aLQ;
    ٴ(paramArrayOfByte[48], paramArrayOfByte[49], paramArrayOfByte[50], paramArrayOfByte[51]);
    paramArrayOfByte[48] = this.aLN;
    paramArrayOfByte[49] = this.aLO;
    paramArrayOfByte[50] = this.aLP;
    paramArrayOfByte[51] = this.aLQ;
    ՙ(paramArrayOfByte[52], paramArrayOfByte[53], paramArrayOfByte[54], paramArrayOfByte[55]);
    paramArrayOfByte[52] = this.aLN;
    paramArrayOfByte[53] = this.aLO;
    paramArrayOfByte[54] = this.aLP;
    paramArrayOfByte[55] = this.aLQ;
    ﾞ(paramArrayOfByte[56], paramArrayOfByte[57], paramArrayOfByte[58], paramArrayOfByte[59]);
    paramArrayOfByte[56] = this.aLN;
    paramArrayOfByte[57] = this.aLO;
    paramArrayOfByte[58] = this.aLP;
    paramArrayOfByte[59] = this.aLQ;
    ᐨ(paramArrayOfByte[60], paramArrayOfByte[61], paramArrayOfByte[62], paramArrayOfByte[63]);
    paramArrayOfByte[60] = this.aLN;
    paramArrayOfByte[61] = this.aLO;
    paramArrayOfByte[62] = this.aLP;
    paramArrayOfByte[63] = this.aLQ;
    ـ(paramArrayOfByte[64], paramArrayOfByte[65], paramArrayOfByte[66], paramArrayOfByte[67]);
    paramArrayOfByte[64] = this.aLN;
    paramArrayOfByte[65] = this.aLO;
    paramArrayOfByte[66] = this.aLP;
    paramArrayOfByte[67] = this.aLQ;
    ˍ(paramArrayOfByte[68], paramArrayOfByte[69], paramArrayOfByte[70], paramArrayOfByte[71]);
    paramArrayOfByte[68] = this.aLN;
    paramArrayOfByte[69] = this.aLO;
    paramArrayOfByte[70] = this.aLP;
    paramArrayOfByte[71] = this.aLQ;
    ˉ(paramArrayOfByte[72], paramArrayOfByte[73], paramArrayOfByte[74], paramArrayOfByte[75]);
    paramArrayOfByte[72] = this.aLN;
    paramArrayOfByte[73] = this.aLO;
    paramArrayOfByte[74] = this.aLP;
    paramArrayOfByte[75] = this.aLQ;
    ʿ(paramArrayOfByte[76], paramArrayOfByte[77], paramArrayOfByte[78], paramArrayOfByte[79]);
    paramArrayOfByte[76] = this.aLN;
    paramArrayOfByte[77] = this.aLO;
    paramArrayOfByte[78] = this.aLP;
    paramArrayOfByte[79] = this.aLQ;
    ٴ(paramArrayOfByte[80], paramArrayOfByte[81], paramArrayOfByte[82], paramArrayOfByte[83]);
    paramArrayOfByte[80] = this.aLN;
    paramArrayOfByte[81] = this.aLO;
    paramArrayOfByte[82] = this.aLP;
    paramArrayOfByte[83] = this.aLQ;
    ՙ(paramArrayOfByte[84], paramArrayOfByte[85], paramArrayOfByte[86], paramArrayOfByte[87]);
    paramArrayOfByte[84] = this.aLN;
    paramArrayOfByte[85] = this.aLO;
    paramArrayOfByte[86] = this.aLP;
    paramArrayOfByte[87] = this.aLQ;
    ﾞ(paramArrayOfByte[88], paramArrayOfByte[89], paramArrayOfByte[90], paramArrayOfByte[91]);
    paramArrayOfByte[88] = this.aLN;
    paramArrayOfByte[89] = this.aLO;
    paramArrayOfByte[90] = this.aLP;
    paramArrayOfByte[91] = this.aLQ;
    ᐨ(paramArrayOfByte[92], paramArrayOfByte[93], paramArrayOfByte[94], paramArrayOfByte[95]);
    paramArrayOfByte[92] = this.aLN;
    paramArrayOfByte[93] = this.aLO;
    paramArrayOfByte[94] = this.aLP;
    paramArrayOfByte[95] = this.aLQ;
    ـ(paramArrayOfByte[96], paramArrayOfByte[97], paramArrayOfByte[98], paramArrayOfByte[99]);
    paramArrayOfByte[96] = this.aLN;
    paramArrayOfByte[97] = this.aLO;
    paramArrayOfByte[98] = this.aLP;
    paramArrayOfByte[99] = this.aLQ;
    ˍ(paramArrayOfByte[100], paramArrayOfByte[101], paramArrayOfByte[102], paramArrayOfByte[103]);
    paramArrayOfByte[100] = this.aLN;
    paramArrayOfByte[101] = this.aLO;
    paramArrayOfByte[102] = this.aLP;
    paramArrayOfByte[103] = this.aLQ;
    ˉ(paramArrayOfByte[104], paramArrayOfByte[105], paramArrayOfByte[106], paramArrayOfByte[107]);
    paramArrayOfByte[104] = this.aLN;
    paramArrayOfByte[105] = this.aLO;
    paramArrayOfByte[106] = this.aLP;
    paramArrayOfByte[107] = this.aLQ;
    ʿ(paramArrayOfByte[108], paramArrayOfByte[109], paramArrayOfByte[110], paramArrayOfByte[111]);
    paramArrayOfByte[108] = this.aLN;
    paramArrayOfByte[109] = this.aLO;
    paramArrayOfByte[110] = this.aLP;
    paramArrayOfByte[111] = this.aLQ;
    ٴ(paramArrayOfByte[112], paramArrayOfByte[113], paramArrayOfByte[114], paramArrayOfByte[115]);
    paramArrayOfByte[112] = this.aLN;
    paramArrayOfByte[113] = this.aLO;
    paramArrayOfByte[114] = this.aLP;
    paramArrayOfByte[115] = this.aLQ;
    ՙ(paramArrayOfByte[116], paramArrayOfByte[117], paramArrayOfByte[118], paramArrayOfByte[119]);
    paramArrayOfByte[116] = this.aLN;
    paramArrayOfByte[117] = this.aLO;
    paramArrayOfByte[118] = this.aLP;
    paramArrayOfByte[119] = this.aLQ;
    ﾞ(paramArrayOfByte[120], paramArrayOfByte[121], paramArrayOfByte[122], paramArrayOfByte[123]);
    paramArrayOfByte[120] = this.aLN;
    paramArrayOfByte[121] = this.aLO;
    paramArrayOfByte[122] = this.aLP;
    paramArrayOfByte[123] = this.aLQ;
    ᐨ(paramArrayOfByte[124], paramArrayOfByte[125], paramArrayOfByte[126], paramArrayOfByte[127]);
    paramArrayOfByte[124] = this.aLN;
    paramArrayOfByte[125] = this.aLO;
    paramArrayOfByte[126] = this.aLP;
    paramArrayOfByte[127] = this.aLQ;
    ـ(paramArrayOfByte[''], paramArrayOfByte[''], paramArrayOfByte[''], paramArrayOfByte['']);
    paramArrayOfByte[''] = this.aLN;
    paramArrayOfByte[''] = this.aLO;
    paramArrayOfByte[''] = this.aLP;
    paramArrayOfByte[''] = this.aLQ;
    return paramArrayOfByte;
  }
  
  private void ﹳ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 ^= paramInt1 & (paramInt3 | paramInt4);
    paramInt3 ^= paramInt1 & paramInt2;
    this.aLO = (paramInt4 ^ paramInt3);
    paramInt1 ^= 0xFFFFFFFF;
    this.aLQ = (paramInt2 ^ paramInt3 & this.aLO);
    paramInt3 = paramInt4 ^ (this.aLO | paramInt1);
    this.aLN = (this.aLQ ^ paramInt3);
    this.aLP = (paramInt2 & paramInt3 ^ this.aLO ^ paramInt1);
  }
  
  private void ﾞ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = paramInt1 ^ 0xFFFFFFFF;
    int i = paramInt1 ^ paramInt2;
    paramInt1 ^= paramInt4;
    this.aLN = (paramInt3 ^ j ^ (i | paramInt1));
    paramInt3 = paramInt4 & this.aLN;
    this.aLO = (paramInt3 ^ i ^ this.aLN);
    paramInt1 ^= (j | this.aLN);
    this.aLP = ((i | paramInt3) ^ paramInt1);
    this.aLQ = (paramInt2 ^ paramInt3 ^ this.aLO & paramInt1);
  }
  
  public int getBlockSize()
  {
    return 16;
  }
  
  public String iG()
  {
    return "Serpent";
  }
  
  public void reset() {}
  
  public final int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aLF == null) {
      throw new IllegalStateException("Serpent not initialised");
    }
    if (paramInt1 + 16 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 16 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aIY) {
      ˋ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    } else {
      ˎ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return 16;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof KeyParameter))
    {
      this.aIY = paramBoolean;
      this.aLF = ᵣ(((KeyParameter)paramCipherParameters).getKey());
      return;
    }
    throw new IllegalArgumentException("invalid parameter passed to Serpent init - " + paramCipherParameters.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.SerpentEngine
 * JD-Core Version:    0.7.0.1
 */