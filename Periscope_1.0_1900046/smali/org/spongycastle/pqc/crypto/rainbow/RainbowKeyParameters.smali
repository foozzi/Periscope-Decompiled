.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# instance fields
.field private bid:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;->bid:I

    .line 16
    return-void
.end method


# virtual methods
.method public qD()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;->bid:I

    return v0
.end method
