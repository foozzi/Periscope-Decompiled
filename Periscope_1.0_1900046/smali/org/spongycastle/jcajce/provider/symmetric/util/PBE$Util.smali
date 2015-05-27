.class public Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/spongycastle/crypto/CipherParameters;
    .locals 6

    .line 282
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ᔋ(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v2

    .line 286
    invoke-static {p1, p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v3

    .line 288
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˊ([B[BI)V

    .line 290
    invoke-virtual {v2, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ڎ(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    .line 292
    const/4 v5, 0x0

    :goto_0
    array-length v0, v3

    if-eq v5, v0, :cond_0

    .line 294
    const/4 v0, 0x0

    aput-byte v0, v3, v5

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-object v4
.end method

.method public static ˊ(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 6

    .line 245
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ᔋ(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v2

    .line 249
    invoke-static {p1, p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v3

    .line 251
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˊ([B[BI)V

    .line 253
    if-eqz p4, :cond_0

    .line 255
    invoke-virtual {v2, p3, p4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ᵙ(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v2, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ر(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    .line 262
    :goto_0
    const/4 v5, 0x0

    :goto_1
    array-length v0, v3

    if-eq v5, v0, :cond_1

    .line 264
    const/4 v0, 0x0

    aput-byte v0, v3, v5

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 267
    :cond_1
    return-object v4
.end method

.method public static ˊ(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 7

    .line 207
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_1

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v2, v0

    .line 213
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nS()I

    move-result v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ᔋ(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v3

    .line 214
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v4

    .line 217
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nW()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const/4 v0, 0x2

    new-array v4, v0, [B

    .line 222
    :cond_2
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v1

    invoke-virtual {v3, v4, v0, v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˊ([B[BI)V

    .line 224
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ڎ(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v5

    .line 226
    const/4 v6, 0x0

    :goto_0
    array-length v0, v4

    if-eq v6, v0, :cond_3

    .line 228
    const/4 v0, 0x0

    aput-byte v0, v4, v6

    .line 226
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 231
    :cond_3
    return-object v5
.end method

.method public static ˊ(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 7

    .line 148
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v2, v0

    .line 154
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nS()I

    move-result v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ᔋ(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v3

    .line 155
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v4

    .line 158
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nW()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    const/4 v0, 0x2

    new-array v4, v0, [B

    .line 163
    :cond_2
    invoke-virtual {v2}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {v2}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v1

    invoke-virtual {v3, v4, v0, v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˊ([B[BI)V

    .line 165
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nT()I

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nT()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ᵙ(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v5

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ر(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v5

    .line 174
    :goto_0
    const-string v0, "DES"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    instance-of v0, v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_4

    .line 178
    move-object v0, v5

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v6, v0

    .line 180
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/params/DESParameters;->ı([B)V

    .line 181
    goto :goto_1

    .line 184
    :cond_4
    move-object v0, v5

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v6, v0

    .line 186
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/params/DESParameters;->ı([B)V

    .line 190
    :cond_5
    :goto_1
    const/4 v6, 0x0

    :goto_2
    array-length v0, v4

    if-eq v6, v0, :cond_6

    .line 192
    const/4 v0, 0x0

    aput-byte v0, v4, v6

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 195
    :cond_6
    return-object v5
.end method

.method private static ˊ(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 2

    .line 304
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 306
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˏ([C)[B

    move-result-object v1

    goto :goto_0

    .line 308
    :cond_0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 310
    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˎ([C)[B

    move-result-object v1

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˋ([C)[B

    move-result-object v1

    .line 316
    :goto_0
    return-object v1
.end method

.method private static ᔋ(II)Lorg/spongycastle/crypto/PBEParametersGenerator;
    .locals 3

    .line 56
    if-eqz p0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 58
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 61
    :sswitch_0
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 62
    goto/16 :goto_3

    .line 64
    :sswitch_1
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 65
    goto/16 :goto_3

    .line 67
    :sswitch_2
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 68
    goto/16 :goto_3

    .line 70
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    .line 75
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 78
    :pswitch_0
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 79
    goto/16 :goto_3

    .line 81
    :pswitch_1
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 82
    goto/16 :goto_3

    .line 84
    :pswitch_2
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 85
    goto/16 :goto_3

    .line 87
    :pswitch_3
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 88
    goto/16 :goto_3

    .line 90
    :pswitch_4
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 91
    goto/16 :goto_3

    .line 93
    :pswitch_5
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 94
    goto/16 :goto_3

    .line 96
    :pswitch_6
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 97
    goto/16 :goto_3

    .line 99
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 104
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    .line 107
    :pswitch_7
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 108
    goto/16 :goto_3

    .line 110
    :pswitch_8
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 111
    goto :goto_3

    .line 113
    :pswitch_9
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 114
    goto :goto_3

    .line 116
    :pswitch_a
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 117
    goto :goto_3

    .line 119
    :pswitch_b
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 120
    goto :goto_3

    .line 122
    :pswitch_c
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 123
    goto :goto_3

    .line 125
    :pswitch_d
    new-instance v2, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>()V

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 126
    goto :goto_3

    .line 128
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown digest scheme for PBE encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_4
    new-instance v2, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .line 136
    :goto_3
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
