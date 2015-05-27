.class public Lorg/spongycastle/jcajce/provider/symmetric/IDEA$AlgParamGen;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    .line 94
    const/16 v0, 0x8

    new-array v2, v0, [B

    .line 96
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/IDEA$AlgParamGen;->aFa:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/IDEA$AlgParamGen;->aFa:Ljava/security/SecureRandom;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/IDEA$AlgParamGen;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 107
    const-string v0, "IDEA"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 108
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 110
    :catch_0
    move-exception v4

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :goto_0
    return-object v3
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .line 89
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for IDEA parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
