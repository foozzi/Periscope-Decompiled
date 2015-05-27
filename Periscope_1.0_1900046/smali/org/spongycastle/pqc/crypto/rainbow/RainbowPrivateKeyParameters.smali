.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.source ""


# instance fields
.field private bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

.field private bhU:[[S

.field private bhV:[S

.field private bhX:[[S

.field private bhY:[S

.field private bhZ:[I


# direct methods
.method public constructor <init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V
    .locals 2

    .line 21
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    aget v0, p5, v0

    const/4 v1, 0x0

    aget v1, p5, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZI)V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhU:[[S

    .line 24
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhV:[S

    .line 25
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhX:[[S

    .line 26
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhY:[S

    .line 27
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhZ:[I

    .line 28
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 29
    return-void
.end method


# virtual methods
.method public qA()[[S
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhX:[[S

    return-object v0
.end method

.method public qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    return-object v0
.end method

.method public qC()[I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhZ:[I

    return-object v0
.end method

.method public qx()[[S
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhU:[[S

    return-object v0
.end method

.method public qy()[S
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhV:[S

    return-object v0
.end method

.method public qz()[S
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->bhY:[S

    return-object v0
.end method
