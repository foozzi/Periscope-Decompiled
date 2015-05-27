.class public Lorg/spongycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static final aKc:Ljava/math/BigInteger;


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aFa:Ljava/security/SecureRandom;

.field private aMG:I

.field private aMI:I

.field private aMJ:I

.field private aMK:Z

.field private aML:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 26
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 27
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aKc:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 40
    return-void
.end method

.method private jQ()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 16

    .line 118
    const/16 v0, 0x14

    new-array v3, v0, [B

    .line 119
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 120
    const/16 v0, 0x14

    new-array v5, v0, [B

    .line 121
    const/16 v0, 0x14

    new-array v6, v0, [B

    .line 122
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v7, v0, 0xa0

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    div-int/lit8 v0, v0, 0x8

    new-array v8, v0, [B

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    instance-of v0, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-static {v0, v3, v4}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 135
    array-length v0, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-static {v5}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->יִ([B)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-static {v0, v5, v5}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 139
    const/4 v9, 0x0

    :goto_1
    array-length v0, v6

    if-eq v9, v0, :cond_1

    .line 141
    aget-byte v0, v4, v9

    aget-byte v1, v5, v9

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v9

    .line 139
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 144
    :cond_1
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    .line 145
    const/16 v0, 0x13

    aget-byte v0, v6, v0

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    const/16 v1, 0x13

    aput-byte v0, v6, v1

    .line 147
    new-instance v9, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v9, v0, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMG:I

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    goto :goto_0

    .line 154
    :cond_2
    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v10

    .line 155
    invoke-static {v10}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->יִ([B)V

    .line 157
    const/4 v11, 0x0

    :goto_2
    const/16 v0, 0x1000

    if-ge v11, v0, :cond_6

    .line 159
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v7, :cond_3

    .line 161
    invoke-static {v10}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->יִ([B)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-static {v0, v10, v4}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 163
    array-length v0, v8

    add-int/lit8 v1, v12, 0x1

    array-length v2, v4

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    array-length v1, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 166
    :cond_3
    invoke-static {v10}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->יִ([B)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-static {v0, v10, v4}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 168
    array-length v0, v4

    array-length v1, v8

    array-length v2, v4

    mul-int/2addr v2, v7

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    array-length v1, v8

    array-length v2, v4

    mul-int/2addr v2, v7

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v4, v0, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    const/4 v0, 0x0

    aget-byte v0, v8, v0

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v8, v1

    .line 172
    new-instance v12, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v12, v0, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 174
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 176
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 178
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    if-eq v0, v1, :cond_4

    .line 180
    goto :goto_4

    .line 183
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMG:I

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-static {v14, v9, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v15

    .line 187
    new-instance v0, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v1, v3, v11}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v0, v14, v9, v15, v1}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v0

    .line 157
    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 190
    :cond_6
    goto/16 :goto_0
.end method

.method private jR()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 21

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 218
    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    mul-int/lit8 v5, v0, 0x8

    .line 226
    move-object/from16 v0, p0

    iget v6, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    .line 227
    div-int/lit8 v0, v6, 0x8

    new-array v7, v0, [B

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    add-int/lit8 v0, v0, -0x1

    div-int v8, v0, v5

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    add-int/lit8 v0, v0, -0x1

    rem-int v9, v0, v5

    .line 235
    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v10, v0, [B

    .line 239
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 242
    invoke-static {v4, v7, v10}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 244
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 247
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMG:I

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    goto :goto_0

    .line 259
    :cond_0
    invoke-static {v7}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v13

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    mul-int/lit8 v14, v0, 0x4

    .line 263
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_6

    .line 269
    sget-object v16, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 270
    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v17

    if-gt v0, v8, :cond_2

    .line 272
    invoke-static {v13}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->יִ([B)V

    .line 273
    invoke-static {v4, v13, v10}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 275
    new-instance v19, Ljava/math/BigInteger;

    move-object/from16 v0, v19

    const/4 v1, 0x1

    invoke-direct {v0, v1, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 276
    move/from16 v0, v17

    if-ne v0, v8, :cond_1

    .line 278
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 281
    :cond_1
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 270
    add-int/lit8 v17, v17, 0x1

    add-int v18, v18, v5

    goto :goto_2

    .line 285
    :cond_2
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 288
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 291
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 294
    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    if-eq v0, v1, :cond_3

    .line 296
    goto :goto_3

    .line 301
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMG:I

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aML:I

    if-ltz v0, :cond_4

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aML:I

    move-object/from16 v1, v19

    invoke-static {v4, v1, v12, v7, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v20

    .line 308
    if-eqz v20, :cond_4

    .line 310
    new-instance v0, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aML:I

    invoke-direct {v1, v7, v15, v2}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v2, v12, v3, v1}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v0

    .line 314
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFa:Ljava/security/SecureRandom;

    move-object/from16 v1, v19

    invoke-static {v1, v12, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˎ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v20

    .line 316
    new-instance v0, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v1, v7, v15}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v2, v12, v3, v1}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v0

    .line 263
    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 325
    :cond_6
    goto/16 :goto_0
.end method

.method private static ɻ(I)I
    .locals 1

    .line 371
    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    :goto_0
    return v0
.end method

.method private static ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 10

    .line 338
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 339
    const-string v0, "6767656E"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v4

    .line 342
    array-length v0, p3

    array-length v1, v4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 343
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p3, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    array-length v0, p3

    array-length v1, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    array-length v0, v5

    add-int/lit8 v0, v0, -0x3

    int-to-byte v1, p4

    aput-byte v1, v5, v0

    .line 347
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v6, v0, [B

    .line 348
    const/4 v7, 0x1

    :goto_0
    const/high16 v0, 0x10000

    if-ge v7, v0, :cond_1

    .line 350
    invoke-static {v5}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->יִ([B)V

    .line 351
    invoke-static {p0, v5, v6}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˊ(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 352
    new-instance v8, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v8, v0, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 353
    invoke-virtual {v8, v3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 354
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 356
    return-object v9

    .line 348
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static ˊ(Lorg/spongycastle/crypto/Digest;[B[B)V
    .locals 2

    .line 365
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 366
    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 367
    return-void
.end method

.method private static ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 6

    .line 195
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 196
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aKc:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 200
    :goto_0
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aKc:Ljava/math/BigInteger;

    invoke-static {v0, v3, p2}, Lorg/spongycastle/util/BigIntegers;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 202
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 204
    return-object v5

    .line 206
    :cond_0
    goto :goto_0
.end method

.method private static ˎ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1

    .line 331
    invoke-static {p0, p1, p2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static יִ([B)V
    .locals 4

    .line 376
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 378
    aget-byte v0, p0, v2

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v3, v0

    .line 379
    aput-byte v3, p0, v2

    .line 381
    if-eqz v3, :cond_0

    .line 383
    goto :goto_1

    .line 376
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 386
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public jP()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMK:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->jR()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->jQ()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ˊ(IILjava/security/SecureRandom;)V
    .locals 1

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMK:Z

    .line 55
    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    .line 56
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ɻ(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    .line 57
    iput p2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMG:I

    .line 58
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFa:Ljava/security/SecureRandom;

    .line 59
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 2

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMK:Z

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->kC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->kD()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMG:I

    .line 77
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFa:Ljava/security/SecureRandom;

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->kE()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aML:I

    .line 80
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    const/16 v1, 0xc00

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    rem-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be 160 for L = 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    const/16 v1, 0x800

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_3

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be 224 or 256 for L = 2048"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMI:I

    const/16 v1, 0xc00

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_4

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be 256 for L = 3072"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->aMJ:I

    if-ge v0, v1, :cond_5

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digest output size too small for value of N"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_5
    return-void
.end method
