.class public Lorg/spongycastle/jcajce/provider/digest/SHA3$DigestSHA3;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestSHA3"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 23
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 24
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 29
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;

    move-object v2, v0

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/SHA3$DigestSHA3;->aFH:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/SHA3Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA3Digest;)V

    iput-object v0, v2, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 32
    return-object v2
.end method