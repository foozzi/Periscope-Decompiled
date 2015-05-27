.class public Lorg/spongycastle/jcajce/provider/digest/Skein$DigestSkein1024;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestSkein1024"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 151
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinDigest;

    const/16 v1, 0x400

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/digests/SkeinDigest;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 152
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 157
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;

    move-object v2, v0

    .line 158
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinDigest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/Skein$DigestSkein1024;->aFH:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/SkeinDigest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinDigest;-><init>(Lorg/spongycastle/crypto/digests/SkeinDigest;)V

    iput-object v0, v2, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 160
    return-object v2
.end method
