.class public abstract Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source ""


# instance fields
.field public aFa:Ljava/security/SecureRandom;

.field protected aFb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 10
    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;->aFb:I

    return-void
.end method


# virtual methods
.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    .line 16
    iput p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;->aFb:I

    .line 17
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;->aFa:Ljava/security/SecureRandom;

    .line 18
    return-void
.end method
