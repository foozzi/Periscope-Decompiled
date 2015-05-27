.class public Lorg/spongycastle/crypto/params/IESParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aQn:[B

.field private aQo:[B

.field private aQp:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/crypto/params/IESParameters;->aQn:[B

    .line 26
    iput-object p2, p0, Lorg/spongycastle/crypto/params/IESParameters;->aQo:[B

    .line 27
    iput p3, p0, Lorg/spongycastle/crypto/params/IESParameters;->aQp:I

    .line 28
    return-void
.end method


# virtual methods
.method public kN()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/params/IESParameters;->aQn:[B

    return-object v0
.end method

.method public kO()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/params/IESParameters;->aQo:[B

    return-object v0
.end method

.method public kP()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/spongycastle/crypto/params/IESParameters;->aQp:I

    return v0
.end method
