.class public abstract Lorg/spongycastle/jcajce/provider/asymmetric/gost/AlgorithmParameterGeneratorSpi;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source ""


# instance fields
.field protected aFb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 18
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/AlgorithmParameterGeneratorSpi;->aFb:I

    return-void
.end method
