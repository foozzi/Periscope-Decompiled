.class public Lorg/spongycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aTn:S

.field aUA:[B

.field aUB:Z

.field aUC:Z

.field aUt:I

.field aUu:I

.field aUv:S

.field aUw:I

.field aUx:I

.field aUy:[B

.field aUz:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUt:I

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUu:I

    .line 9
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUv:S

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUw:I

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUx:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUy:[B

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    .line 17
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aTn:S

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUB:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUC:Z

    return-void
.end method


# virtual methods
.method public mB()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUu:I

    return v0
.end method

.method public mC()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUw:I

    return v0
.end method

.method public mD()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUx:I

    return v0
.end method

.method public mE()[B
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUy:[B

    return-object v0
.end method

.method public mF()[B
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    return-object v0
.end method

.method public mG()[B
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    return-object v0
.end method
