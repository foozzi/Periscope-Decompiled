.class public Lorg/spongycastle/jcajce/provider/digest/SM3$Digest;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SM3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 19
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 24
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/SM3$Digest;

    move-object v2, v0

    .line 25
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/SM3$Digest;->aFH:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    iput-object v0, v2, Lorg/spongycastle/jcajce/provider/digest/SM3$Digest;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 27
    return-object v2
.end method
