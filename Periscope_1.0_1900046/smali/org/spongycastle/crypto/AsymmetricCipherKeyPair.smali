.class public Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aES:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private aET:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->aES:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 24
    iput-object p2, p0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->aET:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 25
    return-void
.end method


# virtual methods
.method public iD()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->aES:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method

.method public iE()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->aET:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method
