.class public abstract Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$OAEP;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 159
    return-void
.end method


# virtual methods
.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 35
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "argument to getParameterSpec must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;->ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method protected abstract ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
.end method

.method protected ᕪ(Ljava/lang/String;)Z
    .locals 1

    .line 28
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
