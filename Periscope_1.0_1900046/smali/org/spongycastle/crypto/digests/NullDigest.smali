.class public Lorg/spongycastle/crypto/digests/NullDigest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Digest;


# instance fields
.field private aGG:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/NullDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NullDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 37
    array-length v0, v2

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/NullDigest;->reset()V

    .line 41
    array-length v0, v2

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 15
    const-string v0, "NULL"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NullDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NullDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 47
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NullDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 26
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NullDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 31
    return-void
.end method
