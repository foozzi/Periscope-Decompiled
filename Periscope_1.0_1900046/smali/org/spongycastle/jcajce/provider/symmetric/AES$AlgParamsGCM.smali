.class public Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamsGCM"
.end annotation


# instance fields
.field private aYQ:Lorg/spongycastle/asn1/cms/GCMParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->aYQ:Lorg/spongycastle/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 2

    .line 425
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->aYQ:Lorg/spongycastle/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5

    .line 382
    invoke-static {}, Lorg/spongycastle/jcajce/provider/symmetric/AES;->nQ()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    :try_start_0
    invoke-static {}, Lorg/spongycastle/jcajce/provider/symmetric/AES;->nQ()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTLen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 387
    invoke-static {}, Lorg/spongycastle/jcajce/provider/symmetric/AES;->nQ()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getIV"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 390
    new-instance v0, Lorg/spongycastle/asn1/cms/GCMParameters;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/cms/GCMParameters;-><init>([BI)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->aYQ:Lorg/spongycastle/asn1/cms/GCMParameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    .line 392
    :catch_0
    move-exception v3

    .line 394
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Cannot process GCMParameterSpec."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    :goto_0
    return-void
.end method

.method protected engineInit([B)V
    .locals 1

    .line 402
    invoke-static {p1}, Lorg/spongycastle/asn1/cms/GCMParameters;->ˁ(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->aYQ:Lorg/spongycastle/asn1/cms/GCMParameters;

    .line 403
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 2

    .line 408
    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/asn1/cms/GCMParameters;->ˁ(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->aYQ:Lorg/spongycastle/asn1/cms/GCMParameters;

    .line 414
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 435
    const-string v0, "GCM"

    return-object v0
.end method

.method protected ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 5

    .line 441
    invoke-static {}, Lorg/spongycastle/jcajce/provider/symmetric/AES;->nQ()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    :try_start_0
    invoke-static {}, Lorg/spongycastle/jcajce/provider/symmetric/AES;->nQ()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [B

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 447
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->aYQ:Lorg/spongycastle/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/GCMParameters;->fo()I

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->aYQ:Lorg/spongycastle/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/GCMParameters;->fn()[B

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 449
    :catch_0
    move-exception v4

    .line 451
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "no constructor found!"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :catch_1
    move-exception v4

    .line 455
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construction failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown parameter spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
