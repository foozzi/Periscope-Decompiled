.class public Lorg/spongycastle/crypto/params/ParametersWithSBox;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aFY:[B

.field private aQD:Lorg/spongycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithSBox;->aQD:Lorg/spongycastle/crypto/CipherParameters;

    .line 16
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ParametersWithSBox;->aFY:[B

    .line 17
    return-void
.end method


# virtual methods
.method public lh()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSBox;->aQD:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public li()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSBox;->aFY:[B

    return-object v0
.end method