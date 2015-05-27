.class public Lorg/spongycastle/jcajce/provider/symmetric/RC2$AlgParamGen;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamGen"
.end annotation


# instance fields
.field aYY:Ljavax/crypto/spec/RC2ParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->aYY:Ljavax/crypto/spec/RC2ParameterSpec;

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    .line 225
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->aYY:Ljavax/crypto/spec/RC2ParameterSpec;

    if-nez v0, :cond_1

    .line 227
    const/16 v0, 0x8

    new-array v3, v0, [B

    .line 229
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->aFa:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->aFa:Ljava/security/SecureRandom;

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 238
    const-string v0, "RC2"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 239
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 241
    :catch_0
    move-exception v4

    .line 243
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :goto_0
    goto :goto_1

    .line 250
    :cond_1
    const-string v0, "RC2"

    const-string v1, "SC"

    :try_start_1
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 251
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->aYY:Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    goto :goto_1

    .line 253
    :catch_1
    move-exception v3

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :goto_1
    return-object v2
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .line 212
    instance-of v0, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v0, :cond_0

    .line 214
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->aYY:Ljavax/crypto/spec/RC2ParameterSpec;

    .line 215
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for RC2 parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
