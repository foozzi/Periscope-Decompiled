.class public Lorg/spongycastle/crypto/io/MacInputStream;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field protected aKx:Lorg/spongycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/Mac;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    iput-object p2, p0, Lorg/spongycastle/crypto/io/MacInputStream;->aKx:Lorg/spongycastle/crypto/Mac;

    .line 20
    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 27
    if-ltz v2, :cond_0

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/io/MacInputStream;->aKx:Lorg/spongycastle/crypto/Mac;

    int-to-byte v1, v2

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 31
    :cond_0
    return v2
.end method

.method public read([BII)I
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 41
    if-ltz v1, :cond_0

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/io/MacInputStream;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 45
    :cond_0
    return v1
.end method
