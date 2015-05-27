.class public Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

.field private bhU:[[S

.field private bhV:[S

.field private bhX:[[S

.field private bhY:[S

.field private bhZ:[I


# direct methods
.method public constructor <init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhU:[[S

    .line 58
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhV:[S

    .line 59
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhX:[[S

    .line 60
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhY:[S

    .line 61
    iput-object p5, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhZ:[I

    .line 62
    iput-object p6, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 63
    return-void
.end method


# virtual methods
.method public qA()[[S
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhX:[[S

    return-object v0
.end method

.method public qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    return-object v0
.end method

.method public qC()[I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhZ:[I

    return-object v0
.end method

.method public qx()[[S
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhU:[[S

    return-object v0
.end method

.method public qy()[S
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhV:[S

    return-object v0
.end method

.method public qz()[S
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;->bhY:[S

    return-object v0
.end method
