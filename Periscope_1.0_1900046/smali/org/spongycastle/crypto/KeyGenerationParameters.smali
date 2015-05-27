.class public Lorg/spongycastle/crypto/KeyGenerationParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aFb:I


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/crypto/KeyGenerationParameters;->aFa:Ljava/security/SecureRandom;

    .line 25
    iput p2, p0, Lorg/spongycastle/crypto/KeyGenerationParameters;->aFb:I

    .line 26
    return-void
.end method


# virtual methods
.method public getStrength()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/spongycastle/crypto/KeyGenerationParameters;->aFb:I

    return v0
.end method

.method public iN()Ljava/security/SecureRandom;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/KeyGenerationParameters;->aFa:Ljava/security/SecureRandom;

    return-object v0
.end method
