.class public Lorg/spongycastle/jcajce/provider/digest/SHA1$Digest;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 38
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 43
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/SHA1$Digest;

    move-object v2, v0

    .line 44
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/SHA1$Digest;->aFH:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    iput-object v0, v2, Lorg/spongycastle/jcajce/provider/digest/SHA1$Digest;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 46
    return-object v2
.end method
