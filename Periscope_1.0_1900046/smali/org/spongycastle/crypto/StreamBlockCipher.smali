.class public abstract Lorg/spongycastle/crypto/StreamBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;
.implements Lorg/spongycastle/crypto/StreamCipher;


# instance fields
.field private final aEX:Lorg/spongycastle/crypto/BlockCipher;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/spongycastle/crypto/StreamBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 15
    return-void
.end method


# virtual methods
.method public iH()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/spongycastle/crypto/StreamBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public final ʽ(B)B
    .locals 1

    .line 29
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;->ͺ(B)B

    move-result v0

    return v0
.end method

.method public ˋ([BII[BI)I
    .locals 5

    .line 35
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_0

    .line 37
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 42
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too small"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    move v2, p2

    .line 46
    add-int v3, p2, p3

    .line 47
    move v4, p5

    .line 49
    :goto_0
    if-ge v2, v3, :cond_2

    .line 51
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    move v1, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/StreamBlockCipher;->ͺ(B)B

    move-result v1

    aput-byte v1, p4, v0

    goto :goto_0

    .line 54
    :cond_2
    return p3
.end method

.method public abstract ͺ(B)B
.end method
