.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source ""


# instance fields
.field private bfU:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V
    .locals 1

    .line 17
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 18
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->bfU:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    .line 19
    return-void
.end method


# virtual methods
.method public rg()Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;->bfU:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    return-object v0
.end method