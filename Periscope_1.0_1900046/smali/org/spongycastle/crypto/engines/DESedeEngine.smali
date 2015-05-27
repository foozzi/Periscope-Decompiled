.class public Lorg/spongycastle/crypto/engines/DESedeEngine;
.super Lorg/spongycastle/crypto/engines/DESEngine;
.source ""


# instance fields
.field private aEW:Z

.field private aJS:[I

.field private aJT:[I

.field private aJU:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/DESEngine;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJS:[I

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJT:[I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJU:[I

    .line 27
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 82
    const/16 v0, 0x8

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "DESede"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 126
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 7

    .line 91
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJS:[I

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 98
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 103
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    const/16 v0, 0x8

    new-array v6, v0, [B

    .line 108
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aEW:Z

    if-eqz v0, :cond_3

    .line 110
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJS:[I

    move-object v2, p1

    move v3, p2

    move-object v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/DESedeEngine;->ˊ([I[BI[BI)V

    .line 111
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJT:[I

    move-object v2, v6

    move-object v4, v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/DESedeEngine;->ˊ([I[BI[BI)V

    .line 112
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJU:[I

    move-object v2, v6

    move-object v4, p3

    move v5, p4

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/DESedeEngine;->ˊ([I[BI[BI)V

    goto :goto_0

    .line 116
    :cond_3
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJU:[I

    move-object v2, p1

    move v3, p2

    move-object v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/DESedeEngine;->ˊ([I[BI[BI)V

    .line 117
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJT:[I

    move-object v2, v6

    move-object v4, v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/DESedeEngine;->ˊ([I[BI[BI)V

    .line 118
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJS:[I

    move-object v2, v6

    move-object v4, p3

    move v5, p4

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/DESedeEngine;->ˊ([I[BI[BI)V

    .line 121
    :goto_0
    const/16 v0, 0x8

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 7

    .line 41
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to DESede init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 48
    array-length v0, v3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    array-length v0, v3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key size must be 16 or 24 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aEW:Z

    .line 55
    const/16 v0, 0x8

    new-array v4, v0, [B

    .line 56
    array-length v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-virtual {p0, p1, v4}, Lorg/spongycastle/crypto/engines/DESedeEngine;->ˋ(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJS:[I

    .line 59
    const/16 v0, 0x8

    new-array v5, v0, [B

    .line 60
    array-length v0, v5

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v3, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v5}, Lorg/spongycastle/crypto/engines/DESedeEngine;->ˋ(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJT:[I

    .line 63
    array-length v0, v3

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    .line 65
    const/16 v0, 0x8

    new-array v6, v0, [B

    .line 66
    array-length v0, v6

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v3, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-virtual {p0, p1, v6}, Lorg/spongycastle/crypto/engines/DESedeEngine;->ˋ(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJU:[I

    .line 68
    goto :goto_1

    .line 71
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJS:[I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeEngine;->aJU:[I

    .line 73
    :goto_1
    return-void
.end method
