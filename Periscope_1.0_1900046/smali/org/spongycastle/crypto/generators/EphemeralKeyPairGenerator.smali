.class public Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aMO:Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;

.field private aMP:Lorg/spongycastle/crypto/KeyEncoder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->aMO:Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;

    .line 16
    iput-object p2, p0, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->aMP:Lorg/spongycastle/crypto/KeyEncoder;

    .line 17
    return-void
.end method


# virtual methods
.method public jU()Lorg/spongycastle/crypto/EphemeralKeyPair;
    .locals 3

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->aMO:Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;->iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v2

    .line 24
    new-instance v0, Lorg/spongycastle/crypto/EphemeralKeyPair;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;->aMP:Lorg/spongycastle/crypto/KeyEncoder;

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/EphemeralKeyPair;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;Lorg/spongycastle/crypto/KeyEncoder;)V

    return-object v0
.end method
