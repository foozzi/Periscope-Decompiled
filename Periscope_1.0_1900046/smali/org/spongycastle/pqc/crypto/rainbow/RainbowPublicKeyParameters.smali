.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
.super Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.source ""


# instance fields
.field private bif:[[S

.field private big:[[S

.field private bih:[S


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZI)V

    .line 24
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->bif:[[S

    .line 25
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->big:[[S

    .line 26
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->bih:[S

    .line 28
    return-void
.end method


# virtual methods
.method public qE()[[S
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->bif:[[S

    return-object v0
.end method

.method public qF()[[S
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->big:[[S

    return-object v0
.end method

.method public qG()[S
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->bih:[S

    return-object v0
.end method
