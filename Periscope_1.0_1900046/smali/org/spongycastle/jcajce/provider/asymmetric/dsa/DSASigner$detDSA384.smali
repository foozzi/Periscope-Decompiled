.class public Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA384;
.super Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "detDSA384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 283
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    new-instance v1, Lorg/spongycastle/crypto/signers/DSASigner;

    new-instance v2, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;

    new-instance v3, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v3}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/signers/DSASigner;-><init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;)V

    .line 284
    return-void
.end method