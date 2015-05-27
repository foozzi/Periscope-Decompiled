.class public final Lorg/spongycastle/crypto/params/KDFFeedbackParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private final aNe:[B

.field private final aNf:Z

.field private final aQr:[B

.field private final aQu:I

.field private final iv:[B


# virtual methods
.method public getIV()[B
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->iv:[B

    return-object v0
.end method

.method public kR()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->aQr:[B

    return-object v0
.end method

.method public kU()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->aQu:I

    return v0
.end method

.method public kV()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->aNf:Z

    return v0
.end method

.method public kW()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->aNe:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method
