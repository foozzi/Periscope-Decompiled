.class public Lorg/spongycastle/crypto/tls/ByteQueue;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aSR:[B

.field private aSS:I

.field private aST:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSS:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    .line 52
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSR:[B

    .line 53
    return-void
.end method

.method public static Г(I)I
    .locals 1

    .line 17
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 18
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 19
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 20
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 21
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 22
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method public size()I
    .locals 1

    .line 151
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    return v0
.end method

.method public ˎ([BIII)V
    .locals 3

    .line 65
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too small for a read of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    sub-int/2addr v0, p4

    if-ge v0, p3, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not enough data to read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSR:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSS:I

    add-int/2addr v1, p4

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    return-void
.end method

.method public ˏ([BIII)V
    .locals 1

    .line 135
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->ˎ([BIII)V

    .line 136
    add-int v0, p4, p3

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->ל(I)V

    .line 137
    return-void
.end method

.method public ל(I)V
    .locals 3

    .line 113
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    if-le p1, v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, only got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    .line 122
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSS:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSS:I

    .line 123
    return-void
.end method

.method public ᔉ(II)[B
    .locals 2

    .line 141
    new-array v1, p1, [B

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/spongycastle/crypto/tls/ByteQueue;->ˏ([BIII)V

    .line 143
    return-object v1
.end method

.method public ｰ([BII)V
    .locals 7

    .line 86
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSS:I

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSR:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 88
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    add-int/2addr v0, p3

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->Г(I)I

    move-result v5

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSR:[B

    array-length v0, v0

    if-le v5, v0, :cond_0

    .line 91
    new-array v6, v5, [B

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSR:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSS:I

    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput-object v6, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSR:[B

    .line 94
    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSR:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSS:I

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSR:[B

    iget v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSS:I

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSR:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aSS:I

    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->aST:I

    .line 104
    return-void
.end method
