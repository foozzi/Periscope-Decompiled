.class Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullPssDigest"
.end annotation


# instance fields
.field private aGG:Ljava/io/ByteArrayOutputStream;

.field private aXH:Lorg/spongycastle/crypto/Digest;

.field private aXI:Z

.field final synthetic aXJ:Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;


# direct methods
.method public constructor <init>(Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 337
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXJ:Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXI:Z

    .line 338
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXH:Lorg/spongycastle/crypto/Digest;

    .line 339
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4

    .line 363
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 365
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXI:Z

    if-eqz v0, :cond_0

    .line 367
    array-length v0, v3

    const/4 v1, 0x0

    invoke-static {v3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v3

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 373
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 376
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->reset()V

    .line 378
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXI:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXI:Z

    .line 380
    array-length v0, v3

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 343
    const-string v0, "NULL"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 386
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aXH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 387
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 354
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;->aGG:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 359
    return-void
.end method
