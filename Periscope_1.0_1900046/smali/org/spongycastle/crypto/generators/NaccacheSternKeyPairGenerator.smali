.class public Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static aNh:[I


# instance fields
.field private aNi:Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    const/16 v0, 0x65

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->aNh:[I

    .line 36
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ʏ(I)Ljava/util/Vector;
    .locals 4

    .line 355
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, p0}, Ljava/util/Vector;-><init>(I)V

    .line 357
    const/4 v3, 0x0

    :goto_0
    if-eq v3, p0, :cond_0

    .line 359
    sget-object v0, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->aNh:[I

    aget v0, v0, v3

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-object v2
.end method

.method private static ˊ(Ljava/security/SecureRandom;I)I
    .locals 6

    .line 329
    neg-int v0, p1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 331
    int-to-long v0, p1

    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x1f

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 337
    :cond_0
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v4, v0, v1

    .line 338
    rem-int v5, v4, p1

    .line 340
    sub-int v0, v4, v5

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 342
    return v5
.end method

.method private static ˊ(Ljava/util/Vector;Ljava/security/SecureRandom;)Ljava/util/Vector;
    .locals 6

    .line 309
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 310
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 311
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 313
    invoke-virtual {p0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 315
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 316
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 317
    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ˊ(Ljava/security/SecureRandom;I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 320
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    .line 322
    :cond_1
    return-object v3
.end method

.method private static ˎ(IILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    .line 287
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0, p1, p2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 288
    :goto_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 290
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0, p1, p2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    goto :goto_0

    .line 292
    :cond_0
    return-object v1
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 34

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->aNi:Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->getStrength()I

    move-result v8

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->aNi:Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v9

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->aNi:Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->kD()I

    move-result v10

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->aNi:Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->ld()Z

    move-result v11

    .line 60
    if-eqz v11, :cond_0

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching first "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->aNi:Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->lc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " primes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->aNi:Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->lc()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ʏ(I)Ljava/util/Vector;

    move-result-object v12

    .line 66
    invoke-static {v12, v9}, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ˊ(Ljava/util/Vector;Ljava/security/SecureRandom;)Ljava/util/Vector;

    move-result-object v12

    .line 68
    sget-object v13, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    .line 69
    sget-object v14, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    .line 71
    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v15, v0, :cond_1

    .line 73
    invoke-virtual {v12, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 71
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    div-int/lit8 v15, v0, 0x2

    :goto_1
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v15, v0, :cond_2

    .line 77
    invoke-virtual {v12, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 75
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 88
    invoke-virtual {v15}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    sub-int v0, v8, v0

    add-int/lit8 v16, v0, -0x30

    .line 89
    div-int/lit8 v0, v16, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v10, v9}, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ˎ(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v17

    .line 90
    div-int/lit8 v0, v16, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v10, v9}, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ˎ(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v18

    .line 96
    const-wide/16 v23, 0x0

    .line 97
    if-eqz v11, :cond_3

    .line 99
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "generating p and q"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    .line 103
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v26

    .line 107
    :cond_4
    :goto_2
    const-wide/16 v0, 0x1

    add-long v23, v23, v0

    .line 109
    const/16 v0, 0x18

    invoke-static {v0, v10, v9}, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ˎ(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v19

    .line 111
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 113
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 115
    goto :goto_2

    .line 120
    :cond_5
    :goto_3
    const/16 v0, 0x18

    invoke-static {v0, v10, v9}, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ˎ(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v20

    .line 122
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    goto :goto_3

    .line 127
    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 129
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    .line 135
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 139
    goto :goto_2

    .line 142
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-ge v0, v8, :cond_8

    .line 144
    if-eqz v11, :cond_4

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key size too small. Should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but is actually "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 154
    :cond_8
    if-eqz v11, :cond_9

    .line 156
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v2, v23

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tries to generate p and q."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    :cond_9
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v27

    .line 160
    sget-object v0, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v2, v22

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    .line 162
    const-wide/16 v23, 0x0

    .line 163
    if-eqz v11, :cond_a

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "generating g"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    :cond_a
    :goto_4
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    .line 171
    const/16 v31, 0x0

    :goto_5
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    move/from16 v1, v31

    if-eq v1, v0, :cond_c

    .line 173
    move/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    move-object/from16 v32, v0

    .line 174
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v33

    .line 178
    :goto_6
    const-wide/16 v0, 0x1

    add-long v23, v23, v0

    .line 179
    new-instance v29, Ljava/math/BigInteger;

    move-object/from16 v0, v29

    invoke-direct {v0, v8, v10, v9}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 180
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 182
    goto :goto_6

    .line 184
    :cond_b
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 171
    .line 185
    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    .line 188
    :cond_c
    sget-object v29, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    .line 189
    const/16 v31, 0x0

    :goto_7
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    move/from16 v1, v31

    if-ge v1, v0, :cond_d

    .line 191
    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    move/from16 v1, v31

    invoke-virtual {v12, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    .line 189
    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    .line 195
    :cond_d
    const/16 v31, 0x0

    .line 196
    const/16 v32, 0x0

    :goto_8
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    move/from16 v1, v32

    if-ge v1, v0, :cond_10

    .line 198
    move/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 200
    if-eqz v11, :cond_e

    .line 202
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g has order phi(n)/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v32

    invoke-virtual {v12, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    :cond_e
    const/16 v31, 0x1

    .line 205
    goto :goto_9

    .line 196
    :cond_f
    add-int/lit8 v32, v32, 0x1

    goto :goto_8

    .line 209
    :cond_10
    :goto_9
    if-eqz v31, :cond_11

    .line 211
    goto/16 :goto_4

    .line 216
    :cond_11
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 218
    if-eqz v11, :cond_a

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g has order phi(n)/4\n g:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 225
    :cond_12
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 227
    if-eqz v11, :cond_a

    .line 229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g has order phi(n)/p\'\n g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 233
    :cond_13
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 235
    if-eqz v11, :cond_a

    .line 237
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g has order phi(n)/q\'\n g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 241
    :cond_14
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 243
    if-eqz v11, :cond_a

    .line 245
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g has order phi(n)/a\n g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 249
    :cond_15
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 251
    if-eqz v11, :cond_a

    .line 253
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g has order phi(n)/b\n g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 259
    :cond_16
    if-eqz v11, :cond_17

    .line 261
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v2, v23

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tries to generate g"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 263
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "found new NaccacheStern cipher variables:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smallPrimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sigma:...... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a:.......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b:.......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p\':......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "q\':......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p:.......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "q:.......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n:.......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phi(n):..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g:.......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 278
    :cond_17
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v15}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v4, v29

    move-object/from16 v5, v27

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v2, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    invoke-virtual {v15}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    move-object/from16 v3, v29

    move-object/from16 v4, v27

    move-object v6, v12

    move-object/from16 v7, v28

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/util/Vector;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method
