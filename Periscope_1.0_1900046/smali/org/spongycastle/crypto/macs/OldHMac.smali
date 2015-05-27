.class public Lorg/spongycastle/crypto/macs/OldHMac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aNI:I

.field private aNM:[B

.field private aNT:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    .line 24
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNT:[B

    .line 32
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 33
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNI:I

    .line 34
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    .line 110
    iget v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNI:I

    new-array v4, v0, [B

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNT:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNT:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    move-result v5

    .line 118
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/OldHMac;->reset()V

    .line 120
    return v5
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNI:I

    return v0
.end method

.method public reset()V
    .locals 4

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 137
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 96
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 104
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 7

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    .line 53
    array-length v0, v5

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 57
    iget v6, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNI:I

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v6

    .line 57
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    array-length v1, v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    array-length v6, v5

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v6

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 71
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNT:[B

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNT:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    const/4 v6, 0x0

    :goto_3
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    array-length v0, v0

    if-ge v6, v0, :cond_3

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    aget-byte v1, v0, v6

    xor-int/lit8 v1, v1, 0x36

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 79
    :cond_3
    const/4 v6, 0x0

    :goto_4
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNT:[B

    array-length v0, v0

    if-ge v6, v0, :cond_4

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNT:[B

    aget-byte v1, v0, v6

    xor-int/lit8 v1, v1, 0x5c

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 84
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/OldHMac;->aNM:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 85
    return-void
.end method
