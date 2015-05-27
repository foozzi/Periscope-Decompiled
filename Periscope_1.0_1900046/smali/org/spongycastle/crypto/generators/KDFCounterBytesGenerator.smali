.class public Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/MacDerivationFunction;


# static fields
.field private static final aKc:Ljava/math/BigInteger;

.field private static final aMW:Ljava/math/BigInteger;


# instance fields
.field private aMV:I

.field private final aMX:Lorg/spongycastle/crypto/Mac;

.field private final aMY:I

.field private aMZ:[B

.field private aNa:[B

.field private aNb:I

.field private aNc:[B

.field private aNd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMW:Ljava/math/BigInteger;

    .line 45
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aKc:Ljava/math/BigInteger;

    return-void
.end method

.method private jW()V
    .locals 5

    .line 152
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMY:I

    div-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    array-length v0, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    ushr-int/lit8 v1, v4, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 161
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x3

    ushr-int/lit8 v2, v4, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 164
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    ushr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    .line 168
    goto :goto_1

    .line 170
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported size of counter i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMX:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMZ:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMZ:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMX:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMX:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNa:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNa:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMX:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNd:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 179
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 6

    .line 77
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KDFCounterParameters;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong type of arguments given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KDFCounterParameters;

    move-object v3, v0

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMX:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->kR()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 90
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->kS()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMZ:[B

    .line 91
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->kT()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNa:[B

    .line 93
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->kU()I

    move-result v4

    .line 94
    div-int/lit8 v0, v4, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNc:[B

    .line 96
    sget-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 97
    sget-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMW:Ljava/math/BigInteger;

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNb:I

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    .line 103
    return-void
.end method

.method public ᐧ([BII)I
    .locals 8

    .line 115
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    add-int v3, v0, p3

    .line 116
    if-ltz v3, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNb:I

    if-lt v3, v0, :cond_1

    .line 118
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current KDFCTR may only be used for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMY:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 124
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->jW()V

    .line 128
    :cond_2
    move v4, p3

    .line 129
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMY:I

    rem-int v5, v0, v1

    .line 130
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMY:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMY:I

    rem-int/2addr v1, v2

    sub-int v6, v0, v1

    .line 131
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNd:[B

    invoke-static {v0, v5, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    .line 134
    sub-int/2addr v4, v7

    .line 135
    add-int/2addr p2, v7

    .line 137
    :goto_0
    if-lez v4, :cond_3

    .line 139
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->jW()V

    .line 140
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMY:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aNd:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->aMV:I

    .line 143
    sub-int/2addr v4, v7

    .line 144
    add-int/2addr p2, v7

    goto :goto_0

    .line 147
    :cond_3
    return p3
.end method
