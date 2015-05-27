.class public abstract Lorg/spongycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# instance fields
.field private final aFW:[B

.field private aFX:I

.field private aac:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    .line 27
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    .line 36
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->ˊ(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 37
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 110
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aac:J

    const/4 v2, 0x3

    shl-long v3, v0, v2

    .line 115
    const/16 v0, -0x80

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 117
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/crypto/digests/GeneralDigest;->ۦ(J)V

    .line 124
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->iV()V

    .line 125
    return-void
.end method

.method public iM()I
    .locals 1

    .line 147
    const/16 v0, 0x40

    return v0
.end method

.method protected abstract iV()V
.end method

.method public reset()V
    .locals 3

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aac:J

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    .line 132
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4

    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    aput-byte p1, v0, v1

    .line 59
    iget v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->ι([BI)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    .line 65
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aac:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aac:J

    .line 66
    return-void
.end method

.method public update([BII)V
    .locals 4

    .line 76
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 78
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 80
    add-int/lit8 p2, p2, 0x1

    .line 81
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 87
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 89
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/digests/GeneralDigest;->ι([BI)V

    .line 91
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 93
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aac:J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aac:J

    goto :goto_1

    .line 99
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 101
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 103
    add-int/lit8 p2, p2, 0x1

    .line 104
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 106
    :cond_2
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/crypto/digests/GeneralDigest;)V
    .locals 5

    .line 48
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFW:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aFX:I

    .line 51
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->aac:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->aac:J

    .line 52
    return-void
.end method

.method protected abstract ۦ(J)V
.end method

.method protected abstract ι([BI)V
.end method
