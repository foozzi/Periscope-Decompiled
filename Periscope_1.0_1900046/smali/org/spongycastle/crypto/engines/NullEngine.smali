.class public Lorg/spongycastle/crypto/engines/NullEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aJn:Z

.field private final fU:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/NullEngine;-><init>(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/spongycastle/crypto/engines/NullEngine;->fU:I

    .line 34
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/spongycastle/crypto/engines/NullEngine;->fU:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "Null"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 95
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 3

    .line 67
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NullEngine;->aJn:Z

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/NullEngine;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 73
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/engines/NullEngine;->fU:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 78
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/NullEngine;->fU:I

    if-ge v2, v0, :cond_3

    .line 83
    add-int v0, p4, v2

    add-int v1, p2, v2

    aget-byte v1, p1, v1

    aput-byte v1, p3, v0

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/engines/NullEngine;->fU:I

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/NullEngine;->aJn:Z

    .line 43
    return-void
.end method
