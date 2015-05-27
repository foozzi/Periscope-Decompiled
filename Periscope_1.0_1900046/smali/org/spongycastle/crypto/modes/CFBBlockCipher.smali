.class public Lorg/spongycastle/crypto/modes/CFBBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source ""


# instance fields
.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aIY:Z

.field private aKF:[B

.field private aNR:[B

.field private aNS:[B

.field private aNo:[B

.field private aOL:I

.field private fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 39
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 40
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    .line 42
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    .line 43
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    .line 44
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNS:[B

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNo:[B

    .line 46
    return-void
.end method

.method private ʾ(B)B
    .locals 6

    .line 145
    iget v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNS:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNo:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    aput-byte p1, v0, v1

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNS:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v5, v0

    .line 153
    iget v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    if-ne v0, v1, :cond_1

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    .line 157
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNo:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_1
    return v5
.end method

.method private ι(B)B
    .locals 6

    .line 124
    iget v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNS:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNS:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v5, v0

    .line 130
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNo:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    aput-byte v5, v0, v1

    .line 132
    iget v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    if-ne v0, v1, :cond_1

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNo:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :cond_1
    return v5
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 171
    iget v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kf()[B
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 5

    .line 263
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aNo:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aOL:I

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 268
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 6

    .line 194
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    iget v3, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->ˋ([BII[BI)I

    .line 196
    iget v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->fU:I

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 7

    .line 64
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aIY:Z

    .line 66
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 68
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v4, v0

    .line 69
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v5

    .line 71
    array-length v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    array-length v1, v1

    array-length v2, v5

    sub-int/2addr v1, v2

    array-length v2, v5

    const/4 v3, 0x0

    invoke-static {v5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    array-length v0, v0

    array-length v1, v5

    sub-int/2addr v0, v1

    if-ge v6, v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v6

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aKF:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 88
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 92
    :cond_2
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 98
    if-eqz p2, :cond_4

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 103
    :cond_4
    :goto_2
    return-void
.end method

.method protected ͺ(B)B
    .locals 1

    .line 119
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->aIY:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->ι(B)B

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->ʾ(B)B

    move-result v0

    :goto_0
    return v0
.end method
