.class public Lorg/spongycastle/crypto/engines/NaccacheSternEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# instance fields
.field private aEW:Z

.field private aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

.field private aKP:[Ljava/util/Vector;

.field private aKQ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    .line 31
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKQ:Z

    return-void
.end method

.method private static ˊ(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;
    .locals 8

    .line 419
    sget-object v1, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    .line 420
    sget-object v2, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    .line 421
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 423
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 427
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    move-object v4, v0

    .line 428
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 429
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 430
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 431
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 432
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 435
    :cond_1
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public iB()I
    .locals 2

    .line 97
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aEW:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->le()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public iC()I
    .locals 2

    .line 116
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aEW:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->le()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 11

    .line 41
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aEW:Z

    .line 43
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 48
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    .line 51
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aEW:Z

    if-nez v0, :cond_4

    .line 53
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKQ:Z

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Constructing lookup Array"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    move-object v3, v0

    .line 58
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->lg()Ljava/util/Vector;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    .line 60
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 62
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    move-object v6, v0

    .line 63
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aput-object v1, v0, v5

    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    aget-object v0, v0, v5

    sget-object v1, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKQ:Z

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing lookup ArrayList for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    :cond_2
    sget-object v8, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    .line 75
    const/4 v9, 0x1

    :goto_1
    if-ge v9, v7, :cond_3

    .line 77
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->lf()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 78
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    aget-object v0, v0, v5

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 60
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 83
    :cond_4
    return-void
.end method

.method public ˎ(Ljava/math/BigInteger;)[B
    .locals 5

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 262
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 263
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 264
    array-length v0, v3

    array-length v1, v4

    sub-int/2addr v0, v1

    array-length v1, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKQ:Z

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encrypted value is:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    :cond_0
    return-object v3
.end method

.method public ˑ([BII)[B
    .locals 15

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NaccacheStern engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->iB()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, p3

    if-le v1, v0, :cond_1

    .line 142
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input too large for Naccache-Stern cipher.\n"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aEW:Z

    if-nez v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->iB()I

    move-result v0

    move/from16 v1, p3

    if-ge v1, v0, :cond_2

    .line 150
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "BlockLength does not match modulus for Naccache-Stern cipher.\n"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    if-nez p2, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v1, p3

    if-eq v1, v0, :cond_4

    .line 158
    :cond_3
    move/from16 v0, p3

    new-array v4, v0, [B

    .line 159
    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    move/from16 v3, p3

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 163
    :cond_4
    move-object/from16 v4, p1

    .line 167
    :goto_0
    new-instance v5, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v5, v0, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 168
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKQ:Z

    if-eqz v0, :cond_5

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input as BigInteger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    :cond_5
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aEW:Z

    if-eqz v0, :cond_6

    .line 175
    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ˎ(Ljava/math/BigInteger;)[B

    move-result-object v6

    goto/16 :goto_3

    .line 179
    :cond_6
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKO:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    move-object v8, v0

    .line 181
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->lg()Ljava/util/Vector;

    move-result-object v9

    .line 183
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v10, v0, :cond_b

    .line 185
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->lf()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 186
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    aget-object v12, v0, v10

    .line 187
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 189
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKQ:Z

    if-eqz v0, :cond_7

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lookup table has size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    :cond_7
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in lookup Array for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Size mismatch. Expected ArrayList with length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found ArrayList of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_8
    invoke-virtual {v12, v11}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 201
    const/4 v0, -0x1

    if-ne v13, v0, :cond_a

    .line 203
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKQ:Z

    if-eqz v0, :cond_9

    .line 205
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Actual prime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrypted value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LookupList for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    const/4 v14, 0x0

    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v14, v0, :cond_9

    .line 212
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->aKP:[Ljava/util/Vector;

    aget-object v1, v1, v10

    invoke-virtual {v1, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 215
    :cond_9
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "Lookup failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_a
    int-to-long v0, v13

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 183
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 219
    :cond_b
    invoke-static {v7, v9}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ˊ(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;

    move-result-object v10

    .line 242
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 246
    :goto_3
    return-object v6
.end method
