.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA256withRSA;
.super Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA256withRSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 307
    new-instance v0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    new-instance v1, Ljava/security/spec/PSSParameterSpec;

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v5, "SHA-256"

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V

    .line 308
    return-void
.end method
