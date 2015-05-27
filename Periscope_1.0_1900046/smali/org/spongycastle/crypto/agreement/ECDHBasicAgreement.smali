.class public Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BasicAgreement;


# instance fields
.field private aFx:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFieldSize()I
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->aFx:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 33
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->aFx:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 34
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 4

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v2, v0

    .line 45
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;->aFx:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ˌ(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Infinity is not a valid agreement value for ECDH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
