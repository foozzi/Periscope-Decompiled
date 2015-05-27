.class public Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final aFa:Ljava/security/SecureRandom;

.field private final aMG:I

.field private final aML:I

.field private final aQb:I

.field private final avO:I


# direct methods
.method public constructor <init>(IIILjava/security/SecureRandom;)V
    .locals 6

    .line 30
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(IIILjava/security/SecureRandom;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->avO:I

    .line 50
    iput p2, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->aQb:I

    .line 51
    iput p3, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->aMG:I

    .line 52
    iput p5, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->aML:I

    .line 53
    iput-object p4, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->aFa:Ljava/security/SecureRandom;

    .line 54
    return-void
.end method


# virtual methods
.method public getL()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->avO:I

    return v0
.end method

.method public iN()Ljava/security/SecureRandom;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->aFa:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public kC()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->aQb:I

    return v0
.end method

.method public kD()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->aMG:I

    return v0
.end method

.method public kE()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->aML:I

    return v0
.end method
