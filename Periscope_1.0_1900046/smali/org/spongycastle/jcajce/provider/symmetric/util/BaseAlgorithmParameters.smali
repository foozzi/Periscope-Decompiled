.class public abstract Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 19
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "argument to getParameterSpec must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public abstract ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
.end method

.method public ᕪ(Ljava/lang/String;)Z
    .locals 1

    .line 12
    if-eqz p1, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
