.class public Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private bid:I

.field private bif:[[S

.field private big:[[S

.field private bih:[S


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->bid:I

    .line 32
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->bif:[[S

    .line 33
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->big:[[S

    .line 34
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->bih:[S

    .line 35
    return-void
.end method


# virtual methods
.method public qD()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->bid:I

    return v0
.end method

.method public qE()[[S
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->bif:[[S

    return-object v0
.end method

.method public qF()[[S
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->big:[[S

    return-object v0
.end method

.method public qG()[S
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->bih:[S

    return-object v0
.end method
